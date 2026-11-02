	object_const_def
	const CRAGGY_COAST_HOUSE2_SAILOR

CraggyCoastHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

CraggyCoastHouse2SailorScript:
	jumptextfaceplayer CraggyCoasthouse2SailorText

CraggyCoasthouse2SailorText:
	text "I saw a massive"
	line "meteor fall on an"

	para "island far away to"
	line "the east."

	para "Ever since it came"
	line "down, storms have"

	para "become very common"
	line "here."

	para "I wonder what is"
	line "in that meteor."
	done

CraggyCoastHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, CRAGGY_COAST, 5
	warp_event 3,  7, CRAGGY_COAST, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, CraggyCoastHouse2SailorScript, -1
