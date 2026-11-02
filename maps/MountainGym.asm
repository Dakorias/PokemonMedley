	object_const_def
	const MOUNTAIN_GYM_KENJI

MountainGym_MapScripts:
	def_scene_scripts
	scene_script MountainGym, SCENE_MOUNTAIN_GYM

	def_callbacks

	MountainGym:
		end

WalkPastKenjiScript:
	turnobject PLAYER, RIGHT
	turnobject MOUNTAIN_GYM_KENJI, LEFT
	sjump MountainCaveGymScript

KenjiTalkToScript:
	faceplayer

MountainCaveGymScript:
	opentext
	checkevent EVENT_BEAT_KENJI
	iftrue KenjiSpeechAfterTM
	writetext KenjiWelcomesPlayerText
	yesorno
	iffalse LeaveGymScript
	writetext KenjiLeadsPlayerIntoGym
	waitbutton
	closetext
	follow MOUNTAIN_GYM_KENJI, PLAYER
	applymovement MOUNTAIN_GYM_KENJI, KenjiLeadsMovement
	turnobject PLAYER, LEFT
	stopfollow
	opentext
	writetext KenjiTellsPlayerRules
	waitbutton
	closetext
	applymovement MOUNTAIN_GYM_KENJI, KenjiGoesDownMovement
	playsound SFX_EXIT_BUILDING
	disappear MOUNTAIN_GYM_KENJI
	applymovement PLAYER, PlayerGoesDownWithKenji
	warpcheck
	end

	KenjiSpeechAfterTM:
	writetext KenjiFightEndedText
	waitbutton
	closetext
	applymovement PLAYER, PlayerWalksDownMovementKenji
	end

	LeaveGymScript:
	writetext KenjiNotReady
	waitbutton
	closetext
	applymovement PLAYER, PlayerWalksDownMovementKenji
	end

	KenjiLeadsMovement:
	step UP
	step UP
	step LEFT
	turn_head RIGHT
	step_end

	KenjiGoesDownMovement:
	step LEFT
	step_end

	PlayerGoesDownWithKenji:
	step LEFT
	step LEFT
	step_end

	PlayerWalksDownMovementKenji:
	step DOWN
	step_end

	KenjiWelcomesPlayerText:
		text "Welcome to my GYM!"
		line "My name is KENJI,"

		para "are you prepared"
		line "for my challenge?"
		done

	KenjiNotReady:
		text "Ah, then return"
		line "when you are"
		cont "more prepared!"
		done

	KenjiLeadsPlayerIntoGym:
		text "Excellent. Follow"
		line "me."
		done

	KenjiTellsPlayerRules:
		text "The rules are"
		line "simple."

		para "I am hosting a"
		line "tournament here,"

		para "and the one that"
		line "makes it to the"
		cont "end will fight me."

		para "You are free to"
		line "leave at any time,"

		para "but you will have"
		line "to start over if"

		para "you do. Sound"
		line "good? Let's go!"
		done

	KenjiFightEndedText:
		text "You will do well"
		line "as you continue"

		para "to obtain more"
		line "badges."

		para "I wish you the"
		line "best of luck!"
		done

MountainGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MT_MONEGO, 2
	warp_event  4,  7, MT_MONEGO, 2
	warp_event  2,  2, MOUNTAIN_GYM_BREAK, 1

	def_coord_events
	coord_event  3,  4, SCENE_MOUNTAIN_GYM, WalkPastKenjiScript

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_KENJI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, KenjiTalkToScript, -1
