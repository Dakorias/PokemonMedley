	object_const_def
	const HERALD_HOUSE_COOLTRAINERF

HeraldHouse_MapScripts:
	def_scene_scripts

	def_callbacks

	HeraldHouseCoolTrainerFScript:
		faceplayer
		opentext
		pokemart MARTTYPE_HOUSE, MART_HERALD_COVE
		closetext
		end

HeraldHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, HERALD_COVE, 5
	warp_event 3,  7, HERALD_COVE, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, HeraldHouseCoolTrainerFScript, EVENT_BEAT_ROCKET_THEIVES
