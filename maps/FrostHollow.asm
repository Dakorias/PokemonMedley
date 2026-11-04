	object_const_def

FrostHollow_MapScripts:
	def_scene_scripts

	def_callbacks

FrostHollowSignScript:
	jumptext FrostHollowSignText

FrostHollowSignText:
	text "FROST HOLLOW:"
	para "Bundle up!"
	done

FrostHollow_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 7, 15, FROST_HOLLOW_POKECENTER, 1
	warp_event 18, 15, FROST_HOLLOW_HOUSE1, 1
	warp_event 28, 15, FROST_HOLLOW_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 12, 20, BGEVENT_READ, FrostHollowSignScript

	def_object_events
