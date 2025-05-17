== findVictoria ==

#exit: Sadie
#exit: Victoria
#exit: Sam

~ current_background = "living_room_day"
~ current_track = "default_music"

You make your way to Victoria's room and knock on her door.

#speaker: Player
"Hey, Victoria? You in there?"

#speaker: Victoria
"If I say no, will you leave?"

#speaker: Player
"I just wanna talk."

#speaker: Victoria
"Fine. Whatever."

Victoria opens the door.

~current_background = "victoria_room"

#enter: Victoria

#speaker: Victoria
"Come in."

You look around the room, admiring the decorations.

#speaker: Player
“Wow this is a beautiful room.”

#speaker: Victoria
“Yeah, well I spent a lot of time decorating it.”

#speaker: Player
"You okay?"

#speaker: Victoria
"Oh, sure. My friend just died, my weekend’s ruined, and now I get to sit here waiting for the next horrible thing to happen."

#speaker: Victoria
“Daddy’s never gonna let me borrow the island again.”

#speaker: Victoria
"So I’m doing just fantastic."

What do you say to Victoria?
*[Sympathize]
    -> sympatheticV
*[Make a joke]
    -> teasingV


= sympatheticV
~ victoria_trust += 1

#speaker: Player
"I know this is a lot. You don’t have to pretend it’s not getting to you."

->vContinues

= teasingV
~ victoria_trust -= 1

#speaker: Player
"Yeah, real inconvenience for you, huh?"

->vContinues

= vContinues
Victoria rolls her eyes.

#speaker: Victoria
"Ugh, don’t start. I’m not—"

#speaker: Victoria
"Look, it’s complicated, okay? But Ali was... Ali. She wasn’t exactly easy to love."

#speaker: Player
"You guys were best friends, though."

#speaker: Victoria
"Yeah, sure. If that’s what you wanna call it."

#speaker: Victoria
"More like two people who couldn’t decide if they wanted to kill each other or rule the world together."

#speaker: Victoria
"I mean, we had fun, don’t get me wrong."

#speaker: Victoria
"But Ali— she always had to be on top. Always had to be the center of everything."

#speaker: Victoria
"And if she wasn’t? She made damn sure someone else paid for it."

You notice a small, framed photo on Victoria’s nightstand.
It's an old picture of her and Ali at what looks like a school event.
They look happy.

#speaker: Player
"You kept this?"

Victoria glances at it and shrugs.

#speaker: Victoria
"Yeah, well. Just because she was a nightmare doesn’t mean we didn’t have good times."

#speaker: Victoria
"It’s weird."

#speaker: Player
"Yeah."

You try to go forward and grab the picture but your foot hits something under the bed.

#speaker: Victoria
"Watch where you’re stepping."

You look down and see a baseball bat rolled out from under Victoria's bed.

~flags += victoriaBaseballBat

#thought start
That's...weird.
#thought end

#speaker: Player
"Huh, I didn’t know you played..?"

Victoria freezes for a moment and glances at you, eyes wide.

#speaker: Victoria
"I uh– I used to play."

She laughs nervously.

#speaker: Victoria
“It’s not important, it was a long time ago.”

In one fluid motion, she brushes you to the side and kicks the bat back under the bed.
What do you say?
*[Question her]
    -> pressV
*[Move on]
    ->letGoV

= pressV

#speaker: Player
"Then why is it on the island? And uh– right there, under your bed?"

Victoria glares at you.

#speaker: Victoria
"I don’t know. Maybe I threw it under there and forgot about it."

#speaker: Player
"Maybe? What do you mean, you don’t remember?"

#speaker: Victoria
"Oh my God, drop it. It’s nothing, just go bother someone else."

Victoria shuffles you out the door and into the hallway, closing it firmly behind you.

#thought start
Well that was weird.
Better go do something else.
#thought end

~ victoria_trust -= 1
#exit: Victoria
~ current_background = "living_room_day"

-> lookForTheOthers

= letGoV

#speaker: Player
"Alright. Whatever you say."

Victoria starts quickly shuffling you towards the door.

#speaker: Victoria
"Okay, well, I need to go take a nice long bath. I’ll meet you outside later.”

#speaker: Player
“Wait, but–”

She closes the door in your face.

#thought start
Well that was weird.
Better go do something else.
#thought end

#exit: Victoria
~ current_background = "living_room_day"

-> lookForTheOthers

