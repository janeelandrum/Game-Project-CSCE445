 == bedtime ==

#enter: Victoria
#enter: Sam
#enter: Sadie
~current_background = "living_room_night"

Everyone is moving around the house, getting ready for bed.

{flags ? sleepVictoria:
    #speaker: Victoria
    “You can come up."
    
    #speaker: Victoria
    Just don’t touch anything.”
    
    #exit: Sam
    #exit: Sadie
    ~current_background = "victoria_room"
}

{flags ? sleepSam:
    #speaker: Sam
    “Let's go, {player_name}.”
    
    #exit: Victoria
    #exit: Sadie
    ~current_background = "sam_room"
}

{flags ? sleepSadie:
    #speaker: Sadie
    “Hey you’re with me right?"
    
    #speaker: Sadie
    "I don’t feel like being alone...”
    
    #exit: Victoria
    #exit: Sam
    ~current_background = "sadie_room"
}

#exit: Sam
#exit: Victoria
#exit: Sadie
You get yourself tucked in as the lights go out.

You feel yourself drifting to sleep.

#thought start
You see Ali on the beach.

"...Ali?"

Ali turns around, sobbing.

“Ali what happened?"

"Are you– Are you okay?”
#thought end

You rush to her but suddenly-

You bolt up in your bed.

#thought start
“It was just a dream..."

"It wasn't real...”
#thought end

A shudder passes over your whole body.
You don't think you'll be able to go back to sleep.

-> clues
