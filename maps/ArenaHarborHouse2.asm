	object_const_def
	const ARENA_HARBOR_HOUSE2_RESIDENT

ArenaHarborHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

ArenaHarborHouse2ResidentScript:
	jumptextfaceplayer ArenaHarborHouse2ResidentText

ArenaHarborHouse2ResidentText:
	text "The tournament"
	line "gets bigger every"
	para "year."
	done

ArenaHarborHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, ARENA_HARBOR, 3
	warp_event 3,  7, ARENA_HARBOR, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, ArenaHarborHouse2ResidentScript, -1
