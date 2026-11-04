	object_const_def
	const ASHEN_PEAK_HOUSE2_RESIDENT

AshenPeakHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

AshenPeakHouse2ResidentScript:
	jumptextfaceplayer AshenPeakHouse2ResidentText

AshenPeakHouse2ResidentText:
	text "Careful on the"
	line "rocks up north."
	done

AshenPeakHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, ASHEN_PEAK, 3
	warp_event 3,  7, ASHEN_PEAK, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, AshenPeakHouse2ResidentScript, -1
