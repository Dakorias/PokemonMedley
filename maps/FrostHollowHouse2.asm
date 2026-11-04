	object_const_def
	const FROST_HOLLOW_HOUSE2_RESIDENT

FrostHollowHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

FrostHollowHouse2ResidentScript:
	jumptextfaceplayer FrostHollowHouse2ResidentText

FrostHollowHouse2ResidentText:
	text "Hot soup is the"
	line "only cure."
	done

FrostHollowHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, FROST_HOLLOW, 3
	warp_event 3,  7, FROST_HOLLOW, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, FrostHollowHouse2ResidentScript, -1
