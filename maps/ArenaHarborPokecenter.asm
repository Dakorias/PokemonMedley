	object_const_def
	const ARENA_HARBOR_PC_NURSE
	const ARENA_HARBOR_PC_VISITOR

ArenaHarborPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

ArenaHarborPokecenterNurseScript:
	jumpstd PokecenterNurseScript

ArenaHarborPokecenterVisitorScript:
	jumptextfaceplayer ArenaHarborPokecenterVisitorText

ArenaHarborPokecenterBookshelfScript:
	jumptext HeraldPCBookshelfText

ArenaHarborPokecenterVisitorText:
	text "Trainers come from"
	line "all over to"
	para "compete."
	done

ArenaHarborPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, ARENA_HARBOR, 1
	warp_event 7,  7, ARENA_HARBOR, 1

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, ArenaHarborPokecenterBookshelfScript
	bg_event 1,  1, BGEVENT_READ, ArenaHarborPokecenterBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, ArenaHarborPokecenterNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, ArenaHarborPokecenterVisitorScript, -1
