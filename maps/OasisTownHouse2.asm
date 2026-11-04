	object_const_def
	const OASIS_TOWN_HOUSE2_RESIDENT

OasisTownHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

OasisTownHouse2ResidentScript:
	jumptextfaceplayer OasisTownHouse2ResidentText

OasisTownHouse2ResidentText:
	text "Travelers always"
	line "stop here to rest."
	done

OasisTownHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, OASIS_TOWN, 3
	warp_event 3,  7, OASIS_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, OasisTownHouse2ResidentScript, -1
