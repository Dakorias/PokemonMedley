	object_const_def
	const HERALD_GROTTO_COTTONEE
	const HERALD_GROTTO_SHINX
	const HERALD_GROTTO_MURKROW_DUSK
	const HERALD_GROTTO_MURKROW_NITE
	const HERALD_GROTTO_POKE_BALL

HeraldGrotto_MapScripts:
	def_scene_scripts

	def_callbacks


HeraldGrottoCottonee:
	cry COTTONEE
	loadwildmon COTTONEE, 7
	startbattle
	disappear HERALD_GROTTO_COTTONEE
	reloadmapafterbattle
	playmapmusic
	setevent EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	end

HeraldGrottoShinx:
	cry SHINX
	loadwildmon SHINX, 7
	startbattle
	disappear HERALD_GROTTO_SHINX
	reloadmapafterbattle
	playmapmusic
	setevent EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	end

HeraldGrottoMurkrow:
	cry HOUNDOUR
	loadwildmon HOUNDOUR, 7
	startbattle
	disappear HERALD_GROTTO_MURKROW_DUSK
	disappear HERALD_GROTTO_MURKROW_NITE
	reloadmapafterbattle
	playmapmusic
	setevent EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	end

HeraldGrottoRevive:
	itemball REVIVE

HeraldGrotto_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  13, HERALD_ROUTE, 2
	warp_event 3,  13, HERALD_ROUTE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 2,  1, SPRITE_COTTONEE, SPRITEMOVEDATA_STILL, 0, 0, -1, MORN, COLOR_GREEN, OBJECTTYPE_SCRIPT, 0, HeraldGrottoCottonee, EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	object_event 2,  1, SPRITE_SHINX, SPRITEMOVEDATA_STILL, 0, 0, -1, DAY, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, HeraldGrottoShinx, EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	object_event 2,  1, SPRITE_MURKROW, SPRITEMOVEDATA_STILL, 0, 0, -1, EVE, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, HeraldGrottoMurkrow, EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	object_event 2,  1, SPRITE_MURKROW, SPRITEMOVEDATA_STILL, 0, 0, -1, NITE, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, HeraldGrottoMurkrow, EVENT_HERALD_GROTTO_POKEMON_FOUGHT
	object_event 7,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_ITEMBALL, 0, HeraldGrottoRevive, EVENT_HERALD_GROTTO_REVIVE
