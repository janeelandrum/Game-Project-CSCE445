== vicBeach ==

#exit: Sadie
#exit: Sam
#enter: Victoria

~ current_background = "front_of_house_day"
~current_track = "default_music"

You and Victoria head off in the direction of the beach.

#speaker: Player
"You don't think we should help look for Ali?"

#speaker: Victoria
"I'm sure she's fine."

#speaker: Victoria
"Maybe she's just avoiding us after what happened last night."

#speaker: Victoria
"Clearly she needs some liquid courage in her system to say what she really thinks."

#speaker: Victoria
"And now that she's sober she can't stand behind her words"

-> choiceHub

= choiceHub
    * [Agree with her]
        #speaker: Player
        "Yeah you might be right."
        
        #speaker: Player
        "If anything, she might just feel guilty."
        
        #speaker: Victoria
        "Yeah she really owes me an apology."
        
        #thought start
        You owe her an apology too.
        #thought end
        
        ->afterChoiceHub
    
    * [Say you're not sure]
        #speaker: Player
        "I don't know, maybe. I mean..."
        
        #speaker: Player
        "She did seem pretty upset."
        
        #speaker: Player
        "Maybe she's hoping you will apologize."
        
        #speaker: Victoria
        "Yeah well she can just keep hoping."
        
        #speaker: Victoria
        "I'm not apologizing unless she apologizes first."
        
        ->afterChoiceHub
    

= afterChoiceHub
    ~ current_background = "forest_day"
    
    You both continue walking, the edge of the tree line in sight, with the ocean barely visible beyond.
    
    Victoria sighs.
    
    #speaker: Victoria
    "On the bright side, there's still plenty of alcohol left."
    
    #speaker: Victoria
    "And it happens to be the best cure for a hangover."
    
    Victoria, excited about the idea of a beach and day drinking, jogs up ahead of you onto the sandy beach.
    
    You are about to follow when you stoop down for a second to tie your shoe.
    
    ~current_track = ""
    
    All of the sudden you hear-
    
    #speaker: Victoria
    "AAAAAAAAAAAAAAAAH-"
    
    You jolt up.
    
    #speaker: Player
    "What?? What is it?"
    
    Victoria comes sprinting back to where you're standing.
    
    #speaker: Victoria
    "We need to go back to the house. Right now."
    
    #speaker: Player
    "Ok but, what's going on-"
    
    Victoria isn't listening. She's too busy frantically pushing her way through the trees back to the cabin.
    
    #speaker: Victoria
    "Oh my god. Oh my god. Oh my god. Oh-"
    
    You have no choice but to follow her.
    
    You both make it back to the house in a matter of seconds.
    
    #speaker: Player
    "Will you just slow down for a second?"
    
    But Victoria's already opened the door and headed inside.
    
    You follow quickly behind her.

    -> bodyFound 
