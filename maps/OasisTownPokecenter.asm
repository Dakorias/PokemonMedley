	object_const_def
	const OASIS_TOWN_PC_NURSE
	const OASIS_TOWN_PC_VISITOR

OasisTownPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

OasisTownPokecenterNurseScript:
	jumpstd PokecenterNurseScript

OasisTownPokecenterVisitorScript:
	jumptextfaceplayer OasisTownPokecenterVisitorText

OasisTownPokecenterBookshelfScript:
	jumptext HeraldPCBookshelfText

OasisTownPokecenterVisitorText:
	text "Everyone ends up"
	line "here sooner or"
	para "later."
	done

OasisTownPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, OASIS_TOWN, 1
	warp_event 7,  7, OASIS_TOWN, 1

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, OasisTownPokecenterBookshelfScript
	bg_event 1,  1, BGEVENT_READ, OasisTownPokecenterBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, OasisTownPokecenterNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, OasisTownPokecenterVisitorScript, -1
