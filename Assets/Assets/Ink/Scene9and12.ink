~current_track = "default_music"

== stayHome ==

#enter: Sadie

#speaker: Sadie
“I think…I need a minute.”

#exit: Sadie
Sadie heads to her room, leaving you with Sam and Victoria in the living room.

-> scene12 

== scene12 ==

~ current_background = "living_room_day"
~current_track = "default_music"

#enter: Victoria
#enter: Sam

Victoria turns to Sam.

#speaker: Victoria
“You look like you’re about to cry.”

#speaker: Sam
“I’m not.”

#speaker: Victoria
“You sure? Your face is looking awfully red.”

#speaker: Sam
“Shut up, Victoria.”

#speaker: Victoria
“God, you’re always so moody. You know that?”

#speaker: Victoria
“Always skulking around like some sad little weirdo.”

#speaker: Victoria
“Maybe if you didn’t act like a freak, your family wouldn’t hate you so much.”

Sam takes a deep breath, clearly trying to hold herself back.

#speaker: Player
“Vic-”

Victoria cuts you off and starts yelling at Sam instead.

#speaker: Victoria
“Oh, what? Am I being “harsh”? As if we weren’t all thinking it anyway.”

#speaker: Victoria
“They loved Ali, and you were just... there. Being a burden.”

#speaker: Victoria
“Just like you are right now. I can’t believe Ali brought you along.” 

#speaker: Sam
“Just STOP. You don’t know shit about me or my family!”

#speaker: Sam
“Does shitting on me make you feel better about yourself?”

#speaker: Sam
“You’re so fucking pathetic.”

#speaker: Victoria
“Aw, that’s cute.”

#speaker: Victoria
“I’m not the pathetic one here, but nice try though!”

Victoria smiles sweetly, viciously.

Sam lets out a huff and starts walking towards the basement door.

#speaker: Sam
“I’m going to my room.”

#exit: Sam

After the door slams behind her, you glance down and notice Sam’s phone still sitting on the side table.

Victoria eyes the phone and picks it up.

#speaker: Victoria
“Well well well... What do we have here?”

#speaker: Player
“Uh, maybe we shouldn’t look through that.”

#speaker: Victoria
“Why not? Aren’t you even a little curious?” 

Victoria opens the phone.

#speaker: Victoria
“Ugh this is so sad. She doesn’t even have anything interesting on here.”

#speaker: Player
"Ya know, you said some kinda mean stuff to her.”

#speaker: Victoria
“And?”

#speaker: Player
“And maybe now isn't the time to be picking fights?”

#speaker: Victoria
“Oh my god, would you relax?”

#speaker: Victoria
“You act like this is some big deal.”

#speaker: Victoria
“You know, in high school, there was a girl just like Sam, so pathetic and childish.”

#speaker: Victoria
“I was only trying to toughen her up, of course. It was hilarious.”

#speaker: Victoria
“But she ended up transferring schools, what a buzzkill.”

#speaker: Victoria
“So trust me, this isn’t a big deal. I think Sam can handle herself.”

You and Victoria stare at each other for a second.

#speaker: Victoria
“Here, you want it? I’m bored of it."

#exit: Victoria

~current_track = ""

She tosses you the phone and starts to head upstairs. You are now alone in the living room.

Are you going to look through Sam's phone?
* [Look through Sam's phone] 
-> lookAtPhone
* [Don't look through the phone] 
-> leavePhone

== lookAtPhone ==
~ flags += samPhone

You open Sam's messages.

#thought start
#speaker: Mom
“Mom: Ali said you were acting weird again. Stop sulking. It’s embarrassing.”

#speaker: Dad
“Dad: Ali just won the competition. You should be happy for her.”

#speaker: Dad
“Dad: Maybe if you actually tried at something, people would like you more.”

#speaker: Mom
“Mom: Why can’t you be more like Ali?”

#speaker: Dad
“Dad: Ali’s going to do great things. You should ask her for advice.”

#speaker: Mom
“Mom: You’re such a disappointment. She always had to pick up the slack for you.”

#speaker: Mom
“Mom: Do you ever think about how much easier things would be if you weren’t like this? If you just tried to be normal?”

#thought end

You quickly put down the phone, shocked at the messages you've read. 

#thought start
I guess Victoria wasn’t wrong then. No wonder Sam was getting so pissed off earlier.

I wonder how she’s feeling about all this.
#thought end
-> end12 


== leavePhone ==
Are you sure you don't want to look at it?
* [Look through the phone]
    ->lookAtPhone
* [Don't look through the phone]
    #thought start
    I can't look at it. It's just wrong. I hope Sam's okay though.
    #thoughtend
    -> end12


== end12 ==

#thought start
I wonder what everyone is up to right now
#thought end

Who do you look for?

-> lookForTheOthers
