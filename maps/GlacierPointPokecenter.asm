	object_const_def
	const GLACIER_POINT_PC_NURSE
	const GLACIER_POINT_PC_VISITOR

GlacierPointPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

GlacierPointPokecenterNurseScript:
	jumpstd PokecenterNurseScript

GlacierPointPokecenterVisitorScript:
	jumptextfaceplayer GlacierPointPokecenterVisitorText

GlacierPointPokecenterBookshelfScript:
	jumptext HeraldPCBookshelfText

GlacierPointPokecenterVisitorText:
	text "A cold wind blows"
	line "off the glacier."
	done

GlacierPointPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, GLACIER_POINT, 1
	warp_event 7,  7, GLACIER_POINT, 1

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, GlacierPointPokecenterBookshelfScript
	bg_event 1,  1, BGEVENT_READ, GlacierPointPokecenterBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, GlacierPointPokecenterNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, GlacierPointPokecenterVisitorScript, -1
