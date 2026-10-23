	object_const_def
	const HERALD_PORT_SAILOR1
	const HERALD_PORT_SAILOR2
	const HERALD_PORT_CAVENDISH
	const HERALD_PORT_PERCY
	const HERALD_PORT_BLAIRE
	const HERALD_PORT_YOUNGSTER
	const HERALD_PORT_COOLTRAINER_F

HeraldPort_MapScripts:
	def_scene_scripts
	scene_script HeraldPortIntroScene, SCENE_HERALD_PORT_INTRO
	scene_script HeraldPortNoop1Scene, SCENE_HERALD_PORT_NOOP1

	def_callbacks

	HeraldPortIntroScene:
		sdefer PlayerCavendishIntroScript
		end

	HeraldPortNoop1Scene:
		end

	PlayerCavendishIntroScript:
		moveobject HERALD_PORT_CAVENDISH, 9, 6
		moveobject HERALD_PORT_PERCY, 9, 6
		moveobject HERALD_PORT_BLAIRE, 9, 6
		playsound SFX_ENTER_DOOR
		applymovement HERALD_PORT_SAILOR1, SailorStepsAwayMovement
		applymovement PLAYER, PlayerExitShipMovement
		pause 30
		playsound SFX_ENTER_DOOR
		appear HERALD_PORT_PERCY
		applymovement HERALD_PORT_PERCY, PercyRunsToPlayerMovement
		turnobject PLAYER, UP
		opentext
		writetext PercyTalksToPlayerText1
		waitbutton
		closetext
		pause 15
		playsound SFX_ENTER_DOOR
		appear HERALD_PORT_BLAIRE
		applymovement HERALD_PORT_BLAIRE, BlaireWalksToPlayerMovement
		opentext
		writetext BlaireTalksToPlayerText1
		waitbutton
		closetext
		pause 4
		turnobject HERALD_PORT_PERCY, LEFT
		opentext
		writetext PercyTalksToPlayerText2
		waitbutton
		closetext
		pause 4
		turnobject HERALD_PORT_BLAIRE, DOWN
		opentext
		writetext BlaireTalksToPlayerText2
		waitbutton
		closetext
		pause 4
		showemote EMOTE_SHOCK, HERALD_PORT_BLAIRE, 15
		applymovement HERALD_PORT_BLAIRE, BlaireWalksToPlayerMovement2
		pause 15
		turnobject PLAYER, LEFT
		playsound SFX_ENTER_DOOR
		appear HERALD_PORT_CAVENDISH
		applymovement HERALD_PORT_CAVENDISH, CavendishWalksToPlayerMovement
		opentext
		writetext CavendishTalksToPlayerText1
		waitbutton
		closetext
		pause 8
		turnobject HERALD_PORT_PERCY, DOWN
		turnobject PLAYER, UP
		opentext
		writetext PercyTalksToPlayerText3
		waitbutton
		closetext
		pause 4
		applymovement HERALD_PORT_PERCY, PercyRunsToDoorMovement
		playsound SFX_EXIT_BUILDING
		disappear HERALD_PORT_PERCY
		pause 8
		turnobject HERALD_PORT_BLAIRE, UP
		turnobject PLAYER, DOWN
		opentext
		writetext BlaireTalksToPlayerText3
		waitbutton
		closetext
		pause 4
		applymovement HERALD_PORT_BLAIRE, BlaireWalksToDoorMovement
		playsound SFX_EXIT_BUILDING
		disappear HERALD_PORT_BLAIRE
		pause 8
		turnobject PLAYER, LEFT
		opentext
		writetext CavendishTalksToPlayerText2
		waitbutton
		closetext
		pause 4
		applymovement HERALD_PORT_CAVENDISH, CavendishWalksToDoorMovement
		playsound SFX_EXIT_BUILDING
		disappear HERALD_PORT_CAVENDISH
		applymovement HERALD_PORT_SAILOR1, SailorStepsBackMovement
		setscene SCENE_HERALD_PORT_NOOP1
		setevent EVENT_GYM_TRAINERS_IN_HERALD_COVE
		setevent EVENT_START_HERALD_PORT
		end

	Sailor1Script:
		faceplayer
		checkflag ENGINE_CRUSHBADGE
		iffalse .NoBadge
		opentext
		writetext SailorTreelineTravelQuestionText
		yesorno
		iffalse .NoTrip
		closetext
		applymovement HERALD_PORT_SAILOR1, SailorStepsAwayMovement
		applymovement PLAYER, PlayerBoardsShipMovement
		playsound SFX_ENTER_DOOR
		warp TREELINE_PORT_INSIDE, 9, 9
	.NoBadge
		opentext
		writetext SailorBlocksPortText
		waitbutton
		closetext
		end
	.NoTrip
		writetext SailorTreelineTravelDeclinedText
		waitbutton
		closetext
		end

	Sailor2Script:
		jumptextfaceplayer Sailor2Text

	HeraldPortYoungsterScript:
		jumptextfaceplayer HeraldPortYoungsterText

	HeraldPortCooltrainerFScript:
		jumptextfaceplayer HeraldPortCooltrainerFText

	HealedPartyAfterWhiteout:
		pause 5
		turnobject HERALD_PORT_SAILOR1, UP
		opentext
		writetext SailorDoneHealingText
		waitbutton
		closetext
		applymovement HERALD_PORT_SAILOR1, SailorStepsAwayMovement
		applymovement PLAYER , PlayerExitShipMovement
		applymovement HERALD_PORT_SAILOR1, SailorStepsBackMovement
		end

	SailorStepsAwayMovement:
		step LEFT
		turn_head RIGHT
		step_end

	SailorStepsBackMovement:
		step RIGHT
		turn_head DOWN
		step_end

	PlayerExitShipMovement:
		step DOWN
		step DOWN
		step RIGHT
		step RIGHT
		turn_head LEFT
		step_end

	PlayerBoardsShipMovement:
		step UP
		turn_head UP
		step_end

	CavendishWalksToPlayerMovement:
		step DOWN
		step DOWN
		step DOWN
		step RIGHT
		step_end

	PercyRunsToPlayerMovement:
		big_step DOWN
		big_step DOWN
		big_step RIGHT
		big_step RIGHT
		turn_head DOWN
		step_end

	PercyRunsToDoorMovement:
		big_step LEFT
		big_step LEFT
		big_step DOWN
		big_step DOWN
		big_step DOWN
		step_end

	BlaireWalksToPlayerMovement:
		step DOWN
		step DOWN
		step RIGHT
		step_end

	BlaireWalksToPlayerMovement2:
		step DOWN
		step DOWN
		step RIGHT
		turn_head LEFT
		step_end

	BlaireWalksToDoorMovement:
		step LEFT
		step LEFT
		step DOWN
		step_end

	CavendishWalksToDoorMovement:
		step LEFT
		step DOWN
		step DOWN
		step_end

	PercyTalksToPlayerText1:
		text "PERCY: Hey"
		line "<PLAYER>!"
	para "We're finally"
		line "here! Aren't you"
		cont "excited? I am!"
	para "I'm so excited"
		line "I can't sit still!"
		done

	BlaireTalksToPlayerText1:
		text "BLAIRE: We know"
		line "PERCY, you've"
		cont "been talking"
		para "non-stop since"
		line "we picked you up"
		cont "from SINNOH."
		para "You're going to be"
		line "tired before we"
		cont "even get started."
		done

	PercyTalksToPlayerText2:
		text "PERCY: No way!"
		line "I've been dreaming"
		cont "of this ever since"
	para "PROF. CAVENDISH"
		line "selected us to"
		cont "come with him"
		cont "here!"
		done

	BlaireTalksToPlayerText2:
		text "BLAIRE: Well,"
		line "if he won't calm"
		cont "down, I suppose"
		para "we will have to"
		line "be the level heads"
		cont "for our research,"
		cont "<PLAYER>."
		done

	CavendishTalksToPlayerText1:
		text "CAVENDISH: Well,"
		line "it seems you all"
		cont "are getting to"
		para "know each other"
		line "already. Good!"
		para "Welcome to the"
		line "MONEGO ISLANDS!"
		para "We will be staying"
		line "here at HERALD"
		cont "COVE for our"
		cont "research."
		para "Let's hurry and"
		line "get to where we're"
		cont "staying. Come"
		cont "along now."
		done
	PercyTalksToPlayerText3:
		text "PERCY: Alright!"
		line "I'll see you all"
		cont "there then. Bye!"
		done

	BlaireTalksToPlayerText3:
		text "I'll look around"
		line "the town for a"
		cont "moment, then I'll"
		cont "head that way."
		done

	CavendishTalksToPlayerText2:
		text "I'll meet you"
		line "outside <PLAYER>."

		para "Come on out when"
		line "you're ready, and"
		cont "we can walk to"
		cont "the lab together."
		done



	SailorBlocksPortText:
		text "We're getting the"
		line "ship ready now."

		para "Please come back"
		line "later."
		done

	SailorTreelineTravelQuestionText:
		text "The boat is ready"
		line "to leave for"
		cont "TREELINE PORT."

		para "Would you like to"
		line "board?"
		done

	SailorTreelineTravelDeclinedText:
		text "All right. Let me"
		line "know when you're"
		cont "ready to go."
		done

	Sailor2Text:
		text "This port used to"
		line "be pretty empty"
		cont "most of the time."

		para "Now it's"
		line "constantly being"
		cont "filled up!"
		done

	HeraldPortYoungsterText:
		text "We came out here"
		line "to watch the cool"
		cont "battles!"

		para "I can't wait to"
		line "see them all!"
		done

	HeraldPortCooltrainerFText:
		text "My boyfriend is"
		line "really excited."

		para "We're stopping for"
		line "a break before we"

		para "head on to a"
		line "bigger city."
		done

	SailorDoneHealingText:
		text "All done healing?"
		line "Then come on out."

		para "There's a #MON"
		line "CENTER in town"

		para "that you can use"
		line "next time."
		done

HeraldPort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8,  11, HERALD_COVE, 1
	warp_event 9,  11, HERALD_COVE, 1

	def_coord_events
	coord_event 9,  7, SCENE_HERALD_PORT_NOOP1, HealedPartyAfterWhiteout

	def_bg_events

	def_object_events
	object_event  9, 	 8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sailor1Script, -1
	object_event  4,  9, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sailor2Script, -1
	object_event  15,  0, SPRITE_PROFESSOR_CAVENDISH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_START_HERALD_PORT
	object_event  15,  0, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_START_HERALD_PORT
	object_event  15,  0, SPRITE_BAD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_START_HERALD_PORT
	object_event  3,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, HeraldPortYoungsterScript, -1
	object_event  3,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HeraldPortCooltrainerFScript, -1
