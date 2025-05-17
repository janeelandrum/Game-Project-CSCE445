#clues unlocked  // for allowing toggling the notebook paper

VAR askedAliNote = true
VAR askedBaseballBat = true
VAR askedSamText = true
VAR askedSamSketchbook = true

== clues ==

#thought start
“I’m too anxious to sleep. I need to get my head straight...”
"The sun is coming up anyway."
#thought end

You get up groggily and head to the living room.

~current_background = "living_room_day"

You scribble down everything you can think of that you've seen so far.

#clues start

Victoria:
{flags ? victoriaBaseballBat:
    Had a baseball bat.
    ~ askedBaseballBat = false 
}
{flags ? vicMovedBat:
    Moved it after I saw it.
    ~ askedBaseballBat = false 
}
History of bullying. 
Defensive when Ali was mentioned.

{flags ? vicNoteFromAli:
    Ali left a note threatening to expose her family’s money.
    ~ askedAliNote = false
}

#new person

Sadie:
{flags ? snoopSadieRoom:
    Has stolen items.
}
{flags ? sadieSelfConscious:
    Acting weird...almost obsessive.
}
{flags ? sadiePhotos:
    Phone full of photos of Ali. Way too many.
}
{not((flags ? snoopSadieRoom) or (flags ? sadieSelfConscious) or (flags ? sadiePhotos)):
    Nothing really...
}

#new person

Sam:
Ali’s step-sister.
Clearly jealous/resentful of Ali.

{flags ? samPhone:
    Texts show her family hates her.
    ~ askedSamText = false
}

{flags ? samSnoopSketch:
    Sketchbook had disturbing drawings.
    ~ askedSamSketchbook = false
}
History of violence at school.

#clues end

You look at the sheet you've been scribbling on by pressing C...

#thought start
I can toggle that page by pressing C whenever I want...
Wait what-
Why did I just think that...
#thought end

You simply look at the sheet of paper like a normal person.

You realize you've been so focused on your task that you didn't even notice Sadie walk into the room.

~ current_track = "default_music"

#enter: Sadie

#speaker: Sadie
“Heyy..."

#speaker: Player
"Oh hey, whatcha doing?”

#speaker: Sadie
“Nothing, just wanted to clear my head."

#speaker: Player
"How come?”

Sadie sits down on the couch hesitantly. She takes a deep breath.

You notice a large open bag that she's holding protectively in her lap.

#speaker: Sadie
“Okay well—"

#speaker: Sadie
"So... Um... It’s just—"

#speaker: Sadie
"God, I don’t know how to say it.”

#speaker: Player
“Yeah?”

#speaker: Sadie
“It’s just...before all this happened—"

#speaker: Sadie
"She... I mean, I—”

#enter: Victoria

#speaker: Victoria
“Oh wow, look who we have here."

#speaker: Victoria
"Sadie trying to have a private moment with you?"

#speaker: Victoria
"Adorable.”

#enter: Sam

Victoria starts making breakfast in the kitchen, and Sam enters from her room.
Sam comes over to the couch and sits near you.

{samWalk:
    #speaker: Sam
    “...Hey!"
    
    #speaker: Sam
    "Glad I have someone to talk to now."
    
    #speaker: Sam
    "Thanks for that.”
}
{not samWalk:
    #speaker: Sam
    “Morning, {player_name}."
    
    #speaker: Sam
    "We don’t really hang out much, huh?"
    
    #speaker: Sam
    "Maybe we should change that.”
}

You hear plates crash from the kitchen area.

#speaker: Victoria
“OW fuck!!”

Sadie jumps up to go help.

#speaker: Victoria
"Ugh are you fucking kidding me."

You turn your head and there's at least two plates worth of shattered ceramic littering the floor around Victoria's feet.

#speaker: Sadie
“Oh my God, are you okay, V? Here let me help!”

As she jumps up, the bag she was holding falls, and everything inside spills out.

~ current_track = "mysterious_music"

#thought start
What the...
#thought end

Clothes, hairbrush, personal items that all belonged to Ali.

Even some photos of Ali printed out, you recognize a few from her Instagram, but all these others...

#speaker: Sam
“Woah... what the hell is all this?”

#speaker: Sadie
“I—I—it’s not—"

