== findSadie ==

#exit: Sadie
#exit: Victoria
#exit: Sam

You head to Sadie's room to see what she's up to.

~current_background = "sadie_room"

Sadie isn't anywhere in her room.

Do you want to just look around or snoop through her room?
* [Just look around.]
-> lookAround
* [Snoop!]
-> snoop

= lookAround
~ flags += lookAroundSadieRoom

You notice a worn band jacket draped across Sadie's bed.
Wandering over to the mirror, you see a small photo is tucked into the mirror frame.

-> doneBedroom

= snoop
~ flags += snoopSadieRoom

You start going through Sadie’s nightstand.
You find a small, tin box hidden beneath a stack of notebooks. 
Opening it reveals an odd collection of trinkets—rings, a bracelet, a lipstick tube, scraps of paper, and other various items. 
Several of these items clearly belonged to Ali, but you think the rest belong to other people in the house.

#thought start
Is this a used make up wipe??
And is this one of Ali’s hair bands?
What is Sadie doing with all this stuff?
#thought end

Something about this really rubs you the wrong way.

->doneBedroom


= doneBedroom
Nothing else of interest stands out to you, so you decide to try to find Sadie.

~current_background = "backyard"

Looking around the house for a bit, you finally find Sadie sitting by the fire pit in the backyard.

#enter: Sadie

#speaker: Player
"Hey there you are, I looked in your room but you weren't there... so I came out here.”

#speaker: Player
“Are you okay?"

#speaker: Sadie
"Oh hey. Yeah. Just needed some air."

* {flags ? lookAroundSadieRoom} [Mention the photo on the mirror.]
    ->photoSadie
* {flags ? lookAroundSadieRoom} [Mention the band jacket on her bed.]
    ->bandJacketSadie
* {!(flags ? lookAroundSadieRoom)} [<Locked>]
    ->DONE
* {!(flags ? lookAroundSadieRoom)} [<Locked>]
    ->DONE
* [Say nothing.]
    ->nothingSadie


=photoSadie
#speaker: Player
"I saw that photo in your room. The one on the mirror. Who’s in it with you?"

#speaker: Sadie
"Oh. That’s me and my sister. We were close when we were kids, before... you know. Life happened."

#speaker: Player
"Oh I knew you had a sister but... you don’t talk about her much."

#speaker: Sadie
"Yeah, well... not everyone sticks around."
-> confrontAboutStolenThings

=bandJacketSadie
#speaker: Player
"I saw the band jacket on your bed when I was looking for you."

#speaker: Player
"You were in the school band?"

#speaker: Sadie
"Yeah. Played clarinet. Dorky, huh?"

#speaker: Player
"Not at all! I bet you were great."

#speaker: Sadie
"Eh, I was okay. It was just nice to be part of something. Like, a group where I actually belonged…

She trails off. You both sit in silence for a minute, but for a second you catch her staring at you.

She looks away embarrassed.

-> confrontAboutStolenThings

=nothingSadie
-> confrontAboutStolenThings



=confrontAboutStolenThings

{flags ? snoopSadieRoom: Do you confront Sadie about the stolen items in her room? | There's a pause...} 
* {flags ? snoopSadieRoom} [Confront Sadie.]
    -> confrontSadie
* {!(flags ? snoopSadieRoom)} [<Locked>]
    -> DONE
* [Don't say anything.]
    -> notConfrontSadieStitch


= confrontSadie
#speaker: Player
"Sadie... I found something in your room. A box with... stuff."

You notice Sadie stiffen beside you.

#speaker: Sadie
"Stuff?"

#speaker: Player
"Some of Ali’s things. Some of ours."

Sadie laughs nervously.

#speaker: Sadie
"Oh, that? It’s just little things."

#speaker: Sadie
"For fun. Sentimental, you know?"

#speaker: Player
"Sentimental?"

#speaker: Sadie
"Yeah. Just... reminders when I miss yall."

#speaker: Sadie
"I don’t mean anything by it. It’s not like I sell them or anything."

How do you want to respond?
*[React positively]
    -> positiveSadie
*[React neutrally]
    -> neutralSadie
*[React negatively]
    -> negativeSadie

= positiveSadie

#speaker: Player
"I guess I get that."

You laugh and lightly push her shoulder.

#speaker: Player
“Maybe just ask next time.”

#speaker: Sadie
"Yeah, okay you’re right."

#speaker: Sadie
"Thanks for not being weird about it."

~sadie_trust += 1
-> continueConversation

= neutralSadie

#speaker: Player
"That’s kinda...I don’t know"

#speaker: Sadie
"Yeah, I know. I know."

#speaker: Sadie
"I just sometimes feel like physical things help remind me of people I care about."

#speaker: Player
“I mean I guess so.”

#speaker: Player
“But you just take things without asking?”

#speaker: Sadie
“I know, I should ask, I’m sorry.”

#speaker: Player
“It’s all good.”

-> continueConversation

= negativeSadie

#speaker: Player
"Uhh, what the heck, Sadie?? That's so creepy."

#speaker: Sadie
"I just..."

#speaker: Player
“How much of our stuff have you just taken without us knowing?”

Sadie looks at her feet.

#speaker: Sadie
"You wouldn't get it..."

~sadie_trust -= 1
-> continueConversation

= notConfrontSadieStitch
{flags ? snoopSadieRoom: You decide not to confront Sadie about the stolen items you saw.}
{flags ? snoopSadieRoom: It’s definitely weird, but maybe it’s better not to know…}
{flags ? lookAroundSadieRoom: After several moments of silence...}
~flags += notConfrontSadie
-> continueConversation


= continueConversation
Sadie sighs, looking even more crestfallen.

#speaker: Player
"What about… everything else? How are you holding up?"

#speaker: Sadie
"Honestly? I feel like I can’t breathe. Like, none of this is real. But it is. And now we just have to... live with it."

#speaker: Player
"Yeah."

#speaker: Sadie
"But at least I’m not alone in it. Right?"

#speaker: Player
"Of course not. I’m always here for you."
~sadie_trust += 1

-> lookForTheOthers

