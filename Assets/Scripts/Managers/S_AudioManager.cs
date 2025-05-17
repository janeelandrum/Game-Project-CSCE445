using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public static AudioManager Instance { get; private set; }

    [Header("Audio Sources")]
    public AudioSource musicSource;
    public AudioSource sfxSource; // for one-shot sounds
    public List<AudioSource> ambienceSources; // multiple ambience tracks

    [Header("Audio Clips")]
    public List<AudioClip> musicTracks;
    public List<AudioClip> ambienceClips;
    public List<AudioClip> sfxClips;

    private Dictionary<string, AudioClip> musicDict;
    private Dictionary<string, AudioClip> ambienceDict;
    private Dictionary<string, AudioClip> sfxDict;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            InitializeDictionaries();
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void InitializeDictionaries()
    {
        musicDict = new Dictionary<string, AudioClip>();
        foreach (var clip in musicTracks)
            musicDict[clip.name] = clip;

        ambienceDict = new Dictionary<string, AudioClip>();
        foreach (var clip in ambienceClips)
            ambienceDict[clip.name] = clip;

        sfxDict = new Dictionary<string, AudioClip>();
        foreach (var clip in sfxClips)
            sfxDict[clip.name] = clip;
    }

    public void PlayMusic(string trackName)
    {
        if (trackName == "")
        {
            musicSource.clip = null;
        }
        if (musicDict.ContainsKey(trackName) && musicSource.clip != musicDict[trackName])
        {
            musicSource.clip = musicDict[trackName];
            musicSource.loop = true;
            musicSource.Play();
        }
    }

    public void PlayAmbience(string ambienceName)
    {
        if (ambienceDict.ContainsKey(ambienceName))
        {
            // Make sure that track isn't already playing
            foreach (var source in ambienceSources)
            {
                if (source.clip == ambienceDict[ambienceName])
                {
                    return;
                }
            }
            // Find an open source and play the track from it
            foreach (var source in ambienceSources)
            {
                if (!source.isPlaying)
                {
                    source.clip = ambienceDict[ambienceName];
                    source.loop = true;
                    source.Play();
                    return;
                }
            }
        }
    }

    public void StopAmbience(string ambienceName)
    {
        foreach (var source in ambienceSources)
        {
            if (source.isPlaying && source.clip.name == ambienceName)
            {
                source.clip = null;
                source.Stop();
                return;
            }
        }
    }

    public void PlaySFX(string sfxName)
    {
        if (sfxDict.ContainsKey(sfxName))
        {
            sfxSource.PlayOneShot(sfxDict[sfxName]);
        }
    }
}
