VAR whatsYourScene = false
VAR howDifferent = false
VAR wereYouClose = false

== buryBody ==
#enter: Sam

~current_background = "forest_day"
~current_track = "emotional_music"

#speaker: Sam
“Let's just get this over with.”

You both start walking towards the beach in relative quiet.

You glance over at Sam, who's face is unreadable.

#speaker: Player
“I know we don’t know each other that well but…”

#speaker: Player
“I’m here if you want to talk.”

#speaker: Sam
“Thanks.”

Sam is quiet for a moment.

#speaker: Sam
“You know, I never really fit in with Ali’s group.”

#speaker: Sam
“My parents just— They thought it’d be good for me. To hang out with ‘the right people’ ”

You both arrive at a spot in a clearing a little ways away from the beach.
Sam digs her shovel aggressively into the ground.

#speaker: Sam
"Like this whole thing? The parties, the drama, the underhandedness? Not really my scene."

#speaker: Sam
“...No offense or anything. You seem different from the others.”

-> choiceHub

= choiceHub

* {whatsYourScene == false} “So what is your scene then?”
	~whatsYourScene = true

    #speaker: Sam
    "I dunno. I guess I just like people who aren’t exhausting to be around." 

    Sam sighs.

    #speaker: Sam
    "You’re alright, though."

    #speaker: Player
    “Wow, thanks.”

    Sam laughs lightly.

    #speaker: Sam
    “Don’t get used to the compliments.”

    A few moments of silence go by as you both continue digging.

-> choiceHub

* {howDifferent == false} “How am I different?”
	~howDifferent = true

    #speaker: Sam
    “I don’t know, I mean…”

    #speaker: Sam
    “So far you haven’t randomly lashed out at any of your close friends unprovoked.”

    #speaker: Sam
    “Pretty low bar but I guess that’s what we’re dealing with here.”

    #speaker: Player
    “I’m great at surpassing “pretty low bars””

    Sam laughs

    #speaker: Sam
    “Wow, me too!”

    #speaker: Player
    “Look at that, we have so much in common.”

    Sam smiles.

    -> choiceHub

* {wereYouClose == false} “So, you and Ali weren’t close then?”
	~wereYouClose = true

	#speaker: Sam
	“Not particularly.”

    #speaker: Sam
    “My family... isn’t great.”

    #speaker: Sam
    “I mean, they like to pretend we’re normal, but we’re not.”

    #speaker: Sam
    “Not to trauma dump on you, but yeah Ali was always their favorite.

    #speaker: Sam
    “I think they wanted me to be more..well someone more like Ali.”

    #speaker: Player
    “That sounds rough...”

    #speaker: Sam
    "Never really had many friends either. Not real ones, at least.”

    #speaker: Sam
    “But I don’t need them.”

    #speaker: Sam
    “My family makes me hang out with Ali’s friends.”

    You look around and then look back at Sam, sarcastically.

    #speaker: Player
    “Wow, you don’t say.”

    Sam laughs.

    #speaker: Sam
    “Right? Hard to believe, I know.”

    #speaker: Sam
    “But it's not like Ali ever wanted me around. I just tried to stay unseen and out of the way around her friends."

    #speaker: Player
    “Well I see you.”

    #speaker: Player
    “And…I guessss you’re not soooo bad.”

    Sam’s laughing again.

    #speaker: Sam
    “Wow, thanks for the feedback. Glad to know I’m at least mildly tolerable.”

    You laugh. 

    #speaker: Player
    “Mildly.”

    The hole is deep enough now. You and Sam pause for a second to catch your breath.

    #speaker: Sam
    "Ali had everything. Perfect looks, perfect life. But I don’t think she was as happy as people thought she was."

    #speaker: Player
    “Why do you say that?”

    #speaker: Sam
    "Just a feeling. Sometimes the people who seem like they have it all together... don’t."

    -> choiceHub

* {whatsYourScene || howDifferent || wereYouClose} “Alright, let's finish this.”
	-> headBack


= headBack

You and Sam lift Ali’s body and lower her into the grave. You both look down at her.

You and Sam start shoveling the sand back on top of Ali's body, filling the hole. 
Once you’re done, you both stand back and look at the disturbed sand under which Ali is laid.

#speaker: Sam
“Guess that's it...”

#speaker: Player
“Yeah.”

#speaker: Sam
“Ya know, you’re not so bad to talk to.”

#speaker: Player
{whatsYourScene == true: “Another compliment? This has to be a world record.” | “A compliment? I’m shocked.”}

Sam rolls her eyes.

#speaker: Sam
“Come on, let’s head back.”

->scene13

