	object_const_def
	const HERALD_PC_NURSE
	const HERALD_PC_LASS
	const HERALD_PC_GRANNY

HeraldPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

HeraldPCNurseScript:
	jumpstd PokecenterNurseScript

HeraldPCLassScript:
	jumptextfaceplayer HeraldPCLassText

HeraldPCGrannyScript:
	jumptextfaceplayer HeraldPCGrannyText

HeraldPCBookshelfScript:
	jumptext HeraldPCBookshelfText

HeraldPCLassText:
	text "Hehehe... I wrote"
	line "on that pompous"
	cont "old man's sign."

	para "I just wanted to"
	line "buy some berries,"

	para "but his lecture"
	line "got on my nerves!"
	done

HeraldPCGrannyText:
	text "Back before this"
	line "BATTLE CONFERENCE"
	cont "came about, there"

	para "weren't as many"
	line "towns here."

	para "Some of them were"
	line "made just for this"
	cont "new tournament!"
	done

HeraldPCBookshelfText:
	text "Magazines to relax"
	line "with after a long"
	cont "day out."
	done

HeraldPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, HERALD_COVE, 3
	warp_event 7,  7, HERALD_COVE, 3

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, HeraldPCBookshelfScript
	bg_event 1,  1, BGEVENT_READ, HeraldPCBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, HeraldPCNurseScript, -1
	object_event  2,  4, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, HeraldPCLassScript, -1
	object_event  9,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, HeraldPCGrannyScript, -1
