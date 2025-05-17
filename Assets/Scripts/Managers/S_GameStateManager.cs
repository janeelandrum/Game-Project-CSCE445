using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class GameStateManager : MonoBehaviour
{
    public static GameStateManager Instance { get; private set; }

    public GameObject notebookPaperPrefab; // Prefab of the paper
    private GameObject notebookPaperInstance; // Current instance
    private Image notebookPaperImage; // Image on the current instance

    Canvas canvas;

    public enum GameState
    {
        Start,
        EnterName,
        Playing,
        Paused,
        CluesOut,
        Ending,
        SaveAndLoad
    }

    public GameState currGameState;

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
    }

    void Start()
    {
        currGameState = GameState.Start;
        MenuManager.Instance.ToggleStartScreen();

        canvas = FindObjectOfType<Canvas>();
    }

    void Update()
    {
        if (InkManager.Instance.cluesUnlocked)
        {
            if (Input.GetKeyDown(KeyCode.C))
            {
                if (currGameState == GameState.Playing)
                {
                    SetGameState(GameState.CluesOut);
                    ShowNotebook();
                }
                else if (currGameState == GameState.CluesOut)
                {
                    SetGameState(GameState.Playing);
                    HideNotebook();
                }
            }

            if (Input.GetMouseButtonDown(0) && currGameState == GameState.CluesOut)
            {
                SetGameState(GameState.Playing);
                HideNotebook();
            }
        }
    }

    public void SetGameState(GameState state)
    {
        currGameState = state;
    }

    void ShowNotebook()
    {
        notebookPaperInstance = Instantiate(notebookPaperPrefab, canvas.transform);
        notebookPaperInstance.GetComponentInChildren<TextMeshProUGUI>().text = InkManager.Instance.cluesText;
        Time.timeScale = 0f;
    }

    void HideNotebook()
    {
        if (notebookPaperInstance != null)
        {
            Destroy(notebookPaperInstance);
        }
        Time.timeScale = 1f;
    }

    public TextMeshProUGUI GetCluesText()
    {
        if (notebookPaperInstance != null)
        {
            return notebookPaperInstance.GetComponentInChildren<TextMeshProUGUI>();
        }
        return null;
    }
}

