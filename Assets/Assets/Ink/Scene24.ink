== sleepWSam ==
~flags += sleepSam

~ current_background = "sam_room"

You drag your things down the basement stairs to Sam's room.

You look around the dark basement, looking at Sam's minimal belongings.
You see Sam's sketchbook peeking out of her backpack.

You pull it out and flip through the first couple of pages.

#thought start
Oh wow, she's good.
#thought end

*[Keep looking]
-> samArt
*[That’s enough]
-> dontSnoop

= samArt
You keep flipping through the sketchbook.
The drawings start getting more dark, more twisted.

#thought start
Wow...
This is dark...
#thought end

~flags += samSnoopSketch

*[Keep flipping...]
    -> samCaught
*[Put it away]
    -> stopSnooping

= samCaught
#enter: Sam

Suddenly Sam comes into the room.

#speaker: Sam
"What the hell are you doing??"
~sam_trust -= 3

#speaker: Player
"I– uh, I was just–"

#speaker: Sam
"Going through my stuff? Real nice."

#speaker: Player
"I’m sorry."

#speaker: Player
"I shouldn’t have looked."

#speaker: Sam
"Damn right you shouldn’t have."

You sheepishly keep unpacking your things in silence.

#speaker: Player
"Sam... these drawings–"

#speaker: Sam
"It’s just art. Don’t read into it."

#speaker: Player
"But—"

#speaker: Sam
"Drop it, {player_name}."

#exit:Sam

Sam storms out of the room.
-> samLeave

= dontSnoop
#thought start
It's not my business.
#thought end

You put the sketchbook back in Sam's backpack.

-> samLeave

= stopSnooping
#thought start
I really shouldn't look at any more of this.
#thought end

You put the sketchbook back in Sam's backpack.

-> samLeave

= samLeave
You finish unpacking your things and leave Sam's room.

~current_background = "living_room_day"

-> whatToDoNow
