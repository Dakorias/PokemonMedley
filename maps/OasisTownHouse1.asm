	object_const_def
	const OASIS_TOWN_HOUSE1_RESIDENT

OasisTownHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

OasisTownHouse1ResidentScript:
	jumptextfaceplayer OasisTownHouse1ResidentText

OasisTownHouse1ResidentText:
	text "Our well has never"
	line "run dry."
	done

OasisTownHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, OASIS_TOWN, 2
	warp_event 3,  7, OASIS_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, OasisTownHouse1ResidentScript, -1
