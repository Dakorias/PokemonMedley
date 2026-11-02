	object_const_def
	const BEACH_GROTTO_POKE_BALL

BeachGrotto_MapScripts:
	def_scene_scripts

	def_callbacks


BeachGrottoMysticWater:
	itemball MYSTIC_WATER

BeachGrotto_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4,  7, CRAGGY_BEACH, 4
	warp_event 5,  7, CRAGGY_BEACH, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_ITEMBALL, 0, BeachGrottoMysticWater, EVENT_BEACH_GROTTO_MYSTIC_WATER
