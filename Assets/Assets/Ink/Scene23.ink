== sleepWSadie ==
~flags += sleepSadie

~current_background = "sadie_room"

You lug your suitcase to Sadie's room.

{flags ? lookAroundSadieRoom:
    #thought start
    Wow, this looks exactly the same as when I was last here.
    
    Leave it to Sadie to clean during vacation.
    #thought end
	
}

{not(flags ? lookAroundSadieRoom):
    You take in Sadie's room.
    
    You notice a worn band jacket draped across Sadie's bed.

    A small photo is tucked into the mirror frame.
    
    ~flags += lookAroundSadieRoom
}

As you start to unpack your things, you notice Sadie's phone is sitting on the couch.

*[Go through it]
-> snoopSadiePhone
*[Don't snoop]
-> leaveSadiePhone

= snoopSadiePhone
#thought start
I wonder if Sadie has any good pics of all of us together.
#thought end

You scroll through her photo albums and notice a hidden album in the app
You click on it, and it there's hundreds of photos of Ali.
Candids and blurry photos. 
And it seems like they were all taken without her knowledge.

#thought start
This is...
This is full-on stalker behavior.
What the hell?
#thought end

You put the phone back on the couch, shocked at what you just saw.

You finish unpacking your suitcase and head back to the living room.

~flags += sadiePhotos
~current_background = "living_room_day"

-> whatToDoNow

= leaveSadiePhone
You don't pick up the phone.

#thought start
But she'll never know...
#thought end

*[Go through Sadie's phone]
->snoopSadiePhone
*[Finish unpacking]
->continueUnpacking

= continueUnpacking

You finish unpacking your suitcase and head back to the living room.

~current_background = "living_room_day"
-> whatToDoNow
