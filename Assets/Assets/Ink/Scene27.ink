== finalAfternoon ==
~ current_background = "beach_day"
You are walking alone on the beach.

{victoria_trust >= sadie_trust and victoria_trust >= sam_trust:
	#enter: Victoria
	#speaker: Victoria
	"Hey."
	
	#speaker: Victoria
	"Didn’t think I’d find you out here."
	
	#speaker: Player
	"Didn’t think anyone would be looking?"
	
	#speaker: Victoria
	"I wasn’t... I just... needed to get out, too."
	
	#speaker: Victoria
	"Listen—"
	
	#speaker: Victoria
	"About earlier, I know I caused a scene."
	
	#speaker: Victoria
	"I don’t usually care what people think about me, but..."
	
	#speaker: Victoria
	"You’re different."
	
	#speaker: Player
	"Are you... apologizing?"
	
	#speaker: Victoria
	"Kind of."
	
	#speaker: Victoria
	"Don’t make it a big thing. I just—"
	
	#speaker: Victoria
	"I don’t like feeling like the villain in someone else’s story, too ."
	
	#speaker: Player
	"Yeah..."
	
	#speaker: Player
	"Wait, do you see that?"
	
	-> findAli
}

{sadie_trust >= victoria_trust and sadie_trust >= sam_trust:
    #enter: Sadie
    #speaker: Sadie
    "Hey..."
    
    #speaker: Sadie
    "Mind if I join you?"
    
    #speaker: Player
    "Sure."
    
    #speaker: Sadie
    "I feel like I owe you an explanation for what happened back there, I just–"
    
    #speaker: Player
    "You don’t owe me anything."
    
    #speaker: Player
    "I know you looked up to her."
    
    #speaker: Player
    "We’re all just... dealing with this in different ways."
    
    #speaker: Sadie
    "Still."
    
    #speaker: Sadie
    "I never even asked how you were doing with all of this."
    
    #speaker: Sadie
    "I know you and Ali were close.”
    
    #speaker: Player
    "I'm still processing it."
    
    #speaker: Sadie
    "Yeah... I get that."
    
    #speaker: Sadie
    "I really do."
    
    #speaker: Player
    "Do you see that???"
    
    -> findAli
}

{sam_trust >= victoria_trust and sam_trust >= sadie_trust:
    #enter: Sam
    #speaker: Sam
    "Jesus, it’s freezing out here."
    
    #speaker: Player
    "Yeah. Perfect place for a breakdown."
    
    #speaker: Sam
    "Same. Needed to walk."
    
    #speaker: Sam
    "Also needed to not be around them."
    
    You both laugh.
    
    #speaker: Sam
    "You holding up okay?"
    
    #speaker: Sam
    "I mean, with everything.”
    
    #speaker: Player
    "I'm sad, but just trying to get through the trip."
   
    #speaker: Sam
    "Yeah, same here."
    
    #speaker: Sam
    "None of this feels real."
    
    #speaker: Player
    "...Do you see that?"
    
    -> findAli
}

= findAli
{buryBody:
    You approach an area of sand that is clearly blood-stained.
}
{not buryBody:
    You two approach Ali’s body, lying on the sand.
}

#enter: Victoria
#enter: Sadie
#enter: Sam

The others walk up from the opposite direction as you.

#speaker: Sadie
"Guess, we all had the same idea."

#speaker: Victoria
"We were all drunk that night."

#speaker: Victoria
"Maybe it really was just an accident."

#speaker: Sam
"Yeah... we all were."

{victoria_trust <= sadie_trust and victoria_trust <= sam_trust:
	#speaker: Victoria
	"Yeah, we were really fucked up."
	
	#speaker: Victoria
	"After I went outside, I was puking my guts up for like an hour."
	
	#speaker: Sam
	"I went to the roof."
	
	#speaker: Sam
	"Which now that I think about it, is such a stupid place to be for drunk person to be."
	
	#speaker: Sadie
	"I just... sat outside."
	
	#speaker: Sadie
	"Tried to sober up."
	
	#speaker: Victoria
	"What about you, {player_name}?"
	
	#speaker: Victoria
	"You were pretty fucked up too."
	
	#speaker: Victoria
	"What did you do after Ali ran off?"

    #speaker: Player
    "I think I went to bed."
    
    #speaker: Victoria
    "Wait—"
    
    #speaker: Victoria
    "You don’t remember??"
    
    #speaker: Sam
    "I think I saw you going after Ali."
    
    #speaker: Sam
    "Did you try to calm her down?"
    
    #speaker: Victoria
    "Wait, you went after Ali?"
    
    #speaker: Player
    "I–"
    
    #speaker: Player
    "Uh"
    
    #exit: Victoria
    #exit: Sam
    #exit: Sadie
    
    Suddenly that night starts to come back to you...
    
    -> flashback
}

{sadie_trust <= victoria_trust and sadie_trust <= sam_trust:
    #speaker: Sam
    "And I mean... none of us are murderers."
    
    #speaker: Sam
    "Like... that’s just... extreme"
    
    #speaker: Sam
    "...right?"
    
    Sadie glances at you.
    
    #thought start
	"What was that about?"
	#thought end
	
	#speaker: Victoria
	"Well, I didn’t do it, but I’m not gonna lie she got what she deserved."
	
	#speaker: Sadie
	"Don’t say that!"
	
	#speaker: Sadie
	"Ali was—"
	
	#speaker: Sadie
	"Sh-she was—”
	
	#speaker: Player
    "She could be a little... manipulative."
	
    #speaker: Sadie
    "How dare you say that??"
    
    #speaker: Sadie
    "After everything you and Ali went through?"
    
    #speaker: Sadie
    "After everything she did for you?"
    
    Everyone looks at you, confused.
    
    #thought start
    "Is she talking about what I think she's talking about?"
    "How does she even know?"
    "God, I haven’t thought about that in a long time."
    "I try my best not to. Except for recently... oh god"
    #thought end
    
    #speaker: Player
    "I–"
    
    #speaker: Player
    "Uh"
    
    #exit: Victoria
    #exit: Sam
    #exit: Sadie
    
    Suddenly that night starts to come back to you...
    
    -> flashback
}

{sam_trust <= victoria_trust and sam_trust <= sadie_trust:
	#speaker: Sam
	"You know..."
	
	#speaker: Sam
	"After our argument that night, I went up to the roof to get some air."
	
	#speaker: Sam
	"Probably a dumb idea given how drunk I was..."
	
	#speaker: Sam
	But, {player_name}..."
	
	#speaker: Sam
	"I saw you go after Ali, when she stormed out."
	
	#speaker: Sam
	"I figured you were going to try to calm her down."
	
	#speaker: Sam
	"Did she seem... okay?"
	
	#speaker: Player
    "I–"
    
    #speaker: Player
    "Uh"
    
    #exit: Victoria
    #exit: Sam
    #exit: Sadie
    
    Suddenly that night starts to come back to you...
    
    -> flashback
}

== endings ==
~current_background = "beach_day"
~current_track = "mysterious_music"

#enter: Victoria
#speaker: Victoria
"Hello...? You just spaced out for like 20 seconds."

#enter: Sam
#speaker: Sam
"Yeah what's up with you?"

#enter: Sadie
#enter: Sadie
"You look pale, are you alright?"

Your head is spinning.
You brain must have blocked out that night.
You didn't want to remember...

...

Everyone is staring at you expectantly.

* [Tell them it was an accident.]
    ->END
    //-> accident
* [Tell them it was suicide.]
    -> suicide
* [Tell them you don’t know what happened.]
    ->END
    //-> dontKnow

