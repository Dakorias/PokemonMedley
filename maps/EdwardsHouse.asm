object_const_def
	const EDWARDS_HOUSE_EDWARD

EdwardsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

	EdwardHouseScript:
		faceplayer
		opentext
		writetext EdwardGivesMapText
		waitbutton
		closetext
		turnobject EDWARDS_HOUSE_EDWARD, RIGHT
		pause 15
		showemote EMOTE_QUESTION, EDWARDS_HOUSE_EDWARD, 15
		turnobject EDWARDS_HOUSE_EDWARD, UP
		pause 5
		turnobject EDWARDS_HOUSE_EDWARD, DOWN
		pause 5
		turnobject EDWARDS_HOUSE_EDWARD, RIGHT
		pause 15
		faceplayer EDWARDS_HOUSE_EDWARD
		opentext
		writetext EdwardMapMissingText
		waitbutton
		closetext
		readvar VAR_FACING
		ifequal UP, .GoAround
		turnobject PLAYER, DOWN
		applymovement EDWARDS_HOUSE_EDWARD, EdwardLeavesHouseMovement
		playsound SFX_EXIT_BUILDING
		disappear EDWARDS_HOUSE_EDWARD
		setevent EVENT_EDWARD_MISSING_FROM_HOUSE
		end

	.GoAround
		applymovement EDWARDS_HOUSE_EDWARD, EdwardGoesAroundLeavesHouseMovement
		playsound SFX_EXIT_BUILDING
		disappear EDWARDS_HOUSE_EDWARD
		setevent EVENT_EDWARD_MISSING_FROM_HOUSE
		end

	EdwardLeavesHouseMovement:
		step DOWN
		step DOWN
		step LEFT
		step DOWN
		step DOWN
		step_end

	EdwardGoesAroundLeavesHouseMovement:
		step LEFT
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step_end

	EdwardGivesMapText:
		text "EDWARD: There you"
		line "are <PLAYER>!"
		para "Here's that map he"
		line "was lookin' fer."
		done

	EdwardMapMissingText:
		text "Darn, I must have"
		line "left it back at my"
		cont "boat. I need to"
		para "head there anyway,"
		line "so I'll meet you"
		cont "there, alright?"
		para "My boat is over"
		line "at HERALD BAY, on"
		cont "the beach. You"
		line "can't miss it!"
		done

EdwardsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, HERALD_COVE, 4
	warp_event 3, 7, HERALD_COVE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 3, SPRITE_EDWARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EdwardHouseScript, EVENT_EDWARD_MISSING_FROM_HOUSE