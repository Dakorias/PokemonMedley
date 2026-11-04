	object_const_def

AshenPeak_MapScripts:
	def_scene_scripts

	def_callbacks

AshenPeakSignScript:
	jumptext AshenPeakSignText

AshenPeakSignText:
	text "ASHEN PEAK:"
	para "Warm ground, warm"
	line "welcome."
	done

AshenPeak_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 5, 15, ASHEN_PEAK_POKECENTER, 1
	warp_event 20, 15, ASHEN_PEAK_HOUSE1, 1
	warp_event 26, 15, ASHEN_PEAK_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 8, 20, BGEVENT_READ, AshenPeakSignScript

	def_object_events
