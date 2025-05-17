== findSam ==

#exit: Sadie
#exit: Victoria
#exit: Sam

~current_background = "front_of_house_day"
~current_track = "default_music"

You head outside to look for Sam.
You're about to call her name when you see feet dangling from the roof above the porch. You recognize Sam's shoes.

~current_background = "roof"

Walking around to the side of the house, you climb up the ladder propped against the cabin.

~current_track = "emotional_music"

#enter: Sam

Sam hears you approaching and turns around.

#speaker: Player
"Hey... you okay?"

#speaker: Sam
"What do you think?"

#speaker: Player
"Victoria was being harsh. She didn’t have to say all that."

#speaker: Sam
"That’s just Victoria."

#speaker: Sam
"She likes kicking people when they’re already down. It’s her favorite sport."

#speaker: Player
“That doesn’t mean you deserve it.”

#speaker: Sam
"I just... I don’t know. I’ve been dealing with so much, and Ali—"

Sam gets quiet.

#speaker: Player
"You can talk to me."

#speaker: Sam
"It’s complicated. Ali and I... we had history. Not good history." 

#speaker: Sam
"She always knew exactly how to get under my skin and make me feel like nothing."

You remember you have Sam's phone.

#speaker: Player
"Oh also, sorry to cut you off, but uh—this is yours. Found it in the living room."

You hold out Sam’s phone.

Sam's eyes go wide and she quickly grabs the phone from you.

#speaker: Sam
"You didn't...see anything on here, right?"

Did you go through Sam's phone?

{flags ? samPhone: 
    *[Tell the truth]
    ->tellTruth
    
    *[Lie]
    ->lie
} 
{not(flags ? samPhone):
    *[<Locked>]
    ->DONE
    *[You did not.]
    ->relief
}

= tellTruth
~ sam_trust -= 1

#speaker: Player
"Yeah, I saw some messages..."

#speaker: Sam
"You had no right!!!"

#speaker: Sam
"What did you see?"

#speaker: Player
"I’m sorry, it was just some stuff from your family, and how they're always comparing you to Ali, and-"

#speaker: Sam
"It’s none of your business."

#speaker: Player
"Sam, you can talk to me—"

#speaker: Sam
"I hated her, okay?! Is that what you want to hear?!"

#speaker: Sam
"She always ruined everything. And I let her. I let her have that power over me."

#speaker: Sam
"I spent my whole life trying to get people to notice me, to matter even a little."

#speaker: Sam
"But she always sucked up all the air in the room, like there wasn’t space for anyone else."

#speaker: Sam
"No one ever saw me when she was around. And if they did, it was just to compare me to her."

#speaker: Sam
"And now she’s gone. And you know what? Maybe I should be crying, or mourning, or something."

#speaker: Sam
"But I’m not."

#speaker: Sam
"Because a part of me feels relieved and maybe that makes me an awful person."

#speaker: Player
"No I get it."

You definitely have more you want to say but you're not sure if it would help or make things worse.

Sam looks like she might continue, but she just sighs and lowers her head.

#thought start
I should probably give her some space.
#thought end

#exit: Sam

~current_background = "front_of_house_day"
~current_track = "default_music"

You climb down off the roof and step back onto the porch.

-> lookForTheOthers


= lie
~ sam_trust += 2

#speaker: Player
"No, I didn’t look. I wouldn’t do that."

She visibly relaxes.

#speaker: Sam
“Oh. Okay. Good.”

You try to lighten the mood a little bit.

#speaker: Player
"What would I have found if I had?"

You turn to her, smiling a bit. But she quickly puts the phone away and won't meet your eyes.

#speaker: Sam
"Nothing, okay?"

#thought start
I guess she's not in the mood.
I should probably give her some space.
#thought end

#exit: Sam

~current_background = "front_of_house_day"
~current_track = "default_music"

You climb down off the roof and step back onto the porch.

-> lookForTheOthers


= relief
~ sam_trust += 2

#speaker: Sam
"No, I didn’t look. I wouldn’t do that."

She visibly relaxes.

#speaker: Player
“Oh. Okay. Good.”

You try to lighten the mood a little bit.

#speaker: Player
"What would I have found if I had?"

You turn to her, smiling a bit. But she quickly puts the phone away and won't meet your eyes.

#speaker: Sam
"Nothing, okay?"

#thought start
I guess she's not in the mood.
I should probably give her some space.
#thought end

#exit: Sam

~current_background = "front_of_house_day"
~current_track = "default_music"

You climb down off the roof and step back onto the porch.

-> lookForTheOthers

