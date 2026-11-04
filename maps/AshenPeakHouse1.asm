	object_const_def
	const ASHEN_PEAK_HOUSE1_RESIDENT

AshenPeakHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

AshenPeakHouse1ResidentScript:
	jumptextfaceplayer AshenPeakHouse1ResidentText

AshenPeakHouse1ResidentText:
	text "The mountain"
	line "rumbles now and"
	para "then."
	para "You get used to"
	line "it."
	done

AshenPeakHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, ASHEN_PEAK, 2
	warp_event 3,  7, ASHEN_PEAK, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, AshenPeakHouse1ResidentScript, -1
