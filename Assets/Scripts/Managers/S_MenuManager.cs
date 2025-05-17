using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuManager : MonoBehaviour
{
    public GameObject startScreen;
    public GameObject enterNameScreen;

    public GameObject pauseMenuPrefab; // The general prefab
    private GameObject pauseMenuInstance; // The specific instance being spawned

    Canvas canvas;

    public static MenuManager Instance { get; private set; }

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

        canvas = FindObjectOfType<Canvas>();
    }

    void Start()
    {
        
    }

    void Update()
    {
        if (GameStateManager.Instance.currGameState != GameStateManager.GameState.Playing)
        {
            ToggleStartScreen();
            ToggleNameEnterScreen();
        }
        if (GameStateManager.Instance.currGameState == GameStateManager.GameState.Playing ||
            GameStateManager.Instance.currGameState == GameStateManager.GameState.Paused)
        {
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                TogglePauseMenu();
            }
        }
    }

    public void ToggleStartScreen()
    {
        if (GameStateManager.Instance.currGameState == GameStateManager.GameState.Start)
        {
            startScreen.SetActive(true);
        }
        else
        {
            startScreen.SetActive(false);
        }
    }

    public void ToggleNameEnterScreen()
    {
        if (GameStateManager.Instance.currGameState == GameStateManager.GameState.EnterName)
        {
            enterNameScreen.SetActive(true);
        }
        else
        {
            enterNameScreen.SetActive(false);
        }
    }

    public void TogglePauseMenu()
    {
        if (GameStateManager.Instance.currGameState == GameStateManager.GameState.Playing)
        {
            GameStateManager.Instance.SetGameState(GameStateManager.GameState.Paused);
            pauseMenuInstance = Instantiate(pauseMenuPrefab, canvas.transform);
            Time.timeScale = 0f;
        }
        else if (GameStateManager.Instance.currGameState == GameStateManager.GameState.Paused)
        {
            GameStateManager.Instance.SetGameState(GameStateManager.GameState.Playing);
            if (pauseMenuInstance != null)
            {
                Destroy(pauseMenuInstance);
            }
            Time.timeScale = 1f;
        }
    }
}
