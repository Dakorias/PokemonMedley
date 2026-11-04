	object_const_def

Sandhaven_MapScripts:
	def_scene_scripts

	def_callbacks

SandhavenSignScript:
	jumptext SandhavenSignText

SandhavenSignText:
	text "SANDHAVEN:"
	para "Water is worth"
	line "more than gold."
	done

Sandhaven_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 15, SANDHAVEN_POKECENTER, 1
	warp_event 24, 15, SANDHAVEN_HOUSE1, 1
	warp_event 30, 15, SANDHAVEN_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 10, 20, BGEVENT_READ, SandhavenSignScript

	def_object_events
