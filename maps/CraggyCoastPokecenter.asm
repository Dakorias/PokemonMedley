	object_const_def
	const CRAGGY_COAST_PC_NURSE
	const CRAGGY_COAST_PC_HIKER
	const CRAGGY_COAST_PC_LASS

CraggyCoastPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CraggyCoastPCNurseScript:
	jumpstd PokecenterNurseScript

CraggyCoastPCHikerScript:
	jumptextfaceplayer CraggyCoastPCHikerText

CraggyCoastPCLassScript:
	jumptextfaceplayer CraggyCoastPCLassText

CraggyCoastPCBookshelfScript:
	jumptext HeraldPCBookshelfText

CraggyCoastPCBookshelfText:
	text "Magazines to relax"
	line "with after a long"
	cont "day out."
	done

CraggyCoastPCHikerText:
	text "We recently got"
	line "finished digging a"

	para "tunnel in the"
	line "mountain up north"

	para "for the local GYM"
	line "LEADER."

	para "It's the first"
	line "time I've ever"

	para "seen a GYM inside"
	line "a cave!"
	done

CraggyCoastPCLassText:
	text "I came here with"
	line "my dad when he was"

	para "digging out the"
	line "tunnel."

	para "I wanted to see"
	line "all of the cute"
	cont "#MON!"
	done

CraggyCoastPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, CRAGGY_COAST, 3
	warp_event 7,  7, CRAGGY_COAST, 3

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, CraggyCoastPCBookshelfScript
	bg_event 1,  1, BGEVENT_READ, CraggyCoastPCBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, CraggyCoastPCNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, CraggyCoastPCHikerScript, -1
	object_event  12, 5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, CraggyCoastPCLassScript, -1
