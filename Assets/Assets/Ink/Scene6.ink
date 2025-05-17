VAR askedAboutFriendship = false
VAR askedWhereAliIs = false
VAR askedHowLong = false

~current_track = "default_music"

== sadieBedroom ==

#exit: Victoria
#exit: Sam
#enter: Sadie

You and Sadie head upstairs to check Ali’s bedroom.

Sadie opens the door and you both peer into the room.

#speaker: Sadie
"It doesn't look like she's in here."

~ current_background = "ali_room"

You both step into the room.

#speaker: Sadie
"The bed doesn't even look slept in..."

Sadie walks along the side of the bed, running her hands along the comforter.

#speaker: Player
"Maybe she just made the bed this morning?"

#speaker: Sadie
"Yeah she is the type to do that."

->choiceHub

= choiceHub

* {askedAboutFriendship == false} "You guys are pretty close, huh?"
    ~ askedAboutFriendship = true
    ~ sadie_trust += 1

    #speaker: Sadie
    "Not as close as we used to be."

    Sadie suddenly appears sad.

    ** ["What happened?"]

        #speaker: Sadie
        "Nothing! I mean I-"

        #speaker: Sadie
        "Well-I just..."

        She sighs.

        #speaker: Sadie
        "It just happens, I guess."

        #speaker: Player
        "Yeah, I get that."
        
        #speaker: Player
        "I didn't mean to pry or anything."
        
        #speaker: Player
        "You've just seemed kind of off this weekend."
        
        #speaker: Player
        "I just wanted to make sure you were okay."
        
        Sadie smiles and looks at her shoes.
        
        #speaker: Sadie
        "Yeah, I'm okay."

        ->choiceHub

    ** ["It happens sometimes with friendships."]

        #speaker: Sadie
        "Yeah I know, you're right."

        #speaker: Sadie
        "But still..."
        
        #speaker: Player
        "I didn't mean to pry or anything."
        
        #speaker: Player
        "You've just seemed kind of off this weekend."
        
        #speaker: Player
        "I just wanted to make sure you were okay."
        
        Sadie smiles and looks at her shoes.
        
        #speaker: Sadie
        "Yeah, I'm okay."

        ->choiceHub
        

* {askedWhereAliIs == false} "Where do you think she went off to?"
    ~ askedWhereAliIs = true

    #speaker: Sadie
    "Maybe she just went for a jog around the island?"

    #speaker: Sadie
    "She likes to work out in the mornings."

    ->choiceHub

* {askedHowLong == false} "How long have you and Ali known each other?"
    ~ askedHowLong = true

    #speaker: Sadie
    "We've been friends since we were kids."

    #speaker: Player
    "That's so sweet."

    #speaker: Player
    "I've only known you guys the past few years, but wow you guys go way back."

    Sadie looks wistful.

    #speaker: Sadie
    "Yeah..."

    She looks like she's lost in thought.

    ->choiceHub

+ {askedAboutFriendship || askedWhereAliIs || askedHowLong} "We should probably head back out there."
    -> headBack


=headBack
    #speaker: Sadie
    "You're right, let's go back."

    You both step out of the room, softly closing the door behind you.

    -> bodyFound








