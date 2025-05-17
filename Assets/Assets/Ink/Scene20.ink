== samWalk  == 

~current_background = "forest_day"
~current_track = "emotional_music"

You head off in the direction Sam went and eventually catch up to her along the path.

#enter: Sam

#speaker: Player
“So, are you normally the type to take a stroll in the woods or should I be concerned?”

#speaker: Sam
“Why? Are you scared?”

#speaker: Player
“Should I be?”

Sam smiles.

#speaker: Sam
“... not knowing is the fun part.” 

#speaker: Player
“I saw you had a book earlier. What were you reading?”

#speaker: Sam
"Oh. Just some old horror novel."

#speaker: Sam
"You know, people losing their minds, getting swallowed up by their own fears. That kind of thing."

#speaker: Player
"Sounds... uplifting."

#speaker: Sam
"At least it’s honest."

#speaker: Sam
"People don’t really change. They just get better at hiding things."

#speaker: Player
“What makes you say that?”

#speaker: Sam
“Oh, please, no one is better at hiding shit than my family."

#speaker: Sam
"One thing they never had trouble hiding was how much they adored Ali and hated me."

{flags ? askedAboutAli:
    #speaker: Player
    “Did that ever make you... resent her?”
    
    // high trust with Sam
    {sam_trust >= 3:
        #speaker: Sam
        "I used to wish she’d just disappear."
        
        #speaker: Sam
        "So many times."
        
        #speaker: Sam
        "But I never thought that I would.. .I-I mean, that she would be dead."
    }
    
    // low trust with Sam
    {sam_trust < 3:
        #speaker: Sam
        "Of course not. What kind of question is that?"
        
        #speaker: Sam
        "My family just sucks, and at the end of the day, she was still my sister."
    }
    
- else:
    #speaker: Player
    “I didn’t realize it was that bad.”
    
    #speaker: Sam
    “Why would you? I spent my whole life trying to get people to notice me, to matter even a little."
    
    #speaker: Sam
    "But she always sucked up all the air in the room, like there wasn’t space for anyone else. No one ever saw me when she was around."
    
    #speaker: Sam
    "And if they did, it was just to compare me to her."
    
    #speaker: Sam
    "Ali was untouchable, and I was just... there."
    
    #speaker: Sam
    "A joke. A footnote in her story.”
    
    #speaker: Player
    “Thats not true–”
    
    #speaker: Sam
    “Yes it is. She always ruined everything and I let her. I gave her that power over me.”
}

#speaker: Player
“I get that. But you’re not alone anymore."

#speaker: Player
"I notice you, and I’m here for you.”

{flags ? sleepSam:
    {flags ? samSketchBook:
    	#speaker: Player
    	"You like to draw, right? I saw some of your work."
    	
    	#speaker: Sam
    	"Oh. You saw that?"
    	
    	#speaker: Sam
    	"How much did you look at?"
    	
    	{sam_trust >= 3:
    	    #speaker: Player
    	    “I flipped through a couple pages. It looked good but..."
    	    
    	    #speaker: Player
    	    "Thats some pretty dark stuff.”
    	    
    	    #speaker: Player
    	    "You can be honest with me. If there’s something you want to talk about..."
    	    
    	    #speaker: Sam
    	    "It’s not just drawings. It’s everything I can’t say out loud."
    	    
    	    #speaker: Sam
    	    "Everything I lived through."
    	    
    	    #speaker: Player
    	    “Have you thought about talking to someone about it, maybe a professional?”
    	    
    	    #speaker: Sam
    	    “Yeah, I’m just not there yet."
    	    
    	    #speaker: Sam
    	    "I want to process everything myself first. The emotional manipulation and trauma... I’m not ready to face it all.”
    	    
    	    #speaker: Player
    	    “Yeah, I can understand”
    	    
    	- else:
    	    #speaker: Sam
    	    "It’s just edgy art, okay?"
    	    
    	    #speaker: Sam
    	    "Everyone has a phase, and it’s all about interpretation. Don’t overthink it."
    	    
    	    #speaker: Player
    	    “Oh, okay...”
    	}
    
    - else:
        #speaker: Player
    	“Just the first few pages, then I came out here to find you.”
    	
    	#speaker: Sam
    	“Oh... good."
    	
    	#speaker: Sam
    	"I mean, I don’t love sharing my work, it feels too personal."
    	
    	#speaker: Sam
    	"Everything in there… it’s the deepest parts of me.”
    	
    	#speaker: Player
    	“I can respect that.”
    }
}

{not(flags ? sleepSam) and not(flags ? samSketchBook):
    #speaker: Player
    "What do you like to do for fun?"
    
    #speaker: Sam
    "I draw sometimes. Helps me clear my head."
    
    #speaker: Player
    "Can I see some of your work?"
    
    #speaker: Sam
    "Maybe. If you don’t run screaming first."
    
    #speaker: Player
    "I doubt that. I used to doodle a lot as a kid, but I never stuck with it."
    
    #speaker: Sam
    "Yeah? What kind of stuff did you draw?"
    
    #speaker: Player
    "Oh, you know, embarrassing little comics. Superhero knockoffs, probably."
    
    #speaker: Sam
    "Sounds like a masterpiece."
    
    #speaker: Sam
    "I’d pay to see that."
    
    #speaker: Player
    "Not a chance."
    
    #speaker: Player
    "But, I mean, I get why drawing helps."
    
    #speaker: Player
    "It’s like having a way to put your thoughts somewhere outside of your own head."
    
    #speaker: Sam
    "Exactly. It’s like... translating feelings into something tangible."
    
    #speaker: Sam
    "Sometimes, it’s the only way to make sense of things."
    
    #speaker: Player
    "That’s really cool."
    
    #speaker: Player
    "Do you ever want to do something more with it? Like, art school or—"
    
    #speaker: Sam
    "I don’t know."
    
    #speaker: Sam
    "Maybe."
    
    #speaker: Sam
    "That’s kind of a dream, though."
}

{flags ? sleepSam:
    #speaker: Sam
    "So you’re crashing in my room, huh?"
    
    #speaker: Sam
    "You better not snore."
    
    #speaker: Player
    "I wouldn't dare."
    
    You both laugh.
}

{not(flags ? sleepVictoria) and not(flags ? sleepSam) and not(flags ? sleepSadie):
    #speaker: Sam
    "You know, if you haven’t picked a room yet, mine’s not the worst option."
    
    You give Sam a sly smile.
    
    #speaker: Player
    "I'll think about it."
}

#speaker: Player
“Alright, I think I've had enough nature for one day.”

#speaker: Player
“I’m heading back inside.”

#speaker: Sam
"See ya."

#exit: Sam
~current_background = "living_room_day"

-> whatToDoNow


