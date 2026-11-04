	object_const_def
	const SANDHAVEN_HOUSE2_RESIDENT

SandhavenHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

SandhavenHouse2ResidentScript:
	jumptextfaceplayer SandhavenHouse2ResidentText

SandhavenHouse2ResidentText:
	text "I came here for"
	line "the sunsets."
	done

SandhavenHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, SANDHAVEN, 3
	warp_event 3,  7, SANDHAVEN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, SandhavenHouse2ResidentScript, -1
