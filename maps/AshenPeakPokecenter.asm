	object_const_def
	const ASHEN_PEAK_PC_NURSE
	const ASHEN_PEAK_PC_VISITOR

AshenPeakPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

AshenPeakPokecenterNurseScript:
	jumpstd PokecenterNurseScript

AshenPeakPokecenterVisitorScript:
	jumptextfaceplayer AshenPeakPokecenterVisitorText

AshenPeakPokecenterBookshelfScript:
	jumptext HeraldPCBookshelfText

AshenPeakPokecenterVisitorText:
	text "The ground here is"
	line "always warm."
	para "I sleep better"
	line "than anywhere."
	done

AshenPeakPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, ASHEN_PEAK, 1
	warp_event 7,  7, ASHEN_PEAK, 1

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, AshenPeakPokecenterBookshelfScript
	bg_event 1,  1, BGEVENT_READ, AshenPeakPokecenterBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, AshenPeakPokecenterNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, AshenPeakPokecenterVisitorScript, -1
