using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using UnityEngine.Rendering;

public class BackgroundManager : MonoBehaviour
{
    public static BackgroundManager Instance { get; private set; }

    public Image currBackgroundImage;
    public List<Sprite> backgroundSprites;
    private Dictionary<string, Sprite> backgroundDictionary = new Dictionary<string, Sprite>();

    public float fadeDuration = 0.5f;
    private string currBackgroundName;

    void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(gameObject);
            return;
        }

        DontDestroyOnLoad(gameObject);

        // Populate dictionary of backgrounds for quick lookup
        foreach (Sprite sprite in backgroundSprites)
        {
            backgroundDictionary[sprite.name] = sprite;
        }
    }

    void Start()
    {
        // Set the starting background and its name
        currBackgroundName = "start_menu";
        currBackgroundImage.sprite = backgroundDictionary[currBackgroundName];
    }

    void Update()
    {
        if (currBackgroundName == "start_menu" || currBackgroundName == "ocean_view" || currBackgroundName == "beach_day")
        {
            AudioManager.Instance.PlayAmbience("beach_waves_ambience");
        }
        else
        {
            AudioManager.Instance.StopAmbience("beach_waves_ambience");
        }
    }

    // Change to a new background given its name (calls FadeToNewBackground())
    public void ChangeBackground(string backgroundName)
    {
        if (backgroundName != currBackgroundName)
        {
            if (backgroundDictionary.ContainsKey(backgroundName))
            {
                currBackgroundName = backgroundName;
                StartCoroutine(FadeToNewBackground(backgroundName));
            }
            else
            {
                Debug.LogWarning("Background not found: " + backgroundName);
            }
        }
    }

    // Add a fade effect to transtion between backgrounds
    private IEnumerator FadeToNewBackground(string backgroundName)
    {
        float timer = 0f;

        // Create a duplicate background image for cross-fade
        Image oldBackground = currBackgroundImage;
        Image newBackground = Instantiate(currBackgroundImage, currBackgroundImage.transform.parent);
        newBackground.sprite = backgroundDictionary[backgroundName];
        newBackground.color = new Color(1f, 1f, 1f, 0f); // Start fully transparent

        // Ensure new background stays *behind* everything else in the hierarchy
        newBackground.transform.SetSiblingIndex(oldBackground.transform.GetSiblingIndex());

        currBackgroundImage = newBackground; // Assign the new background as the current one

        while (timer < fadeDuration)
        {
            timer += Time.deltaTime;
            float alpha = timer / fadeDuration;

            oldBackground.color = new Color(1f, 1f, 1f, 1f - alpha); // Fade out old
            newBackground.color = new Color(1f, 1f, 1f, alpha); // Fade in new

            yield return null; // Wait for next frame
        }

        // Destroy old background once the fade is complete
        Destroy(oldBackground.gameObject);
    }
}
