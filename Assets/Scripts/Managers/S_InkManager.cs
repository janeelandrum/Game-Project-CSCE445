using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using System;
using static GameStateManager;
using TMPro;

public class InkManager : MonoBehaviour
{
    public static InkManager Instance { get; private set; }

    public TextAsset inkJSONAsset;
    public Story story;

    // global story variables
    public string playerName;
    public bool cluesUnlocked = false;
    public bool writingClues = false;
    public string cluesText;

    private void Awake()
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
    }

    void Start()
    {
        // Load the compiled Ink story
        story = new Story(inkJSONAsset.text);

        playerName = story.variablesState["player_name"] as string;
        cluesUnlocked = false;
        cluesText = "Clues \n";
        writingClues = false;
    }

    public void ContinueStory()
    {
        if (story.canContinue)
        {
            string text = story.Continue();

            // Get all tags
            List<string> tags = story.currentTags;
            string speaker = "None";

            // Extract relevant information from tags
            foreach (string tag in tags)
            {
                if (tag.StartsWith("speaker:"))
                {
                    speaker = tag.Substring(8).Trim();
                    if (speaker == "Player")
                    {
                        speaker = story.variablesState["player_name"] as string;
                    }
                }
                else if (tag.StartsWith("enter:"))
                {
                    string nameToAdd = tag.Substring(6).Trim();
                    CharacterManager.Instance.IsCharacterPresent(nameToAdd);
                }
                else if (tag.StartsWith("exit:"))
                {
                    string nameToRemove = tag.Substring(5).Trim();
                    CharacterManager.Instance.RemoveCharacter(nameToRemove);
                }
                else if (tag.StartsWith("thought start"))
                {
                    DialogueManager.Instance.isThought = true;
                }
                else if (tag.StartsWith("thought end"))
                {
                    DialogueManager.Instance.isThought = false;
                }
                else if (tag.StartsWith("clues unlocked"))
                {
                    cluesUnlocked = true;
                }
                else if (tag.StartsWith("clues start"))
                {
                    writingClues = true;
                }
                else if (tag.StartsWith("clues end"))
                {
                    writingClues = false;
                }
                else if (tag.StartsWith("new person"))
                {
                    cluesText += "\n";
                }
            }

            // Sets what to put on the clues sheet of paper
            if (writingClues)
            {
                cluesText += text;
            }


            // Check if the background needs to change
            string currBackground = story.variablesState["current_background"] as string;
            BackgroundManager.Instance.ChangeBackground(currBackground);

            // Check if the current track needs to change
            string currTrack = story.variablesState["current_track"] as string;
            AudioManager.Instance.PlayMusic(currTrack);

            // Send the text and speaker name to DialogueManager
            DialogueManager.Instance.DisplayDialogue(text, speaker);

            DialogueManager.Instance.StartCoroutine(DialogueManager.Instance.WaitToShowChoices());
        }
    }
}
