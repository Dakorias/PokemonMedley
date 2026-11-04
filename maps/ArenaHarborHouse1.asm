	object_const_def
	const ARENA_HARBOR_HOUSE1_RESIDENT

ArenaHarborHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

ArenaHarborHouse1ResidentScript:
	jumptextfaceplayer ArenaHarborHouse1ResidentText

ArenaHarborHouse1ResidentText:
	text "I watch the boats"
	line "come in all day."
	done

ArenaHarborHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, ARENA_HARBOR, 2
	warp_event 3,  7, ARENA_HARBOR, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, ArenaHarborHouse1ResidentScript, -1
