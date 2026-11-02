	object_const_def
	const RUGGED_CLIFF_PC_NURSE
	const RUGGED_CLIFF_PC_YOUNGSTER
	const RUGGED_CLIFF_PC_BLACK_BELT

RuggedCliffPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

RuggedCliffPCNurseScript:
		jumpstd PokecenterNurseScript

RuggedCliffPCYoungsterScript:
		jumptextfaceplayer RuggedCliffPCYoungsterText

RuggedCliffPCBlackBeltScript:
		jumptextfaceplayer RuggedCliffPCBlackBeltText

RuggedCliffPCYoungsterText:
	text "Phew. It's a rough"
	line "time to climb all"
	cont "this way."

	para "Next time I'll"
	line "take a different"
	cont "way up."

	para "..."

	para "You're telling me"
	line "that this is the"
	cont "only way up?"

	para "..."

	para "That's a bummer."
	done

RuggedCliffPCBlackBeltText:
	text "I hope I can make"
	line "it back to KENJI"
	cont "in time..."

	para "I'm going to run"
	line "100 laps around"

	para "MT. MONEGO if I'm"
	line "late by even a"
	cont "second!"
	done

RuggedCliffPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 6,  7, RUGGED_CLIFF, 4
	warp_event 7,  7, RUGGED_CLIFF, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, RuggedCliffPCNurseScript, -1
	object_event  9, 5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, RuggedCliffPCYoungsterScript, -1
	object_event  2, 4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, RuggedCliffPCBlackBeltScript, -1
