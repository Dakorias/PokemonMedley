	object_const_def
	const RUGGED_CLIFF_RANGER
	const RUGGED_CLIFF_SURVIVALIST
	const RUGGED_CLIFF_GIOVANNI
	const RUGGED_CLIFF_RESCUE_BALL
	const RUGGED_CLIFF_MUSCLE_BAND

RuggedCliff_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .RuggedCliffFlyPointCallback

	.RuggedCliffFlyPointCallback:
	setflag ENGINE_FLYPOINT_RUGGED_CLIFF
	endcallback

TrainerRangerGerald:
	trainer RANGER, GERALD, EVENT_BEAT_RANGER_GERALD, RangerGeraldSeenText, RangerGeraldBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext RangerGeraldAfterText
		waitbutton
		closetext
		end

TrainerSurvivalistJohn:
	trainer SURVIVALIST, JOHN, EVENT_BEAT_SURVIVALIST_JOHN, SurvivalistJohnSeenText, SurvivalistJohnBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext SurvivalistJohnAfterText
		waitbutton
		closetext
		end

RuggedCliffGiovanni:
	checkevent EVENT_RUGGED_CLIFF_MEET_GIOVANNI
	iftrue .MetAlready
	opentext
	writetext RuggedCliffGiovanniDistracted
	waitbutton
	closetext
	faceplayer
	opentext
	writetext RuggedCliffGiovanniIntro
	waitbutton
	closetext
	wait 5
	turnobject RUGGED_CLIFF_GIOVANNI, UP
	opentext
	writetext RuggedCliffGiovanniGrotto
	waitbutton
	closetext
	wait 10
	faceplayer
	opentext
	writetext RuggedCliffGiovanniGoInside
	waitbutton
	closetext
	setevent EVENT_RUGGED_CLIFF_MEET_GIOVANNI
	end

.MetAlready
	faceplayer
	opentext
	writetext RuggedCliffGiovanniGoInside
	waitbutton
	closetext
	end

	RuggedCliffRescueBall:
		itemball RESCUE_BALL

	RuggedCliffMuscleBand:
		itemball MUSCLE_BAND

	RuggedCliffSignScript:
		jumptext RuggedCliffSignText

	RuggedCliffTopSignScript:
		jumptext RuggedCliffTopSignText

	RuggedCliffGrottoEntryScript:
		opentext
		writetext RuggedCliffGrottoEntryText
		yesorno
		iftrue .RuggedCliffGrottoWarp
		closetext
		end

		.RuggedCliffGrottoWarp
		closetext
		playsound SFX_ENTER_DOOR
		pause 5
		warp RUGGED_CLIFF_GROTTO, 2, 21
		end

RangerGeraldSeenText:
	text "TEST"
	done

RangerGeraldBeatenText:
	text "TEST"
	done

RangerGeraldAfterText:
	text "TEST"
	done

SurvivalistJohnSeenText:
	text "TEST"
	done

SurvivalistJohnBeatenText:
	text "TEST"
	done

SurvivalistJohnAfterText:
	text "TEST"
	done

RuggedCliffSignText:
	text "RUGGED CLIFF"
	done

RuggedCliffTopSignText:
	text "RUGGED CLIFF"
	done

RuggedCliffGrottoEntryText:
	text "The forest seems"
	line "to open up here."

	para "Would you like to"
	line "step inside?"
	done

RuggedCliffGiovanniDistracted:
RuggedCliffGiovanniIntro:
RuggedCliffGiovanniGrotto:
RuggedCliffGiovanniGoInside:
	text "TEST"
	done

RuggedCliff_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  29, MT_MONEGO, 3
	warp_event 28,   5, MT_MONEGO, 4
	warp_event  5,  35, RUGGED_CLIFF_HOUSE, 1
	warp_event 11,   3, RUGGED_CLIFF_POKECENTER, 1
	warp_event 28,  38, RUGGED_CLIFF_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 22, 30, BGEVENT_READ, RuggedCliffSignScript
	bg_event 17,  5, BGEVENT_READ, RuggedCliffTopSignScript
	bg_event 28, 37, BGEVENT_READ, RuggedCliffGrottoEntryScript
	bg_event 29, 37, BGEVENT_READ, RuggedCliffGrottoEntryScript

	def_object_events
	object_event 15, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRangerGerald, -1
	object_event 16, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSurvivalistJohn, -1
	object_event 29, 38, SPRITE_ADAM_VOSS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuggedCliffGiovanni, EVENT_RUGGED_CLIFF_GROTTO_FINISH
	object_event 8,  8,  SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuggedCliffRescueBall, EVENT_RUGGED_CLIFF_RESCUE_BALL
	object_event 27, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuggedCliffMuscleBand, EVENT_RUGGED_CLIFF_MUSCLE_BAND
