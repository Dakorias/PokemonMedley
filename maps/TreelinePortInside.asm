	object_const_def
	const TREELINE_PORT_INSIDE_SAILOR1
	const TREELINE_PORT_INSIDE_SAILOR2

TreelinePortInside_MapScripts:
	def_scene_scripts

	def_callbacks

		TreelineSailor1Script:
			faceplayer
			farscall PortTravelMenu
			ifequal 1, .HeraldPort
			ifequal 2, .TreelinePort
			ifequal 3, .DryWash
			ifequal 4, .TideWalk
			ifequal 5, .GlacierPoint
			farwritetext PortTravelDeclinedText
			waitbutton
			closetext
			end

		.HeraldPort
			closetext
			applymovement TREELINE_PORT_INSIDE_SAILOR1, TreelineSailorStepsAway
			applymovement PLAYER, TreelinePlayerBoardsShip
			playsound SFX_ENTER_DOOR
			special FadeOutToWhite
			pause 15
			warp HERALD_PORT, 9, 9
			end

		.TreelinePort
			closetext
			applymovement TREELINE_PORT_INSIDE_SAILOR1, TreelineSailorStepsAway
			applymovement PLAYER, TreelinePlayerBoardsShip
			playsound SFX_ENTER_DOOR
			special FadeOutToWhite
			pause 15
			warp TREELINE_PORT_INSIDE, 9, 9
			end

		.DryWash
			closetext
			applymovement TREELINE_PORT_INSIDE_SAILOR1, TreelineSailorStepsAway
			applymovement PLAYER, TreelinePlayerBoardsShip
			playsound SFX_ENTER_DOOR
			special FadeOutToWhite
			pause 15
			warp DRY_WASH, 20, 8
			end

		.TideWalk
			closetext
			applymovement TREELINE_PORT_INSIDE_SAILOR1, TreelineSailorStepsAway
			applymovement PLAYER, TreelinePlayerBoardsShip
			playsound SFX_ENTER_DOOR
			special FadeOutToWhite
			pause 15
			warp TIDE_WALK, 22, 8
			end

		.GlacierPoint
			closetext
			applymovement TREELINE_PORT_INSIDE_SAILOR1, TreelineSailorStepsAway
			applymovement PLAYER, TreelinePlayerBoardsShip
			playsound SFX_ENTER_DOOR
			special FadeOutToWhite
			pause 15
			warp GLACIER_POINT, 20, 18
			end

		TreelineSailorStepsAway:
			step LEFT
			turn_head RIGHT
			step_end

		TreelinePlayerBoardsShip:
			step UP
			turn_head UP
			step_end

		TreelineSailor2Script:
			jumptextfaceplayer TreelineSailor2Text

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
	object_event  9,  8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, TreelineSailor1Script, -1
	object_event  4,  9, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, TreelineSailor2Script, -1
