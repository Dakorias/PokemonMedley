	object_const_def
	const FROST_HOLLOW_PC_NURSE
	const FROST_HOLLOW_PC_VISITOR

FrostHollowPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

FrostHollowPokecenterNurseScript:
	jumpstd PokecenterNurseScript

FrostHollowPokecenterVisitorScript:
	jumptextfaceplayer FrostHollowPokecenterVisitorText

FrostHollowPokecenterBookshelfScript:
	jumptext HeraldPCBookshelfText

FrostHollowPokecenterVisitorText:
	text "My hands never get"
	line "warm here."
	para "The #MON don't"
	line "seem to mind."
	done

FrostHollowPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, FROST_HOLLOW, 1
	warp_event 7,  7, FROST_HOLLOW, 1

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, FrostHollowPokecenterBookshelfScript
	bg_event 1,  1, BGEVENT_READ, FrostHollowPokecenterBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, FrostHollowPokecenterNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, FrostHollowPokecenterVisitorScript, -1
