== unpack ==

~current_background = "living_room_day"
~current_track = "default_music"

You decide you’re going to unpack your things.

#thought start
I should probably find somewhere to sleep that’s not the couch.
#thought end

Who’s room do you want to sleep in tonight?
*[Victoria’s room]
    ~victoria_trust+=1
    -> sleepWVic
*[Sadie’s room]
    ~sadie_trust+=1
    -> sleepWSadie
*[Sam’s room]
    ~sam_trust+=1
    -> sleepWSam
