using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterManager : MonoBehaviour
{
    public static CharacterManager Instance { get; private set; }

    public List<Character> activeCharacters = new List<Character>();
    public Dictionary<string, GameObject> characterPrefabs = new Dictionary<string, GameObject>();
    public Transform characterParent; // Assign an empty GameObject as the parent for character instances

    public float screenWidth = 1920f; // Assuming a 1920x1080 resolution

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

        // Load character prefabs from Resources folder (or assign them manually in the inspector)
        GameObject[] prefabs = Resources.LoadAll<GameObject>("Prefabs/Characters");
        foreach (var prefab in prefabs)
        {
            Character characterScript = prefab.GetComponent<Character>();
            if (characterScript != null)
            {
                characterPrefabs[characterScript.characterName] = prefab;
            }
        }
    }

    void Start()
    {
        
    }

    void Update()
    {
        
    }

    // Adds a new character to the scene based on the given name
    public void AddCharacter(string name)
    {
        if (!characterPrefabs.ContainsKey(name))
        {
            Debug.LogWarning($"Character prefab not found for name: {name}");
            return;
        }

        GameObject characterObject = Instantiate(characterPrefabs[name], characterParent);
        characterObject.name = name;
        if (characterObject == null)
        {
            Debug.LogError($"Instantiation failed for character '{name}'!");
            return;
        }
        Character newCharacter = characterObject.GetComponent<Character>();

        if (newCharacter != null)
        {
            activeCharacters.Add(newCharacter);
            newCharacter.FadeIn();
            RepositionCharacters();
        }
        else
        {
            Debug.LogError($"Prefab for {name} does not have a Character component!");
        }
    }

    // Removes a character from the screen
    public void RemoveCharacter(string name)
    {
        Character characterToRemove = activeCharacters.Find(c => c.characterName == name);

        if (characterToRemove != null)
        {
            activeCharacters.Remove(characterToRemove);
            characterToRemove.FadeOut();
            RepositionCharacters();
        }
    }

    // Dynamically spaces characters based on how many are on screen
    private void RepositionCharacters()
    {
        float padding = 300f; // Space between characters
        int count = activeCharacters.Count;
        if (count == 0)
            return;
        if (count == 4)
            padding = 250f;

        float totalWidth = (count - 1) * padding; // Total occupied width
        float startX = -totalWidth / 2f; // Start position to center characters

        for (int i = 0; i < count; i++)
        {
            Vector3 newPosition = new Vector3(startX + i * padding, 0, 0);
            if (activeCharacters[i].name == "Sam") // Cause Sam's sprite is shorter than the others
            {
                newPosition.y -= 10;
            }
            activeCharacters[i].MoveToPosition(newPosition);
        }
    }

    // Checks if the character is already present, if not, adds them
    public void IsCharacterPresent(string name)
    {
        foreach (Character character in activeCharacters)
        {
            if (character.characterName == name)
                return; // Character already on screen
        }

        AddCharacter(name);
    }

    public void EnlargeSpeaker(string speaker)
    {
        foreach (Character character in activeCharacters)
        {
            if (character.characterName == speaker)
            {
                // Enlarge the current speaker
                character.AnimateScale(new Vector3(1.1f, 1.1f, 1.1f));
            }
            else
            {
                // Return previous speaker back to normal
                character.AnimateScale(new Vector3(1f, 1f, 1f));
            }
        }
    }
}
