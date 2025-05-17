== scene13 ==

#enter: Sam

~current_background = "living_room_day"
~current_track = "default_music"

You and Sam make it back to the house and head into the empty living room.

#speaker: Sam
“I need a shower.”

#speaker: Player
"Sounds good, I think I'll go find the others."

#exit: Sam

-> lookForTheOthers

== lookForTheOthers ==
~current_track = "default_music"

Who do you look for?

* {!(flags ? lookedForSadie)} [Sadie]
    ~ flags += lookedForSadie
    
    #thought start
    I'll see what Sadie is up to.
    #thought end
    
    -> findSadie

* {!(flags ? lookedForVictoria) && flags ? buryBodyWithSam} [Victoria]
    ~ flags += lookedForVictoria
    
    #thought start
    I wonder what Victoria is up to.
    #thought end
    
    -> findVictoria

* {!(flags ? lookedForSam) && !(flags ? buryBodyWithSam)} [Sam]
    ~ flags += lookedForSam
    
    #thought start
    I better go see if Sam's okay.
    #thought end

    -> findSam

* {flags ? lookedForVictoria || flags ? lookedForSadie || flags ? lookedForSam} [Gather everyone in the living room]

    #thought start
    I think we all need to have a bit of a talk.
    #thought end
    
    -> scene17
