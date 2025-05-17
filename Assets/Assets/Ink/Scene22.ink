== sleepWVic ==
~flags += sleepVictoria

~current_background = "victoria_room"

You carry all your stuff up to Victoria's room.

You start to unpack your things, taking in Victoria's well-furnished room.

As you are sitting on the floor and going through your suitcase, you look around her room.

{flags ? victoriaBaseballBat:
    You notice the baseball bat under Victoria's bed isn't there anymore.
    
    #thought start
    Huh... She must've moved it.
    #thought end
    
    ~flags += vicMovedBat

- else:
    You notice a baseball bat under Victoria's bed.
    
    #thought start
	Huh... why does Victoria even have this?
	That’s weird.
	#thought end
	
	~ flags += victoriaBaseballBat
}

You open your phone to see if you have any service and notice it is nearly dead.

#thought start
Maybe I'll look for a charger.
#thought end

You open a drawer next to Victoria's bed and find a note.

#thought start
Victoria— If you try to pull anything at the pageant, I’ll make sure everyone knows exactly where your family’s money comes from. 

Don’t test me.
#thought end

You recognize this to be Ali’s handwriting.

#thought start
What the hell...

I need to talk to her about this.
#thought end

You decide it is best to finish unpacking first.

You put the note back in the drawer for now and leave the room.
~flags += vicNoteFromAli

~current_background = "living_room_day"
-> whatToDoNow

