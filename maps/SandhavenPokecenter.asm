	object_const_def
	const SANDHAVEN_PC_NURSE
	const SANDHAVEN_PC_VISITOR

SandhavenPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

SandhavenPokecenterNurseScript:
	jumpstd PokecenterNurseScript

SandhavenPokecenterVisitorScript:
	jumptextfaceplayer SandhavenPokecenterVisitorText

SandhavenPokecenterBookshelfScript:
	jumptext HeraldPCBookshelfText

SandhavenPokecenterVisitorText:
	text "Drink plenty of"
	line "water out there."
	para "The desert is no"
	line "joke."
	done

SandhavenPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, SANDHAVEN, 1
	warp_event 7,  7, SANDHAVEN, 1

	def_coord_events

	def_bg_events
	bg_event 0,  1, BGEVENT_READ, SandhavenPokecenterBookshelfScript
	bg_event 1,  1, BGEVENT_READ, SandhavenPokecenterBookshelfScript

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, SandhavenPokecenterNurseScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, SandhavenPokecenterVisitorScript, -1
