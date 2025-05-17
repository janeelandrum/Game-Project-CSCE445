== sadieBeach ==
~current_background = "beach_day"
~current_track = "emotional_music"

You head to the beach and find Sadie already walking along the shore.

#enter: Sadie

#speaker: Player
"Hey Sadie... Are you okay?"

#speaker: Player
"I know everything is, well, a lot right now."

#speaker: Sadie
"Yeah. Well, I guess I’ve been thinking a lot about Ali, actually."

Sadie gets a familiar wistful look in her eye.

#speaker: Sadie
"She was always so... perfect."

#speaker: Sadie
"Like, she was the kind of person you couldn’t help but admire, you know."

#speaker: Player
"Yeah, I know you two were close."

#speaker: Sadie
"Close? Oh, no. I mean, no one could be that close to her."

#speaker: Sadie
"But, you know, I always tried to be around her.”

#speaker: Sadie
“She had this way of making everyone feel important, like you could be anything when you were with her."

#speaker: Sadie
"She was everything. I just wanted to be a part of it all. To be around her..."

#speaker: Sadie
"Like, I’d watch her talk, and I’d think, 'Wow, she has all the answers.' She was so... smart, and everyone liked her so much."

#speaker: Sadie
"I wanted to be like her, y’know? And the way she could just... command attention, like everyone was just drawn to her, no matter what."

#speaker: Sadie
"I used to think, if I just spent enough time with her, maybe I could—"

#speaker: Sadie
"Sorry. I’m rambling."

#speaker: Player
"No I get it. Ali had that effect on a lot of people..."

Sadie looks like she's getting nervous and starts to fidget.

This is not the first time you’ve seen her do this.

#speaker: Player
"You look like you’re about to burst with something."

#speaker: Sadie
"No, no I’m good..."

#speaker: Sadie
"Just stressed I guess."

#speaker: Player
"Are you sure? You know you can always talk to me right."

#speaker: Player
"I wont judge."

{sadie_trust > 2:
    #speaker: Sadie
    "Yeah I know. I guess... I feel like I’m just not enough. You know?"
    
    #speaker: Sadie
    "I try so hard to be seen, to be noticed, but no one ever looks at me the way they looked at Ali."
    
    #speaker: Sadie
    "Maybe if I had more... stuff, people would notice me."
    
    #speaker: Sadie
    "Maybe if I was just like her... maybe then I’d feel like I mattered."
    
    #speaker: Player
    "You know that’s not true Sadie. We love you for you."
}
{sadie_trust <= 2:
    #speaker: Sadie
    "No, I’m fine really!"
    
    #speaker: Sadie
    "Don’t worry about me."
}

{flags ? notConfrontSadie:
    *[Confront Sadie about trinkets]
        #speaker: Player
        "Well, about the stuff in your room..."
        
        #speaker: Sadie
        "What stuff??"
        
        #speaker: Player
        "You know the box you have of small trinkets..."
        
        #speaker: Player
        "Not all of those are yours right?"
        
        #speaker: Sadie
        "Oh, that? It’s just little things."
        
        #speaker: Sadie
        "For fun."
        
        #speaker: Sadie
        "Sentimental, you know?"
        
        #speaker: Player
        "Sentimental??"
        
        #speaker: Sadie
        "Yeah, I mean, people leave stuff around, and I just..."
        
        #speaker: Sadie
        "Thought I should hold onto them, just in case, you know?"
        
        #speaker: Player
        "I get that I guess."
        
        {sadie_trust > victoria_trust && sadie_trust > sam_trust:
            Sadie pulls out Ali's necklace from under her sweater.
            
            #speaker: Sadie
            "This is Ali’s necklace too."
            
            #speaker: Sadie
            "I thought this was a good way to remember her... and that she’s always with me even if she’s gone."
            
            #speaker: Player
            "Wait Sadie, isn’t taking that a crime?"
            
            #speaker: Player
            "It was on her corpse..."
            
            #speaker: Sadie
            "Thought we weren’t being judgemental!"
            
            #speaker: Player
            "I’m not judging you —"
            
            #speaker: Sadie
            "And I know Ali would want it with someone who will appreciate it."
            
            #speaker: Player
            "...Yeah I guess..."
        }
        -> beachContinue

    
    *[Don't confront Sadie.]
    -> beachContinue


- else:
    ->beachContinue
}

= beachContinue
You and Sadie walk in silence for a bit.

#speaker: Sadie
"So do you really think it might be Victoria?"

#speaker: Player
"I don’t know, Sadie..."

#speaker: Player
"Do you?"

#speaker: Sadie
"I don’t know what to think."

#speaker: Player
"So how did you two end up as friends anyway? You seem so different."

#speaker: Sadie
"Yeah, we’re not exactly the same. But she’s just... she’s so confident."

#speaker: Sadie
"She knows how to make everyone listen, and that’s something I never had”

#speaker: Sadie
“I guess I wanted to be around that."

#speaker: Sadie
"And as for her... I think she just likes that she can walk all over me."

#speaker: Sadie
"I’m easy to control. I don’t stand up for myself. She knows I’ll just do whatever she says, and... I guess that works for her."

#speaker: Player
"So things have been rocky between y'all then, huh?"

#speaker: Sadie
"I guess."

{flags ? sleepSadie: 
    #speaker: Sadie
    "At least I won't be alone tonight."
    
    #speaker: Sadie
    "I’m glad we’ll have each other."
}

{not(flags ? sleepVictoria) and not(flags ? sleepSam) and not(flags ? sleepSadie):
    #speaker: Sadie
    "I just hate being alone."
    
    #speaker: Sadie
    "If you wanted to, you could sleep in my room tonight. It’s no big deal, I mean, only if you want to."
}

#speaker: Player
“I’m heading back to the house now."

#speaker: Player
“Enjoy the beach, Sadie!”

#exit: Sadie
~current_background = "front_of_house_day"

-> whatToDoNow

