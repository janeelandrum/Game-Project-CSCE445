VAR didntKnow = false
VAR caredAboutHer = false
VAR staySilent = false

== honorAli ==

#enter: Sadie

~current_background = "forest_day"
~current_track = "emotional_music"

You and Sadie leave the house and head to the beach.
You want to talk but she seems too upset right now.
You decide to give her some space and walk along in silence.

~current_background = "beach_day"

Finally, you arrive at the beach.
As you make your way to the shore, you approach Ali's body.

#speaker: Sadie
“She looks so... peaceful.”

You and Sadie start gathering flowers and sea shells to make an altar.

#speaker: Sadie
“She’s so beautiful... even now.”

You watch Sadie take Ali’s bracelet off her wrist and put it in her pocket.

#speaker: Player
“What are you doing?”

Sadie starts panicking.

#speaker: Sadie
"I just— I wanted something to remember her by.”

#speaker: Sadie
“She was my best friend. I just... I don’t want to forget her.”

You nod.

#speaker: Player
“Yeah, me neither...”

#speaker: Sadie
“I know I probably seem... weird to you.” 

Sadie gingerly starts laying the flowers near the altar, then looks up at you nervously.

#speaker: Sadie
“I just... I never really felt like I was enough. Ali— she was so confident. She always knew what to say, what to do. Everyone loved her. I just wanted to be like her.” 

Sadie looks at the ground.

#speaker: Sadie
“Sorry.. I’m rambling”

-> choiceHub

= choiceHub

* {didntKnow == false} “I didn’t know you felt that way”
    ~didntKnow = true

    #speaker: Player
    “You don’t have to be like her to matter, Sadie. You’re enough as you are.”

    #speaker: Sadie
    “That’s nice of you to say. But I don’t think I’ve ever been enough for anyone. 

    #speaker: Sadie
    “I just... I don’t know.

    #speaker: Sadie
    “I always feel like I have to try so hard just to keep people around.”

    #speaker: Sadie
    “Like, if I don’t make myself useful, if I don’t say what people want to hear, then they’ll just... forget about me.”

    #speaker: Player
    “You really think people would just forget you?”

    #speaker: Sadie
    “I know they would. It’s happened before. People move on so easily.”

    Sadie looks back at Ali's body.

    #speaker: Sadie
    “Ali never had to try. She just had this... gravity. People wanted to be near her.”

    #speaker: Player
    “And you felt like you had to work to stay in her life?”

    #speaker: Sadie
    “Maybe. I don’t know. I wanted to be someone she needed. I wanted to be someone important to her.” 

    #speaker: Sadie
    “I guess that sounds pathetic, huh?”
    
    #speaker: Player
    “No…not at all.”
    
    -> choiceHub

* {caredAboutHer == false} “It sounds like you cared about her a lot.”
	~caredAboutHer = true

    #speaker: Sadie
    “You get it, don’t you?”

    #speaker: Player
    “Get what?”

    Sadie starts fidgeting with the bracelet.

    #speaker: Sadie
    “What it’s like to admire someone so much that you just want to be near them all the time…”

    #speaker: Sadie
    “You want to know everything about them.”

    #speaker: Sadie
    “She…made me feel like I mattered.”

    #speaker: Sadie
    “That’s why I need to keep something of hers. It’s like… a part of her will always be with me.”

    #speaker: Player
    “I mean… it makes sense to want to remember her.”

    #speaker: Sadie
    “Exactly! You understand.” 

    Sadie continues to build the altar.

    -> choiceHub

* {staySilent == false} Say nothing, let Sadie speak
	~staySilent = true

    #speaker: Sadie
    “I just wish… I could’ve been more for her, you know? Maybe then—”

    #speaker: Player
    “Then what?”

    #speaker: Sadie
    “Never mind.”

    ~ flags += sadieSelfConscious
	
	-> choiceHub

* {askedAboutSleep || askedAboutAli || talkedAboutDrama} "We should probably be heading back pretty soon."
    -> headBack

= headBack

Sadie sighs and nods, placing the final seashell on the altar.
You and she stand, brushing the sand off your hands.
There’s a moment of quiet between you two.
Sadie sighs again and then turns to leave. You both walk back to the house in silence.

~current_background = "living_room_day"

When you arrive back at the cabin, Sam and Victoria are sitting in the living room.
It seems you entered in the middle of a conversation…

-> scene12
