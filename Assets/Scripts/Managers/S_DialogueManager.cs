using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;

public class DialogueManager : MonoBehaviour
{
    public static DialogueManager Instance { get; private set; }

    public TextMeshProUGUI speakerName;
    public TextMeshProUGUI dialogueText;

    public GameObject dialogueBoxPrefab; // The general prefab
    private GameObject dialogueBoxInstance; // The specific instance being spawned
    public GameObject choiceButtonPrefab; // The general prefab
    public Transform choicesContainer; // A container to hold the choice buttons
    public GameObject speakerBoxPrefab; // The general prefab
    private GameObject speakerBoxInstance; // The specific instance being spawned

    // For animating the text to pop up letter-by-letter
    public bool isTyping = false;
    private bool skipText = false;

    public bool isThought = false; // Make thoughts italic

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

        // Instantiate the prefabs and get references to its components
        Canvas canvas = FindObjectOfType<Canvas>();
        dialogueBoxInstance = Instantiate(dialogueBoxPrefab, canvas.transform);
        dialogueBoxInstance.SetActive(false);
        speakerBoxInstance = Instantiate(speakerBoxPrefab, canvas.transform);
        speakerBoxInstance.SetActive(false);

        // Get UI elements from the prefab instances
        speakerName = speakerBoxInstance.transform.Find("Speaker Name Text").GetComponent<TextMeshProUGUI>();
        dialogueText = dialogueBoxInstance.transform.Find("Dialogue Text").GetComponent<TextMeshProUGUI>();
    }

    void Update()
    {
        if (GameStateManager.Instance.currGameState == GameStateManager.GameState.Playing)
        {
            // Check for a mouse click or spacebar to advance to the next line in the dialogue
            if (Input.GetMouseButtonDown(0) || Input.GetKeyDown(KeyCode.Space))
            {
                if (isTyping)
                {
                    skipText = true; // Skip the current text animation
                }
                else
                {
                    InkManager.Instance.ContinueStory(); // Move to the next part of the story
                }
            }
        }
    }

    // Shows the dialogue box and correct text on screen
    public void DisplayDialogue(string text, string speaker)
    {
        speakerName.text = speaker;
        dialogueText.text = "";

        dialogueBoxInstance.SetActive(true);
        if (speaker == "None")
        {
            speakerBoxInstance.SetActive(false);
        }
        else
        {
            speakerBoxInstance.SetActive(true);
            // Resizing all characters based on the speaker
            CharacterManager.Instance.EnlargeSpeaker(speaker);
        }

        // Start typing the text letter by letter
        StartCoroutine(TypeText(text));
    }

    // Coroutine to display text letter by letter
    private IEnumerator TypeText(string text)
    {
        isTyping = true;

        if (isThought)
        {
            dialogueText.fontStyle = FontStyles.Italic;
        }
        else
        {
            dialogueText.fontStyle = FontStyles.Normal;
        }

        for (int i = 0; i < text.Length; i++)
        {
            // If the player skipped the text, show the full text immediately
            if (skipText)
            {
                dialogueText.text = text;
                break;
            }

            dialogueText.text += text[i]; // Add one letter at a time
            yield return new WaitForSeconds(0.03f); // Adjust typing speed here

        }

        // Text is fully displayed
        isTyping = false; 
        skipText = false;
    }

    // Displays the choices as UI buttons
    public void DisplayChoices(List<Choice> choices)
    {
        // Instantiate a new button for each choice
        foreach (Choice choice in choices)
        {
            GameObject choiceButton = Instantiate(choiceButtonPrefab, choicesContainer);
            TextMeshProUGUI buttonText = choiceButton.GetComponentInChildren<TextMeshProUGUI>();
            buttonText.text = choice.text;

            if (choice.text.Contains("<Locked>"))
            {
                choiceButton.GetComponent<Button>().interactable = false;
            }

            // Add click listener to handle the player's selection
            choiceButton.GetComponent<Button>().onClick.AddListener(() => OnChoiceSelected(choice));
        }
        RepositionButtonsEvenly(choices.Count);
    }

    // Handle when a choice button is clicked
    private void OnChoiceSelected(Choice choice)
    {
        // Continue the story with the selected choice
        InkManager.Instance.story.ChooseChoiceIndex(choice.index);

        // Clear any existing choice buttons
        foreach (Transform child in choicesContainer)
        {
            Destroy(child.gameObject);
        }

        // Continue the story after a choice is made
        InkManager.Instance.ContinueStory();
    }

    // Spaces all buttons evenly within their container
    private void RepositionButtonsEvenly(int numButtons)
    {
        float vertPadding = 75.0f;  // Vertical padding between buttons
        if (numButtons == 0)
            return;

        // Calculate the total height of all buttons (including padding between them)
        float totalHeight = (numButtons - 1) * vertPadding;

        // Calculate the starting Y position to center the buttons in the container
        float startY = -totalHeight / 2f;

        // Iterate through each button and reposition it
        for (int i = 0; i < numButtons; i++)
        {
            // Get the RectTransform of the current button
            RectTransform buttonRect = choicesContainer.GetChild(i).GetComponent<RectTransform>();

            // Set the button's position within the container
            buttonRect.localPosition = new Vector3(0, startY + (numButtons - 1 - i) * vertPadding, 0);
        }
    }

    public IEnumerator WaitToShowChoices()
    {
        // Wait until typing is done
        while (isTyping)
        {
            yield return null;
        }

        // Then show choices if any exist
        if (InkManager.Instance.story.currentChoices.Count > 0)
        {
            DisplayChoices(InkManager.Instance.story.currentChoices);
        }
    }

}
