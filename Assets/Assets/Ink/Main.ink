INCLUDE Scene1.ink
INCLUDE Scene2.ink
INCLUDE Scene3.ink
INCLUDE Scene4.ink
INCLUDE Scene5.ink
INCLUDE Scene6.ink
INCLUDE Scene7.ink
INCLUDE Scene8.ink
INCLUDE Scene9and12.ink
INCLUDE Scene10.ink
INCLUDE Scene11.ink
INCLUDE Scene13.ink
INCLUDE Scene14.ink
INCLUDE Scene15.ink
INCLUDE Scene16.ink
INCLUDE Scene17.ink
INCLUDE Scene18.ink
INCLUDE Scene19.ink
INCLUDE Scene20.ink
INCLUDE Scene21.ink
INCLUDE Scene22.ink
INCLUDE Scene23.ink
INCLUDE Scene24.ink
INCLUDE Scene25.ink
INCLUDE Scene26.ink
INCLUDE Scene27.ink
INCLUDE Scene29.ink
INCLUDE Scene31.ink









VAR player_name = "Player"
VAR current_background = "start_menu"
VAR current_track = "start_menu_music"

VAR victoria_trust = 0
VAR sadie_trust = 0
VAR sam_trust = 0

LIST flags = askedAboutAli, searchAlisRoomWithSadie, searchOutsideWithSam, searchBeachWithVictoria, stayHomeWithVictoria, haveFuneralWithSadie, buryBodyWithSam, samPhone, sadieSelfConscious, lookedForSadie, lookedForSam, lookedForVictoria, lookAroundSadieRoom, snoopSadieRoom, victoriaBaseballBat, saunaWithVictoria, beachWithSadie, walkWithSam, unpacked, sleepVictoria, sleepSam, sleepSadie, vicDirtyMoney, pickVicFight, pickAliFight, notConfrontSadie, samSketchBook, vicNoteFromAli, samSnoopSketch, sadiePhotos, vicMovedBat


// for true start of game, this should be introduction
-> believe
