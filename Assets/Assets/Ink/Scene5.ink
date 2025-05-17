==next_morning==

~current_background = "kitchen_day"
~current_track = "default_music"

Your head is throbbing as you recall the fight from the night before.

You walk into the kitchen.

#enter: Victoria

Victoria is already at the counter, scrolling through her phone bored.

#enter: Sadie

Sadie is at the stove, attempting to flip a pancake with questionable success.

#enter: Sam

Sam sits in the corner, sketching in a notebook.

#speaker: Victoria
“Well, look who finally decided to wake up."

#speaker: Player
“What time is it??”

#speaker: Sadie
“Almost noon. You must’ve had a good night. Where’d you even end up sleeping?”

Where did you sleep?

* [The couch]

#speaker: Player
"Oh I think I passed out on the couch after the party."
-> couch

* [Don't remember]

#speaker: Player
"I don't remember..."
-> dontRemeber

= couch
Sam glances up briefly and laughs under her breath.

#speaker: Sam
"You were really drunk."
-> afterSleep


= dontRemeber
Victoria smirks.

#speaker: Victoria
"You were probably throwing your guts up after all those shots."

Sadie mumbles under her breath.

#speaker: Sadie
“Oh... you could've slept in my room. I wouldn't mind.”

#speaker: Player
"What was that?"

#speaker: Sadie
"Oh, nothing haha."
-> afterSleep


= afterSleep

#speaker: Sadie
“Anyways I made pancakes!"

Sadie beams. 

#speaker: Sadie
"Kind of. They might be a little… crispy.”

She scrapes a pancake off the pan.

#speaker: Victoria
“Oh, fantastic. Burnt carbs. Just what I need.”

#speaker: Sadie
“You could cook something yourself, you know.”

#speaker: Victoria: 
“I could. But watching you struggle is much more entertaining.”

You take a seat.

#speaker: Sadie
“Besides, it’s not my fault this kitchen is cursed. Who even designed this stove?”

#speaker: Victoria
"Someone who knew not to let you near open flames."

Sadie rolls her eyes and laughs.

#speaker: Sadie
“Wowwww. After all I've done for you."

#speaker: Sam
“I mean she’s not wrong."

#speaker: Victoria
“So anyways, what’s the plan for today? Or are we all just going to sit around, nursing hangovers?”

#speaker: Sadie
"I was thinking a hike!”

#speaker: Sadie
“Or, well, a walk. A very short walk.”

#speaker: Sadie
"It's not like this island is very big."

Victoria rolls her eyes.

#speaker: Victoria
“Well, sorry my dad didn't buy a bigger island 20 years ago-”

#speaker: Sam
“Not much of a hike person, huh?”

#speaker: Victoria
“More of a ‘sip cocktails by the pool’ person.”

#speaker: Player
"Very on brand."

Victoria smiles at you while Sadie rubs her head wearily.

#speaker: Sadie
“Ugh, my head is killing me. I think I drank too much.”

#speaker: Victoria 
“No shit. You were singing karaoke to a song that didn’t even have lyrics.”

Sadie groans and covers her face with her hands.

#speaker: Sadie
"Please tell me you’re lying."

#speaker: Sam
"She’s not.”

#speaker: Player
“It was... impressive, actually.”

Sadie puts her head down on the table.

#speaker: Sadie
“Oh god. Let's talk about something else... What do you want for breakfast?”

What do you want for breakfast?

* [A slightly burnt pancake]
    ~ sadie_trust += 1
    -> pancake

* [Whatever leftovers are still edible]
    ~ victoria_trust += 1
    -> edible

* [Nothing—you feel too hungover] 
    ~ sam_trust += 1
    -> nothing

= pancake
#speaker: Sadie
“See! Someone appreciates my cooking.”

You start eating your pancakes while the room falls into a comfortable silence.
-> breakfastChoice

= edible
#speaker: Victoria
“You’re really living life on the edge.”

You look in the fridge and grab what's left from last night while the room falls into a comfortable silence.
-> breakfastChoice

= nothing
#speaker: Sam
“Smart choice.”

You sit back down at the table, still groggy from sleep.
The room falls into a comfortable silence.
-> breakfastChoice

= breakfastChoice

After a while, someone glances at the empty seat at the table.

#speaker: Sam
“Hey, where’s Ali?”

#speaker: Sadie
“She doesn’t usually sleep this late…”

The group exchanges looks. Sadie frowns.

#speaker: Sadie
“Did…did she not come back last night?”

#speaker: Victoria
“Well she stormed off yeah, but I figured she would've come back.”

You try to remember what happened last night after the fight, but your head starts pounding.

Sadie laughs nervously.

#speaker: Sadie
“She’s probably just sleeping in.”

#speaker: Victoria
“Please, Ali isn’t the ‘sleep all day’ type.”

#speaker: Victoria
“If she was here, she’d be making us all suffer through her morning workout routine.”

#speaker: Sam
“Maybe someone should check on her?"

#speaker: Sadie
"I'll check her room."

#speaker: Sam
"I'll look around the house outside."

#speaker: Victoria
"Good luck with that, I'm going to the beach."

There's a pause. Everyone stands.

Who do you follow?

* [Go with Sadie to Ali's bedroom]
    ~ sadie_trust += 1
    ~ flags += searchAlisRoomWithSadie
    
    "Sadie, I'll come help you look."
    
    She smiles at you and nods.
    -> sadieBedroom

* [Search with Sam outside]
    ~ sam_trust += 1
    ~ flags += searchOutsideWithSam
    
    "Sam, I'll come help you look."
    
    She smiles at you and nods.
    -> samOutsideHouse

* [Head to the beach with Victoria]
    ~ victoria_trust += 1
    ~ flags += searchBeachWithVictoria
    
    "Victoria, I'm coming with you."
    
    She smiles at you and nods.
    -> vicBeach




== bodyFound ==
~ current_background = "living_room_day"
~ current_track = "mysterious_music"

#enter: Sadie
#enter: Sam
#enter: Victoria

Everyone gathers back into the living room.
Victoria hurries in, out of breath.

#speaker: Victoria
"Oh my god, you guys… Ali’s on the beach."

Her voice cracks.

#speaker: Victoria
"She’s - she’s dead. I just found her lying there.”

#speaker: Victoria
"Oh my god, it was so gross."

Everyone is looking at Victoria in silent disbelief.
Victoria starts pacing around the room, fake gagging.

#speaker: Victoria
“Ugh Daddy’s gonna kill me when he finds out!”

Sadie starts shaking.

#speaker: Sadie
"No... no she’s not... she couldn't be...”

#speaker: Victoria
“Sadie, I know what a dead body looks like.”

#speaker: Sam
"What happened to her?”

Sam sounds more curious than anything.

#speaker: Victoria
“I don’t know... her head was all bloody. It was-” 

Victoria gags for real this time.

#speaker: Victoria
“God, I think I’m gonna be sick.”

#speaker: Player
“So... what do we do?”

#speaker: Victoria
"We should stay here. I mean what else are we supposed to do?”

#speaker: Victoria
“It’s not like she’s going anywhere, and I don’t want the house to start smelling like…”

#speaker: Victoria
“Never mind.”

Sadie looks like she's on the verge of tears.

#speaker: Sadie
“We-we should do something. Like a ceremony or... I don’t know, a funeral."

She pauses, thinking. The room remains silent.

#speaker: Sadie
"We can’t just leave her there!"

#speaker: Sam
"We should just deal with the body for now... before it starts to rot."

#speaker: Victoria
"That is literally the most disgusting thing I have ever heard.”

#speaker: Sam
"What? It’s the practical thing to do.”

#speaker: Sadie
“No no we can’t. Guys, she deserves better than that! She was our friend.”

#speaker: Player
"Everyone calm down! I think we should..."

How should we deal with the situation?
* [Stay here (agree with Victoria)]
    ~ victoria_trust += 1
    ~ flags += stayHomeWithVictoria

    #speaker: Player
    “Why don’t we all just stay here and take a moment to process this.”

    Nobody says anything, but they nod in agreement.

    -> stayHome

* [Have a funeral (agree with Sadie)]
    ~ sadie_trust += 1
    ~flags += haveFuneralWithSadie

    #speaker: Player
    “Sadie, I think you’re right. Ali was our friend, she deserves a proper burial.”

    #speaker: Victoria
    “You guys have fun with that, I’m not going back over there.”

    #exit: Victoria

    #speaker: Sadie
    “Come on, {player_name}, let’s go to the beach before it gets dark.”

    #speaker: Sadie
    “Sam, are you coming?”

    Sam pauses, and looks like she’s going to say something…

    #speaker: Sam
    “I–”

    #speaker: Sam
    “I’m going to my room.”

    #exit: Sam

    Sadie looks upset, but doesn’t try to stop her.
    You both turn and go out the front door.

    -> honorAli

* [Deal with the body (agree with Sam)]
    ~ sam_trust += 1
    ~flags += buryBodyWithSam

    #speaker: Player
    “Sam’s right, we should bury the body before it becomes a…problem”

    #speaker: Player
    “It is the practical thing to do.”

    #speaker: Sam
    “Come on, {player_name}, I’ll help you.”

    #speaker: Victoria
    “You guys have fun with that.”

    Sadie looks distraught, but doesn’t argue.
    She goes up to her room without saying anything.

    #exit: Sadie
    #exit: Victoria

    You and Sam grab shovels and head out the door.

    -> buryBody


