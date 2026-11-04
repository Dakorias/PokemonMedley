	object_const_def
	const FROST_HOLLOW_HOUSE1_RESIDENT

FrostHollowHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

FrostHollowHouse1ResidentScript:
	jumptextfaceplayer FrostHollowHouse1ResidentText

FrostHollowHouse1ResidentText:
	text "Snow piles up to"
	line "the windows."
	done

FrostHollowHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, FROST_HOLLOW, 2
	warp_event 3,  7, FROST_HOLLOW, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, FrostHollowHouse1ResidentScript, -1
