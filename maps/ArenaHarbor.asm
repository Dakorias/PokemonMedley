	object_const_def

ArenaHarbor_MapScripts:
	def_scene_scripts

	def_callbacks

ArenaHarborSignScript:
	jumptext ArenaHarborSignText

ArenaHarborSignText:
	text "ARENA HARBOR:"
	para "Home of the big"
	line "tournament."
	done

ArenaHarbor_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 15, ARENA_HARBOR_POKECENTER, 1
	warp_event 18, 15, ARENA_HARBOR_HOUSE1, 1
	warp_event 28, 15, ARENA_HARBOR_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 12, 20, BGEVENT_READ, ArenaHarborSignScript

	def_object_events
