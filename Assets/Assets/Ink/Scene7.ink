VAR askedAboutSleep = false
VAR talkedAboutDrama = false

== samOutsideHouse ==

#exit: Victoria
#exit: Sadie
#enter: Sam

~ current_background = "front_of_house_day"

You and Sam head out the front door and onto the porch.

#speaker: Sam
"Ali! Are you out here?"

No answer.

#speaker: Sam
"I guess we can wander a bit and look for her."

#speaker: Player
"She can't be too far, this island isn't very big."

You both start walking a little ways away from the house.

~ current_background = "forest_day"

->choiceHub

= choiceHub
#speaker: Player
"So..."

* {askedAboutSleep == false} "Did you sleep alright in the basement?"
    ~ askedAboutSleep = true
    
    #speaker: Sam
    "I mean it's cold, and there's just a couch down there..."
    
    #speaker: Sam
    "I really wasn't looking forward to coming here in the first place but-"
    
    Sam glances at you for a split second.
    
    #speaker: Sam
    "I guess it's not so bad."

    ->choiceHub
    
* {flags ? askedAboutAli} "You and Ali are step siblings?"
    ~ flags += askedAboutAli
    
    #speaker: Sam
    "Yep. I'm surprised she never told you she had a step sister."
    
    #speaker: Player
    "Me too. She was always kind of a private person anyways."
    
    #speaker: Sam
    "That or she didn't want you guys to know about me."
    
    ** ["Aw I don't think that's it."]
    
        Sam looks like she wants to say something, but decides against it.
        
        #speaker: Sam
        "I don't know...let's just keep looking."
        
        ->choiceHub
    
    ** ["But you seem so cool though!"]
        ~ sam_trust += 1
    
        Sam smiles a bit and looks away.
        
        #speaker: Sam
        "You seem cool too, I can see why she's friends with you."
        
        ->choiceHub
    
* {talkedAboutDrama == false} "I'm sorry about all the drama yesterday."
    ~ talkedAboutDrama = true
    
    #speaker: Player
    "I should've said something when it started getting out of hand."
    
    #speaker: Sam
    "It's fine. I know how Ali can be sometimes."
    
    ->choiceHub2
    
* {askedAboutSleep || askedAboutAli || talkedAboutDrama} "We should probably be heading back."
    ->headBack


= choiceHub2
    * ["But you didn't need to get dragged into it like that."]
        #speaker: Player
        "You really didn't deserve all that."
        ->afterChoiceHub2
    
    * ["But both Victoria and Ali were way out of line."]
        #speaker: Player
        "You really didn't deserve all that."
        ->afterChoiceHub2


= afterChoiceHub2
    #speaker: Sam
    "{player_name}, I promise. It's really fine."

    #speaker: Sam
    "I'm used to it."
    
    #speaker: Player
    "Used to what exactly...?"
    
    #speaker: Sam
    "Well-"
    
    She sighs and trails off. 
    
    #speaker: Player
    "I'm sorry, I didn't mean to pry."
    
    #speaker: Sam
    "No it's okay. I'll talk to you about it later, alright?"
    
    #speaker: Sam
    "Right now let's just find Ali."
    
    #speaker: Player
    "Alright."
    
    #speaker: Player
    "We should probably be heading back pretty soon though."
    
    ->headBack
    

= headBack
    #speaker: Sam
    "You're right, maybe one of the others has found her already."
    
    You both head back to the house and through the front door, shutting it softly behind you.

    -> bodyFound 
