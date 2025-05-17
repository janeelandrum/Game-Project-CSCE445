== vSauna ==
~current_background = "sauna"
~current_track = "emotional_music"

You make your way to the sauna, joining Victoria in the water.

#enter: Victoria

#speaker: Victoria
"I needed this."

#speaker: Victoria
"This whole weekend has been... a disaster."

#speaker: Player
"You know, the sauna suits you." 

#speaker: Player
"All relaxed, glowing... It’s a good look."

#speaker: Victoria
"Careful, {player_name}, if you keep talking like that, I might start to think you actually like me."

#speaker: Player
"And what if I do?"

#speaker: Victoria
"Then I’d say you have good taste."

#speaker: Player
"You’d fit right in at one of those high-end luxury spas."

#speaker: Player
"The kind where people just lounge around looking effortlessly gorgeous."

#speaker: Victoria
"Effortlessly? Please, looking this good takes work."

#speaker: Victoria
"But I appreciate the sentiment."

#speaker: Player
"Oh, so you admit it?"

#speaker: Player
"You do work hard to impress me."

#speaker: Victoria
"I don’t need to work hard to impress you."

#speaker: Player
"You might be right about that..."

#speaker: Player
"But seriously, are you okay? I mean, really okay?"

#speaker: Victoria
"I don’t know."

#speaker: Victoria
"I want to be, but... this whole thing is just so messed up."

#speaker: Victoria
"I keep thinking about Ali. She... she had this way of making everything about her."

Victoria lets out a small laugh.

#speaker: Victoria
"Even from the grave."

#speaker: Player
"That’s kind of harsh."

#speaker: Player
"She’s dead, V."

#speaker: Victoria
"Yeah, and now we all have to sit around and unravel this mess she left behind."

#speaker: Victoria
"I’m just saying what no one else will."

#speaker: Victoria
"I mean, she always had to be the center of attention, didn’t she?"

#speaker: Victoria
"You couldn’t just talk to her about anything without it somehow turning into her crisis."

#speaker: Victoria
"It’s not like I’m glad she’s gone, but..."

#speaker: Victoria
"It’s kind of a relief that maybe, just maybe, I won’t have to put up with her constantly trying to control everything."

You and Victoria sit in silence for a few minutes.

{flags ? victoriaBaseballBat:
    You remember the baseball bat in Victoria's room.
    
    #speaker: Player
    "So..."
    
    #speaker: Player
    "What’s with the bat in your room?"
    
    Victoria's cheeks turn red.
    
    #speaker: Victoria
    "It’s just..."
    
    #speaker: Victoria
    "It’s nothing. Why do you care?"
    
    *{victoria_trust > 2} [Push Victoria for an answer.]
        #speaker: Player
        "You can talk to me, V." 
        
        #speaker: Player
        "You know, I wouldn’t judge you"
        
        #speaker: Victoria
        "It’s not even mine, it’s my dad’s."
        
        #speaker: Player
        "So why was it under your bed?"
        
        #speaker: Victoria
        "I don’t know I guess he just left it there last time he was here."
        
        #speaker: Victoria
        "Can we just drop it already?"
        -> nextSauna

    * [Drop it.]
        #speaker: Player
        "No reason."
        
        #speaker: Player
        "But you can always talk to me, V. You know I wouldn’t judge you."
        ->nextSauna


- else:
    -> nextSauna
}


= nextSauna

{flags ? sleepVictoria:
    #speaker: Player
    "Hey, I found a note in your room from Ali. What’s that about?"
    
    #speaker: Victoria
    "I don’t know what you’re talking about."
    
    #speaker: Victoria
    "What note?"
    
    #speaker: Player
    "It was a note with her handwriting. Looked like something she’d left for you."
    
    #speaker: Victoria
    "There’s no note."
    
    #speaker: Victoria
    "And why the hell are you going through my stuff?"
    
    #speaker: Player
    "I found it by accident."
    
    #speaker: Player
    "It seemed important."
    
    #speaker: Victoria
    "I don’t need to explain my room to you. Whatever you thought you saw, it’s not what you think."
    
    #speaker: Player
    "It was a note, Victoria. From Ali."
    
    #speaker: Player
    "Maybe it’s better if we talk about it."
    
    #speaker: Victoria
    "I said there’s nothing to talk about."
    
    #speaker: Victoria
    "Can we just change the subject?"
    
    * {victoria_trust > 2} [Keep pressing.]
        #speaker: Player
        "Look, I’m just trying to understand what’s going on."
        
        #speaker: Player
        "We’re in this together, right?"
        
        #speaker: Victoria
        "Fine. Ali... she found out about my family."
        
        #speaker: Victoria
        "My family’s money—"
        
        #speaker: Victoria
        "It’s... it’s not clean."
        
        #speaker: Victoria
        "And Ali was threatening to expose me."
        ~flags += vicDirtyMoney
        
        #speaker: Player
        "That’s...why would she do that?"
        
        #speaker: Victoria
        "She had this way of holding things over your head."
        
        #speaker: Victoria
        "She thought she could control people."
        
        #speaker: Victoria
        "It’s why we never got along."
        
        #speaker: Victoria
        "This just shows you never know what people are really like..."
        
        #speaker: Victoria
        "So you shouldn’t trust the others... They could be dangerous."

      She gives you a meaningful look and you nod in response.

        ->saunaSleep

    * {victoria_trust <= 2} [<Locked>]
        ->DONE

    * [Stay silent about the note.]
        #speaker: Victoria
        "Look, you never know what people are really like."
        
        #speaker: Victoria
        "Don’t trust the others too much, {player_name}. They could be dangerous."
        
        **[Agree.]
            #speaker: Player
            "Yeah, I'm starting to see that..."
            ->saunaSleep
            
        **[Defend the others.]
            #speaker: Player
            "I don’t know, V... maybe everyone is just scared."
            ->saunaSleep

- else:
    -> saunaSleep
}

= saunaSleep
{flags ? sleepVictoria: 
    #speaker: Victoria
    "At least you’re staying in my room."
    
    #speaker: Victoria
    "I’d rather not deal with all this alone."
}

{not(flags ? sleepVictoria) and not(flags ? sleepSam) and not(flags ? sleepSadie):
    #speaker: Victoria
    "Anyways... come sleep in my room tonight."
    
    #speaker: Victoria
    "At least we won’t be alone that way."
    
    #speaker: Player
    "I’ll think about it."
}

#speaker: Player
“Wow it got hot in here.”

#speaker: Player
“I’m gonna get out before I become a full on raisin. See ya inside, V.”

#exit: Victoria
~current_background = "living_room_day"

-> whatToDoNow