#speaker: Sadie
"I can explain—”

#speaker: Player
“Is this what you were gonna talk to me about?”

#speaker: Sadie
“No! No, no, no—"

#speaker: Sadie
"It’s not that—!”

#speaker: Sam
“What were you talking about, then?”

#speaker: Sadie
“It’s nothing—"

#speaker: Sadie
"I swear—”

#speaker: Sam
“No, I wanna know why the fuck you have all of Ali’s shit?"

#speaker: Sam
"And what’s with these photos? Are you some kind of stalker??”

#speaker: Victoria
“You didn’t know?"

#speaker: Victoria
"Sadie’s like, obsessed with Ali."

#speaker: Victoria
"It’s actually so funny.”

#speaker: Sadie
“I don’t know what you’re talking about.”

#speaker: Victoria
"Oh so you didn’t follow her around all the time and memorize her schedule?"

#speaker: Victoria
"And you didn't take these creepy photos?"

#speaker: Victoria
"And I guess that also means you didn't confess your love to her like a week before we came here?"

#speaker: Victoria
"What? You didn’t think she would tell me?”

Sadie looks to you for help.

* [Say nothing.]
    Victoria continues.
    -> sadieChoice
* ["What's she talking about, Sadie?"]
    #speaker: Sadie
    "Well I- I was going to tell you-"
    Victoria cuts her off.
    -> sadieChoice
* {sadie_trust > 3} ["Hey. Let’s not do this."]
    ~ sadie_trust += 1
    -> sadieChoice
* {sadie_trust <= 3} [<Locked>]
    ->DONE


= sadieChoice
#speaker: Victoria
“Yeah Ali told me everything."

#speaker: Victoria
"How you confessed you’ve been in love with her for years, as if she didn’t already know."

#speaker: Victoria
"You think she didn’t see you following her around? God, you’re such a creep."

#speaker: Victoria
"Maybe you’re the one who killed her, because she rejected you so bad!"

#speaker: Sadie
“Hey, I didn’t kill her!"

#speaker: Sadie
"You’re the one who got into a screaming match with her RIGHT before she died!!”

#speaker: Victoria
“Oh, please, you think I killed her?"

#speaker: Victoria
"Why would I even bother, she’s so beneath me anyway.”

#speaker: Sam
“Bullshit. You’ve always been jealous of her. Everyone saw it.”

#speaker: Victoria
“YOU’RE one to talk, Sam."

#speaker: Victoria
"We all know your family fucking hates you and ADORES Ali. You’re probably happy she died."

#speaker: Victoria
"In fact, maybe YOU killed her.”

#speaker: Sam
“Oh wow, accusing everyone in the room. Smooth move, V."

#speaker: Sam
"It really seems like you’re trying desperately to take the spotlight off of yourself."

#speaker: Sam
"We all know you hated Ali"

#speaker: Sam
"And now that she’s gone you have no one to make you feel like the worthless piece of shit that you are.

#speaker: Sam
"Guess I have to step up and take over.”

#speaker: Victoria
“You fucking bitch, no wonder your family hates you."

#thought start
“This is getting out of hand...”
#thought end
->choiceHubClues

