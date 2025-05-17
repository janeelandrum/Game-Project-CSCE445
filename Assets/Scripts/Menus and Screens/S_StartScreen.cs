using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StartScreen : MonoBehaviour
{
    public static StartScreen Instance { get; private set; }

    public Button newGameButton;
    public Button continueButton;
    public Button quitButton;

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
        newGameButton.onClick.AddListener(onNewGameButtonClicked);
        continueButton.onClick.AddListener(onContinueButtonClicked);
        quitButton.onClick.AddListener(onQuitButtonClicked);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    // Button action listeners
    void onNewGameButtonClicked()
    {
        GameStateManager.Instance.currGameState = GameStateManager.GameState.EnterName;
        MenuManager.Instance.ToggleNameEnterScreen();
    }

    void onContinueButtonClicked()
    {
        // Come back to this when u add save and load feature
    }

    void onQuitButtonClicked()
    {
        // Come back to this to add logic to exit the program
    }
}
