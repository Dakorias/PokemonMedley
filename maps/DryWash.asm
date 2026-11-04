	object_const_def
	const DRY_WASH_SAILOR

DryWash_MapScripts:
	def_scene_scripts

	def_callbacks

	DryWashSailorScript:
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
		applymovement DRY_WASH_SAILOR, DryWashSailorStepsAway
		applymovement PLAYER, DryWashPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp HERALD_PORT, 9, 9
		end

	.TreelinePort
		closetext
		applymovement DRY_WASH_SAILOR, DryWashSailorStepsAway
		applymovement PLAYER, DryWashPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp TREELINE_PORT_INSIDE, 9, 9
		end

	.DryWash
		closetext
		applymovement DRY_WASH_SAILOR, DryWashSailorStepsAway
		applymovement PLAYER, DryWashPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp DRY_WASH, 20, 8
		end

	.TideWalk
		closetext
		applymovement DRY_WASH_SAILOR, DryWashSailorStepsAway
		applymovement PLAYER, DryWashPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp TIDE_WALK, 22, 8
		end

	.GlacierPoint
		closetext
		applymovement DRY_WASH_SAILOR, DryWashSailorStepsAway
		applymovement PLAYER, DryWashPlayerBoardsShip
		playsound SFX_ENTER_DOOR
		special FadeOutToWhite
		pause 15
		warp GLACIER_POINT, 20, 18
		end

	DryWashSailorStepsAway:
		step LEFT
		turn_head RIGHT
		step_end

	DryWashPlayerBoardsShip:
		step UP
		turn_head UP
		step_end

DryWash_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18, 8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, DryWashSailorScript, -1
