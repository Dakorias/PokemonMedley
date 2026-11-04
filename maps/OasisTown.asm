	object_const_def

OasisTown_MapScripts:
	def_scene_scripts

	def_callbacks

OasisTownSignScript:
	jumptext OasisTownSignText

OasisTownSignText:
	text "OASIS TOWN:"
	para "A green spot in a"
	line "sea of sand."
	done

OasisTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 15, OASIS_TOWN_POKECENTER, 1
	warp_event 12, 15, OASIS_TOWN_HOUSE1, 1
	warp_event 28, 15, OASIS_TOWN_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 16, 20, BGEVENT_READ, OasisTownSignScript

	def_object_events
