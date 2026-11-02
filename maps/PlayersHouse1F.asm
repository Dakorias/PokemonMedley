	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_POKEFAN_F
	const PLAYERSHOUSE1F_GOOD_RIVAL

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_MEET_RIVAL
	scene_script PlayersHouse1FNoop2Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

MeetRivalScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYERSHOUSE1F_GOOD_RIVAL, RivalWalksToPlayerMovement
	opentext
	writetext CeliosLookingForYouText
	waitbutton
	closetext
	follow PLAYERSHOUSE1F_GOOD_RIVAL, PLAYER
	applymovement PLAYERSHOUSE1F_GOOD_RIVAL, RivalWalksWithPlayer
	turnobject PLAYERSHOUSE1F_MOM1, RIGHT
	turnobject PLAYERSHOUSE1F_GOOD_RIVAL, UP
	opentext
	writetext MomSaysGoodbye
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_MOM1, UP
	opentext
	writetext MomSaysGoodbye2
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_MOM1, RIGHT
	opentext
	writetext MomSaysGoodbye3
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	opentext
	stopfollow
	writetext RivalSaysGoodbye
	waitbutton
	closetext
	applymovement PLAYERSHOUSE1F_GOOD_RIVAL, RivalLeavesHouse
	playsound SFX_EXIT_BUILDING
	disappear PLAYERSHOUSE1F_GOOD_RIVAL
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_PLAYERSHOUSE1F_MEET_MOM
	opentext
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
.BankOfMom:
	special BankOfMom
	waitbutton
	closetext
	end

NeighborScript:
	faceplayer
	opentext
	checktime MORN
	iftrue .MornScript
	checktime DAY
	iftrue .DayScript
	checktime NITE
	iftrue .NiteScript

.MornScript:
	writetext NeighborMornIntroText
	promptbutton
	sjump .Main

.DayScript:
	writetext NeighborDayIntroText
	promptbutton
	sjump .Main

.NiteScript:
	writetext NeighborNiteIntroText
	promptbutton
	sjump .Main

.Main:
	writetext NeighborText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText


RivalWalksToPlayerMovement:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

RivalWalksWithPlayer:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step_end

RivalLeavesHouse:
	big_step LEFT
	big_step DOWN
	big_step DOWN
	step_end

CeliosLookingForYouText:
	text "RIVAL: <PLAYER>!"
	line "I came by to grab"

	para "you and take you"
	line "to PROF. CELIO."

	para "He's asked us to"
	line "run a few errands"

	para "for him. Come on,"
	line "I'll take you!"

	done

MomSaysGoodbye:
	text "MOM: Oh <PLAYER>,"
	line "are you leaving"

	para "already? You have"
	line "everything you"
	cont "need? . . ."
	done

MomSaysGoodbye2:
	text "I knew you"
	line "would leave one"

	para "day, but now it's"
	line "here. . . You"
	cont "grew up too fast."
	done

MomSaysGoodbye3:
	text "Please remember"
	line "to come back and"

	para "visit, OK? Now,"
	line "get going! I'll"

	para "be supporting you"
	line "wherever you go!"
	done

RivalSaysGoodbye:
	text "RIVAL: Oh that"
	line "reminds me, I"

	para "forgot my cash at"
	line "home! I'll meet"

	para "you at the lab"
	line "<PLAYER>!"
	done

HurryUpElmIsWaitingText:
	text "PROF.CELIO is"
	line "waiting for you."

	para "Hurry up, baby!"
	done

SoWhatWasProfElmsErrandText:
	text "So, what was PROF."
	line "ELM's errand?"

	para "…"

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done

NeighborMornIntroText:
	text "Good morning,"
	line "<PLAY_G>!"

	para "I'm visiting!"
	done

NeighborDayIntroText:
	text "Hello, <PLAY_G>!"
	line "I'm visiting!"
	done

NeighborNiteIntroText:
	text "Good evening,"
	line "<PLAY_G>!"

	para "I'm visiting!"
	done

NeighborText:
	text "<PLAY_G>, have you"
	line "heard?"

	para "My daughter is"
	line "adamant about"

	para "becoming PROF."
	line "ELM's assistant."

	para "She really loves"
	line "#MON!"
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "CINNABAR VOLCANO"
	line "BURGER!"
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "tasty LEMONADE!"
	done

PlayersHouse1FTVText:
	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train…"

	para "I'd better get"
	line "rolling too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, HERALD_COVE, 1
	warp_event  7,  7, HERALD_COVE, 1
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  9,  1, SCENE_PLAYERSHOUSE1F_MEET_RIVAL, MeetRivalScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, COLOR_RED, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, COLOR_RED, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, COLOR_RED, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	object_event	9,  6, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, COLOR_GREEN, OBJECTTYPE_SCRIPT, 0, MeetRivalScript, -1
