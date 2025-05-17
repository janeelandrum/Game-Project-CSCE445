== party ==

#enter: Sam
#enter: Victoria
#enter: Sadie
#enter: Ali

~current_background = "living_room_night"
~current_track = "party_music"

Night falls, and the party starts.
Everyone is dancing and drinking as music blasts through the large speakers.

#speaker: Sadie
“So this is fun right?”

Victoria stumbles over to Sadie. She’s clearly more than a bit tipsy, and slurs her words in response.

#speaker: Victoria
“Duhhh. Best ideea I’ve everrr hadd!”

// This is where the FMK scene and any other partying would go.
// TO ADD HERE

-> fight


== fight ==

#speaker: Victoria
“Oh hey Ali, did you ever spend that pageant prize money? You know the whole $500? Big win for you huh?” Victoria says mockingly.

#speaker: Ali
“Shut up, V.”

Victoria starts laughing.

#speaker: Victoria
“What? You did win, right? So inspiring. Poor little Ali, climbing her way to the top.”

The party starts quieting down, and the others start looking at each other.

#speaker: Ali
“You're just mad you lost.”

Victoria fake gasps.

#speaker: Victoria
“Mad? Of course not. Just saying, people love a good sob story.”

Ali glares at her.

#speaker: Ali
“Excuse me?”

#speaker: Victoria
“Oh, come on. We all know you exaggerated, like, half of it.”

#speaker: Victoria
“What was it, your mom worked three jobs? Or was it two?”

#speaker: Victoria
“The details get so fuzzy when you're bullshitting.”

#speaker: Ali
“You're literally the last person who should be talking about money, Victoria.”

Ali starts to raise her voice, Victoria’s smile falters.

#speaker: Victoria
“Excuse me?”

#speaker: Ali
“Yeah, maybe I didn't tell the full truth, but at least my money is real. How’s Daddy’s business doing, by the way?”

Ali laughs as Victoria yells.

#speaker: Victoria
“Shut the fuck up!”

#speaker: Ali
“What? You don’t wanna talk about where that trust fund comes from?”

#speaker: Victoria
“You don’t know shit about my family.”

#speaker: Sadie
“Guys, maybe we should—”

#speaker: Victoria
“Oh, shut up, Sadie! The grown ups are talking now.”

#speaker: Sadie
“What??”

Sadie is taken aback.

#speaker: Victoria
“Stay out of this, or do you want me to tell everyone about when you were sobbing to me after what happened with—”

#speaker: Sadie
“Stop!!”

Sadie’s face drains of color and she looks like she’s going to start crying. Ali glares daggers at Victoria.

#speaker: Ali
“Wow. Real classy. But I guess I shouldn’t expect better from someone whose family buys their way out of consequences.”

Sam attempts to speak up.

#speaker: Sam
“Alright, this is getting out of—”

#speaker: Ali
“Oh, please.” 

Ali turns on Sam, cutting her off. 

#speaker: Ali
“You don’t get to act like you’re above this.”

#speaker: Sam
“I am above this.”

#speaker: Ali
“Oh yeah? That’s why you spend all your time lurking to the side, right? Pretending you don’t care?”

Sam’s tone remains flat, but she’s getting louder.

#speaker: Sam
“That’s cause I don’t care. You know not everything revolves around you, right?”

Ali grins, seeing that she’s pushed Sam’s buttons.

#speaker: Ali
“No, you’re just mad your real family doesn’t care either.”

Ali grins wider.

#speaker: Ali
“Of course, Sam here is my dear step-sister. Except—”

Ali leans in.
 
#speaker: Ali
“—her parents pretend she doesn’t exist.”

Sam’s voice is quiet.

#speaker: Sam
“Shut. Up.”

#speaker: Ali
“What? We’re family, aren’t we? Oh, wait—no, my family actually wanted me.”

Sam’s fists clench at her side, and she starts breathing heavily.

#speaker: Victoria
“Too bad your family couldn’t even afford to send you to college. Aren’t you working what, like, three jobs now?”

Victoria feigns a sad expression.

#speaker: Victoria
“Gosh that must be terrible.”

#speaker: Player
“Okay, enough. I think we should all calm down–”

#speaker: Ali
“Funny, I don’t remember you being the voice of reason here. Don’t you remember when–”

#speaker: Player
“I just think we should—”

Victoria cuts you off this time.

#speaker: Victoria
“No. Pick a side or stay out of it.”

#speaker: Victoria
“Ali wins one pageant and thinks she owns the fucking place.”

#speaker: Ali
“No I don’t! Victoria is being completely psycho, as usual. {player_name}, what do you think?”

You are forced to pick a side.

* [Support Ali]
    ~ victoria_trust -= 1
    ~ flags += pickVicFight

    #speaker: Player
    “Victoria, I think you’re picking a fight with Ali for no reason. Let’s just forget about the pageant and have a good time, okay?”
    -> vicLeaves

* [Support Victoria]
    ~ victoria_trust += 1
    ~ flags += pickAliFight

    #speaker: Player
    “Ali, why are you being so confrontational with everyone? We didn’t do anything wrong.”
    -> aliLeaves


= vicLeaves
Victoria scoffs, rolls her eyes, and storms off to her room. She slams the door angrily.
#exit: Victoria

Ali shouts after Victoria.

#speaker: Ali
“Oh, now you have nothing to say huh? Well that’s a first.”

#speaker: Sam
“Ali, just shut up already.”

#speaker: Ali
“Whatever.”

Ali huffs as she heads out the front door, slamming it behind her.

#exit: Ali
#exit: Sadie
#exit: Sam
->next_morning

= aliLeaves
Ali shakes her head in disbelief before walking outside, slamming the front door behind her.
#exit: Ali

#speaker: Victoria
“What a crybaby.”

The rest of the room is silent.
Victoria grabs another unopened drink and heads up to her room without another word.

#exit: Victoria

Sadie and Sam just stand there, somewhat shocked.

~current_track = ""
#exit: Sam
With the party ruined, Sam switches off the music and then heads off to her room.

#exit: Sadie
Sadie looks at you and shrugs, then goes to her room as well.

The next thing you know, you're waking up and it's the next morning.

->next_morning


