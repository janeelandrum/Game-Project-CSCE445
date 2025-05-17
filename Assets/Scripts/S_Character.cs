using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Character : MonoBehaviour
{
    public string characterName;

    private Image characterImage;
    private RectTransform rectTransform;

    private void Awake()
    {
        characterImage = GetComponent<Image>();
        rectTransform = GetComponent<RectTransform>();
    }
    void Start()
    {

    }

    void Update()
    {
        
    }

    // Fade in the character on screen
    public void FadeIn()
    {
        gameObject.SetActive(true);
        characterImage.canvasRenderer.SetAlpha(0f);
        characterImage.CrossFadeAlpha(1f, 0.5f, false);
    }

    // Fade out the character on screen
    public void FadeOut()
    {
        characterImage.CrossFadeAlpha(0f, 0.5f, false);
        Invoke(nameof(DisableCharacter), 0.5f);
    }

    // Move the character to a specified position
    public void MoveToPosition(Vector3 targetPosition)
    {
        StartCoroutine(SmoothMove(targetPosition));
    }

    // Toggle the character to being not visible
    private void DisableCharacter()
    {
        gameObject.SetActive(false);
    }

    // Smoothly moves character to its new target position
    private IEnumerator SmoothMove(Vector3 target)
    {
        float duration = 0.5f; // Half a second transition
        Vector3 start = rectTransform.anchoredPosition;
        float elapsed = 0;

        while (elapsed < duration)
        {
            rectTransform.anchoredPosition = Vector3.Lerp(start, target, elapsed / duration);
            elapsed += Time.deltaTime;
            yield return null; // Wait until next frame
        }

        rectTransform.anchoredPosition = target;
    }

    // For scaling the speaker large/small smoothly
    public void AnimateScale(Vector3 targetScale, float duration = 0.25f)
    {
        StopAllCoroutines(); // Stop any existing scaling
        StartCoroutine(ScaleOverTime(targetScale, duration));
    }

    private IEnumerator ScaleOverTime(Vector3 targetScale, float duration)
    {
        Vector3 initialScale = transform.localScale;
        float time = 0f;

        while (time < duration)
        {
            transform.localScale = Vector3.Lerp(initialScale, targetScale, time / duration);
            time += Time.deltaTime;
            yield return null;
        }

        transform.localScale = targetScale;
    }
}
