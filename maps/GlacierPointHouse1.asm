	object_const_def
	const GLACIER_POINT_HOUSE1_RESIDENT

GlacierPointHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

GlacierPointHouse1ResidentScript:
	jumptextfaceplayer GlacierPointHouse1ResidentText

GlacierPointHouse1ResidentText:
	text "The ice is thick"
	line "enough to walk on."
	done

GlacierPointHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, GLACIER_POINT, 2
	warp_event 3,  7, GLACIER_POINT, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, GlacierPointHouse1ResidentScript, -1
