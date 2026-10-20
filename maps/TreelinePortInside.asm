	object_const_def
	const TREELINE_PORT_INSIDE_SAILOR1
	const TREELINE_PORT_INSIDE_SAILOR2

TreelinePortInside_MapScripts:
	def_scene_scripts

	def_callbacks

		TreelineSailor1Script:
			faceplayer
			opentext
			writetext TreelineSailorTravelQuestionText
			yesorno
			iffalse .Declined
			closetext
			applymovement TREELINE_PORT_INSIDE_SAILOR1, TreelineSailorStepsAway
			applymovement PLAYER, TreelinePlayerBoardsShip
			playsound SFX_ENTER_DOOR
			warp HERALD_PORT, 9, 9
		.Declined
			writetext TreelineSailorTravelDeclinedText
			waitbutton
			closetext
			end

		TreelineSailor2Script:
			jumptextfaceplayer TreelineSailor2Text

		TreelineSailorStepsAway:
			step LEFT
			turn_head RIGHT
			step_end

		TreelineSailorStepsBack:
			step RIGHT
			turn_head DOWN
			step_end

		TreelinePlayerBoardsShip:
			step UP
			turn_head UP
			step_end

		TreelineSailorTravelQuestionText:
			text "The boat is ready"
			line "to leave for"
			cont "HERALD PORT."

			para "Would you like to"
			line "board?"
			done

		TreelineSailorTravelDeclinedText:
			text "All right. Let me"
			line "know when you're"
			cont "ready to go."
			done

		TreelineSailor2Text:
			text "This port used to"
			line "be pretty empty"
			cont "most of the time."

			para "Now it's constantly"
			line "being filled up!"
			done


TreelinePortInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 8,  11, TREELINE_PORT, 1
	warp_event 9,  11, TREELINE_PORT, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TreelineSailor1Script, -1
	object_event  4,  9, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TreelineSailor2Script, -1