= choiceHubClues
* {askedAliNote == false} [Press V about Ali's note]
    ~ askedAliNote = true
    
    #speaker: Player
    “What about the note Ali wrote you, Victoria?”
    
    #speaker: Victoria
    “What note?”
    
    #speaker: Player
    “The one I found in your room."
    
    #speaker: Player
    "Ali said she’d expose your family’s dirty money if you messed with her.”
    
    #speaker: Sadie
    “You never told me about that...”
    
    #speaker: Victoria
    “Wow. Going through my stuff now?”
    
    #speaker: Sam
    “Sounds like Ali had something real on you.”
    
    #speaker: Victoria
    “It was a joke. Just Ali being dramatic."
    
    #speaker: Victoria
    "She didn’t have anything on me."
    
    #speaker: Victoria
    "She wanted to scare me because she was scared herself.”
    
    #speaker: Player
    “It sounded serious.”
    
    #speaker: Victoria
    "Well I guess we’ll never know.”
    
    ~ victoria_trust -= 1
    
    -> choiceHubClues

* {askedBaseballBat == false} [Press V about baseball bat]
    ~ askedBaseballBat = true
    
    #speaker: Player
    “What about the baseball bat?”
    
    #speaker: Victoria
    “It’s just a bat.”
    
    #speaker: Player
    “You were acting weird about it.”
    
    #speaker: Victoria
    “It’s my dad's, okay?!"
    
    #speaker: Victoria
    "You all seriously think I beat her to death with a bat?!"
    
    #speaker: Victoria
    "You’re insane.”
    
    ~ victoria_trust -= 1

    -> choiceHubClues
    
* {askedSamText == false} [Press Sam about family's texts]
    ~ askedSamText = true
    
    #speaker: Player
    "What about those texts from your family, Sam?"
    
    #speaker: Sam
    “What about them?”
    
    #speaker: Player
    “They hate you. They adored Ali."
    
    #speaker: Player
    "That kind of resentment... that’s motive.”
    
    #speaker: Victoria
    “Ohhh, now we’re talking.”
    
    #speaker: Sam
    “I don’t kill people for approval. I survive without it.”
    
    #speaker: Sadie
    “But... you did say she ruined your life.”
    
    #speaker: Sam
    “She didn’t ruin my life. She just..."
    
    #speaker: Sam
    "She got all the love I didn’t. That’s not a crime.”
    
    #speaker Player
    “But it made you angry."
    
    #speaker: Player
    "Angry enough to—”
    
    #speaker: Sam
    “You think I killed my own sister just because I was hurt?"
    
    #speaker: Sam
    "That’s low. Even for you.”
    
    #speaker: Sam
    “I thought we were starting to understand each other."
    
    #speaker: Sam
    "Guess not.”
    
    ~ sam_trust -= 1
    
    -> choiceHubClues

* {askedSamSketchbook == false} [Press Sam about sketchbook]
    ~ askedSamSketchbook = true
    
    #speaker: Player
    "What about the sketchbook, Sam?"
    
    #speaker: Sam
    “What about it?”
    
    #speaker: Player
    “Some of the drawings were... disturbing.”
    
    #speaker: Victoria
    “Wait, what kind of freak show are you hiding in that thing?”
    
    #speaker: Sam
    “None of your business.”
    
    #speaker: Sam
    “IT’S JUST ART."
    
    #speaker: Sam
    "It’s how I cope.”
    
    #speaker: Sam
    "Don’t act like you care about mental health and then throw my art in my face.”
    
    ~ sam_trust -= 1

    -> choiceHubClues

* [Diffuse the situation]
    #speaker: Player
    "Ok alright, let's just stop trying to accuse each other."
    
    #speaker: Victoria
    “Oh, really? Who do you think is more right then, huh?”
    
    ** [Agree with Sam]
        #speaker: Player
        "I don't know.. I really think Sam's onto something."
        ~ sam_trust += 1
        ~ victoria_trust -= 1
        
        #speaker: Victoria
        "You know what?!? Whatever."
        
        -> cluesContinue
        
    ** [Agree with Victoria]
        #speaker: Player
        "Victoria obviously is correct."
        
        ~ sam_trust -= 1
        ~ victoria_trust += 1
        
        Sam rolls her eyes.
        
        #speaker: Sam
        "Of-fucking-course she is."
        
        -> cluesContinue


= cluesContinue
#speaker: Sadie
“Guys, can we please just stop screaming at each other.”

#speaker: Victoria
“This is fucking ridiculous.” 

Victoria storms off.
#exit: Victoria

#speaker: Sam
“Yeah. Whatever.”
#exit: Sam

You and Sadie are left alone, still standing in the living room.

* [Say nothing.]
    -> cluesEnd

* ["What was all that stuff, Sadie?"]
    #speaker Sadie
    “I know it looks bad, but it’s not—"
    
    #speaker: Sadie
    "It’s not what it looks like, I swear—"
    
    #speaker: Sadie
    "I—I need to go.”
    -> cluesEnd

* ["Hey. We’re going home tomorrow. Let’s just get through this."]
    #speaker: Sadie
    “Yeah... okay.”
    -> cluesEnd

= cluesEnd
Sadie goes upstairs and you are left in the living room.
#exit: Sadie

-> finalAfternoon
