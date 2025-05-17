using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour
{
    public static PauseMenu Instance { get; private set; }

    public Button continueButton;
    public Button volumeButton;
    public Button changeNameButton;
    public Button saveAndQuitButton;

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
        continueButton.onClick.AddListener(onContinueButtonClicked);
        volumeButton.onClick.AddListener(onVolumeButtonClicked);
        changeNameButton.onClick.AddListener(onChangeNameButtonClicked);
        saveAndQuitButton.onClick.AddListener(onSaveAndQuitButtonClicked);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    // Button action listeners
    void onContinueButtonClicked()
    {
        MenuManager.Instance.TogglePauseMenu();
    }

    void onVolumeButtonClicked()
    {
        // Come back to this and implement volume controls
    }

    void onChangeNameButtonClicked()
    {
        // Come back to this and implement ability to change your name
    }

    void onSaveAndQuitButtonClicked()
    {
        // Come back to this and add save and load feature
    }
}
