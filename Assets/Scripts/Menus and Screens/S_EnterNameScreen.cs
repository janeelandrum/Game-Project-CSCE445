using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EnterNameScreen : MonoBehaviour
{
    public static EnterNameScreen Instance { get; private set; }

    public InputField nameInputField;
    public Button confirmButton;

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
    }

    // Start is called before the first frame update
    void Start()
    {
        confirmButton.onClick.AddListener(onConfirmButtonClicked);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    // Button action listener
    void onConfirmButtonClicked()
    {
        string playerInput = nameInputField.text.Trim();

        if (!string.IsNullOrEmpty(playerInput))
        {
            InkManager.Instance.playerName = playerInput; // Save name in InkManager
            InkManager.Instance.story.variablesState["player_name"] = InkManager.Instance.playerName;

        }
        else
        {
            InkManager.Instance.playerName = "Player"; // Default name if left blank
        }

        BackgroundManager.Instance.ChangeBackground("ocean_view");
        GameStateManager.Instance.currGameState = GameStateManager.GameState.Playing;
        MenuManager.Instance.ToggleNameEnterScreen();

        InkManager.Instance.ContinueStory();
    }
}
