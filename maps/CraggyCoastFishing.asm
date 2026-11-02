	object_const_def
	const CRAGGY_COAST_FISHING_FISHER1
	const CRAGGY_COAST_FISHING_FISHER2

CraggyCoastFishing_MapScripts:
	def_scene_scripts

	def_callbacks

DaveTradeEevee:
	faceplayer
	opentext
	trade NPC_TRADE_DAVE
	waitbutton
	closetext
	end

CraggyCoastHouseFisherBattleScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FISHER_ARNOLD
	iftrue .AfterBattle
	writetext FisherArnoldLetsBattle
	yesorno
	iffalse .NoBattle
	winlosstext ArnoldWinText, 0
	setlasttalked CRAGGY_COAST_FISHING_FISHER2
	loadtrainer FISHER, ARNOLD
	startbattle
	reloadmapafterbattle
	opentext
	writetext ArnoldLossText
	waitbutton
	closetext
	setevent EVENT_BEAT_FISHER_ARNOLD
	end

.NoBattle
	writetext ArnoldGoodLuck
	waitbutton
	closetext
	end

.AfterBattle
	writetext ArnoldExcitedToFish
	waitbutton
	closetext
	end

FisherArnoldLetsBattle:
	text "Hey there! Haven't"
	line "seen you before."

	para "Where are you"
	line "coming from?"

	para ". . ."

	para "You're in the new"
	line "BATTLE CONFERENCE?"

	para "You must be a good"
	line "battler then."

	para "How about you and"
	line "I go a round?"
	done

ArnoldWinText:
	text "You swamped me!"
	done

ArnoldLossText:
	text "You're pretty good"
	line "ya' know?"

	para "I used to be a"
	line "decent trainer,"

	para "but that's a long"
	line "time ago now."

  para "So I'll treat you"
	line "like your winning"
	cont "in my place!"

	para "Go win it for us,"
	line "kid!"
	done

ArnoldGoodLuck:
	text "No? Alright, your"
	line "loss, kid. I had a"
	cont "lot to show you."
	done

ArnoldExcitedToFish:
	text "How's it going,"
	line "champ-to-be?"

	para "I'm doing fine out"
	line "here. The fish are"
	cont "always biting!"

	para "You should take a"
	line "break and fish a"
	cont "while sometimes."
	done

CraggyCoastFishing_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, CRAGGY_COAST, 6
	warp_event 3,  7, CRAGGY_COAST, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, DaveTradeEevee, -1
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, CraggyCoastHouseFisherBattleScript, -1
