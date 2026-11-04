	object_const_def
	const TIDE_WALK_SAILOR

TideWalk_MapScripts:
	def_scene_scripts

	def_callbacks

	TideWalkSailorScript:
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
		applymovement TIDE_WALK_SAILOR, TideWalkSailorStepsAway
		applymovement PLAYER, TideWalkPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp HERALD_PORT, 9, 9
		end

	.TreelinePort
		closetext
		applymovement TIDE_WALK_SAILOR, TideWalkSailorStepsAway
		applymovement PLAYER, TideWalkPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp TREELINE_PORT_INSIDE, 9, 9
		end

	.DryWash
		closetext
		applymovement TIDE_WALK_SAILOR, TideWalkSailorStepsAway
		applymovement PLAYER, TideWalkPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp DRY_WASH, 20, 8
		end

	.TideWalk
		closetext
		applymovement TIDE_WALK_SAILOR, TideWalkSailorStepsAway
		applymovement PLAYER, TideWalkPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp TIDE_WALK, 22, 8
		end

	.GlacierPoint
		closetext
		applymovement TIDE_WALK_SAILOR, TideWalkSailorStepsAway
		applymovement PLAYER, TideWalkPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp GLACIER_POINT, 20, 18
		end

	TideWalkSailorStepsAway:
		step LEFT
		turn_head RIGHT
		step_end

	TideWalkPlayerBoardsShip:
		step UP
		turn_head UP
		step_end

TideWalk_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24, 8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, TideWalkSailorScript, -1
