VAR peopleTalkedTo = 0

== scene17 ==
~ current_background = "living_room_day"
~ current_track = "default_music"

You take a few minutes to yourself in the living room.
Everybody seems to be making themselves scarce, but you think you all could benefit from talking as a group a little bit.
Things were left a little chilly last time you were all down here together.
You go around gathering the others for a little meeting.

#enter: Victoria

Victoria comes out of her room, drying her wet hair with a towel.

#speaker: Victoria
"This is not what this weekend was supposed to be. I wanted to relax and heal my inner self."

#enter: Sadie
#enter: Sam

Sadie and Sam both walk into the living room.
Sadie is holding the book she was reading, while Sam carries her sketchbook.

#speaker: Sadie
"No kidding. We were supposed to have fun and relax. Heal our inner self not... whatever this is."

#speaker: Sam
"What did you expect? Someone died."

#speaker: Sam
"Everything’s gone to shit now."

*[Flirt with Victoria]
-> flirtV
*[Tease Sadie]
-> flirtSadie
*[Compliment Sam]
-> flirtSam

= flirtV
You turn to Victoria.

#speaker: Player
"I don’t know how you do it, but you always manage to keep it together, even now."

#speaker: Player
"I think that’s pretty impressive."

#speaker: Sam
"Of course she is. No one’s ever accused her of caring too much."

Victoria ignores her and saunters up to you.

#speaker: Victoria
"Aw thanks {player_name}. You always know what to say."
~ victoria_trust += 1

She leans her head on your shoulder jokingly, but puts her hand on your lower back.

You turn your head to look at her and your eyes meet for a second before you both look away.

#speaker: Sam
“Oh wait my bad, she does care.”

#speaker: Sam
“She cares about daddy’s money and being {player_name}’s favorite.”

Victoria glares at Sam.

-> biggerThings

= flirtSadie
You turn to Sadie and take a step closer to her.

#speaker: Player
"You don’t think we still can’t have any fun?"

Sadie looks at you with a shy smile.

#speaker: Sadie
"I suppose we can still make it a good weekend, can’t we?"

#speaker: Victoria
"Yeah, because nothing says ‘good weekend’ like dodging a murder investigation."

Victoria mumbles under her breath.

Sadie takes a step closer to you, her smile growing wider.

#speaker: Sadie
"I think anything will be fun as long as you do it with me."

#speaker: Player
“I think that can be arranged.”

You both smile at each other for a second before Victoria interrupts.

~ sadie_trust += 1

-> biggerThings

= flirtSam
#speaker: Player
"You always seem so collected. Even when everything’s falling apart. It’s kind of… impressive."

#speaker: Sam 
"So you think I’m impressive?"
~ sam_trust += 1

Sam teases and takes a step closer to you.

#speaker: Sadie
"Probably easy when you don’t feel anything in the first place."

#speaker: Sam
“Don’t listen to her. I can feel plenty of things.”

You roll your eyes while Sam laughs to herself.

#speaker: Player
“Don’t get a big head, I said KIND of impressive.”

#speaker: Sam
“I’ll keep that important distinction in mind.”

-> biggerThings



= biggerThings
#speaker: Victoria
"Whatever. We have bigger things to deal with."

~ current_track = ""

#speaker: Player
"I guess I’ll say it since we’re all thinking it…"

The others look at you expectantly.

#speaker: Player
"How…did she actually die?"

~ current_track = "mysterious_music"

#speaker: Victoria
"Head trauma."

#speaker: Sam
"So she hit her head??"

#speaker: Victoria
"Yes, Sam, that's what head trauma means."

#speaker: Sadie
"So it was a suicide then?"

#speaker: Sam
"Jumping to conclusions pretty quick there, huh Sadie?"

#speaker: Victoria
“She was probably just drunk off her ass and fell or something.”

#speaker: Victoria
“Unless she was just that much of an attention hog that she had to off herself for one last moment in the spotlight.”

*[Agree with Sadie]
-> sideSadie
*[Agree with Sam]
-> sideSam
*[Agree with Victoria]
->sideV

= sideSadie
#speaker: Sadie
"I think Sadie's onto something."

~ sadie_trust += 1

#speaker: Player
"We don’t really know, right? It’s possible she... did it herself."

#speaker: Victoria
"If that’s true, there had to be a reason."

#speaker: Sam
"What about the head wound, then?"

#speaker: Sam
“You think she just smashed her own head into a fucking tree or something??”

#speaker: Sadie
"Maybe it wasn’t a wound, but something else... I mean, you were in shock, V."

#speaker: Victoria
"I know what I saw. I’m telling the truth."

