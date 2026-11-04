	object_const_def
	const GLACIER_POINT_SAILOR

GlacierPoint_MapScripts:
	def_scene_scripts

	def_callbacks

GlacierPointSignScript:
	jumptext GlacierPointSignText

GlacierPointSailorScript:
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
	applymovement GLACIER_POINT_SAILOR, GlacierPointSailorStepsAway
	applymovement PLAYER, GlacierPointPlayerBoardsShip
	playsound SFX_ENTER_DOOR
	special FadeOutToWhite
	pause 15
	warp HERALD_PORT, 9, 9
	end

.TreelinePort
	closetext
	applymovement GLACIER_POINT_SAILOR, GlacierPointSailorStepsAway
	applymovement PLAYER, GlacierPointPlayerBoardsShip
	playsound SFX_ENTER_DOOR
	special FadeOutToWhite
	pause 15
	warp TREELINE_PORT_INSIDE, 9, 9
	end

.DryWash
	closetext
	applymovement GLACIER_POINT_SAILOR, GlacierPointSailorStepsAway
	applymovement PLAYER, GlacierPointPlayerBoardsShip
	playsound SFX_ENTER_DOOR
	special FadeOutToWhite
	pause 15
	warp DRY_WASH, 20, 8
	end

.TideWalk
	closetext
	applymovement GLACIER_POINT_SAILOR, GlacierPointSailorStepsAway
	applymovement PLAYER, GlacierPointPlayerBoardsShip
	playsound SFX_ENTER_DOOR
	special FadeOutToWhite
	pause 15
	warp TIDE_WALK, 22, 8
	end

.GlacierPoint
	closetext
	applymovement GLACIER_POINT_SAILOR, GlacierPointSailorStepsAway
	applymovement PLAYER, GlacierPointPlayerBoardsShip
	playsound SFX_ENTER_DOOR
	special FadeOutToWhite
	pause 15
	warp GLACIER_POINT, 20, 18
	end

GlacierPointSailorStepsAway:
	step LEFT
	turn_head RIGHT
	step_end

GlacierPointPlayerBoardsShip:
	step UP
	turn_head UP
	step_end

GlacierPointSignText:
	text "GLACIER POINT:"
	para "Mind the ice."
	done

GlacierPoint_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 15, GLACIER_POINT_POKECENTER, 1
	warp_event 18, 15, GLACIER_POINT_HOUSE1, 1
	warp_event 28, 15, GLACIER_POINT_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 12, 20, BGEVENT_READ, GlacierPointSignScript

	def_object_events
	object_event 22, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, GlacierPointSailorScript, -1
