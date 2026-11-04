	object_const_def
	const GLACIER_POINT_HOUSE2_RESIDENT

GlacierPointHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

GlacierPointHouse2ResidentScript:
	jumptextfaceplayer GlacierPointHouse2ResidentText

GlacierPointHouse2ResidentText:
	text "I have never seen"
	line "it melt."
	done

GlacierPointHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, GLACIER_POINT, 3
	warp_event 3,  7, GLACIER_POINT, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, GlacierPointHouse2ResidentScript, -1