Everyone turns to look at her.

#speaker: Victoria
"Stop staring at me like I did something!"
-> questionV

= sideSam
#speaker: Player
"Why are you so quick to say it was suicide, Sadie?"

~ sam_trust += 1

#speaker: Sadie
"I just think it seems like the most likely explanation.”

#speaker: Sadie
"Isn’t it better to believe she wasn’t... murdered?"

#speaker: Victoria
"Nobody was saying she was murdered, jeez."

#speaker: Player
"Well, V did say something about a head wound."

#speaker: Sadie
"Right, and we believe her because...?"

#speaker: Victoria
"Jesus you guys, she was blacked out.”

#speaker: Victoria
“How hard is it to believe she tripped and fell?"

#speaker: Sam
"You’re getting awfully defensive here, Victoria. Nobody was accusing you of anything."

Everyone turns to look at Victoria.

#speaker: Victoria
“I’m just trying to be reasonable here!”

#speaker: Victoria
"You guys are just trying to make me look bad."
-> questionV

= sideV
#speaker: Player
"That makes sense, V. She probably just tripped and fell."

~ victoria_trust += 1

#speaker: Player
"Plus, she’s the one who saw the body."

#speaker: Player
"If she says it looked normal, then it probably is."

#speaker: Sadie
"Right, because she’s suddenly the expert on head wounds."

#speaker: Sam
"But it is kinda weird, though."

#speaker: Sam
"If she tripped and hit her head, there’d be something nearby that she hit it on. And there wasn’t."

Everyone turns to look at Victoria, who looks pissed.

#speaker: Victoria
"Well– I don’t know, maybe there was! Forgive me for not taking detailed note of the entire surroundings at that exact moment."

-> questionV

= questionV
*[Press Victoria]
-> pressV
*[Defend Victoria]
-> defendV
*[Challenge Sadie]
-> challengeSadie
*[Remain neutral]
-> everyoneSus

= pressV
#speaker: Player
"Why do you sound so defensive, V?"

#speaker: Victoria
"Because I know what you’re all thinking. And it’s bullshit."

#speaker: Sam
"You can understand why it looks bad, though."

#speaker: Sam
"I mean you’re the only one who’s seen her body."

~ victoria_trust -= 1
->everyoneSplit

= defendV
#speaker: Player
"We don’t have any proof."

#speaker: Player
"Just because it looks bad doesn’t mean it was her."

~ victoria_trust += 1
-> everyoneSplit


= challengeSadie
#speaker: Player
"And Sadie, why did you just automatically declare it a suicide?"

#speaker: Sadie
"Because we don’t know anything, and turning on each other isn’t going to help."

#speaker: Player
“But the easiest first conclusion is to assume it was an accident…”

#speaker: Sadie
"Ok sure, go ahead and make me look bad. Keep stirring the pot, it’s really helpful here."

~sadie_trust -= 1
-> everyoneSplit

= everyoneSus
#speaker: Player
"The truth is, we don’t know anything for sure."

#speaker: Player
"Or who to believe..."

-> everyoneSplit

= everyoneSplit
Everyone looks at each other in silence, all incredibly tense.

Victoria huffs and grabs her towel.

#speaker: Victoria
"I’m going to the sauna."

#speaker: Victoria
"I don’t care what you guys do."

#exit: Victoria

Sadie shrugs and heads towards the door, grabbing her water bottle.

#speaker: Sadie 
"I’ll be at the beach."

#speaker: Sadie
"Not that one... just...yeah whatever."

#exit: Sadie

Sadie huffs in frustration and heads out the door.

You and Sam look at each other for a moment.

She looks tired.

#speaker: Sam
"I need a walk."

#exit: Sam

->whatToDoNow


==whatToDoNow

~ current_track = "default_music"

What do you want to do now?

* {!(flags ? saunaWithVictoria) && peopleTalkedTo < 2} [Follow Victoria to the sauna]
    ~flags += saunaWithVictoria
    ~peopleTalkedTo+=1
    -> vSauna

* {!(flags ? beachWithSadie) && peopleTalkedTo < 2} [Follow Sadie to the beach]
    ~flags += beachWithSadie
    ~peopleTalkedTo+=1
    -> sadieBeach

* {!(flags ? walkWithSam) && peopleTalkedTo < 2} [Follow Sam on her walk]
    ~flags += walkWithSam
    ~peopleTalkedTo+=1
    -> samWalk

* {!(flags ? unpacked)} [Unpack at the house]
    ~flags += unpacked
    -> unpack

* {(flags ? unpacked) && peopleTalkedTo > 0} [It’s late, time for bed]
    -> bedtime

