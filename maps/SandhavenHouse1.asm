	object_const_def
	const SANDHAVEN_HOUSE1_RESIDENT

SandhavenHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

SandhavenHouse1ResidentScript:
	jumptextfaceplayer SandhavenHouse1ResidentText

SandhavenHouse1ResidentText:
	text "The wind buries"
	line "our doorstep every"
	para "day."
	done

SandhavenHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, SANDHAVEN, 2
	warp_event 3,  7, SANDHAVEN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, SandhavenHouse1ResidentScript, -1
