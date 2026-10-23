	object_const_def
	const RUGGED_CLIFF_GROTTO_BUTTERFREE
	const RUGGED_CLIFF_GROTTO_GIOVANNI

RuggedCliffGrotto_MapScripts:
	def_scene_scripts

	def_callbacks

RuggedCliffGrottoButterfree:
	cry BUTTERFREE
	loadwildmon BUTTERFREE, 14
	startbattle
	disappear RUGGED_CLIFF_GROTTO_BUTTERFREE
	reloadmapafterbattle
	playmapmusic
	checkevent EVENT_RUGGED_CLIFF_MEET_GIOVANNI
	iftrue .GiovanniFinish
	end

.GiovanniFinish
	moveobject RUGGED_CLIFF_GROTTO_GIOVANNI, 21, 12
	playsound SFX_EXIT_BUILDING
	appear RUGGED_CLIFF_GROTTO_GIOVANNI
	opentext
	writetext RuggedCliffGiovanniGrottoFinish
	waitbutton
	closetext
	turnobject RUGGED_CLIFF_GROTTO_GIOVANNI, UP
	wait 5
	disappear RUGGED_CLIFF_GROTTO_GIOVANNI
	playsound SFX_EXIT_BUILDING
	waitsfx
	setevent EVENT_RUGGED_CLIFF_GROTTO_FINISH
	end

RuggedCliffGrottoSignScript:
	jumptext RuggedCliffGrottoSignText

RuggedCliffGiovanniGrottoFinish:
	text "TEST"
	done

RuggedCliffGrottoSignText:
	text "TEST"
	done


RuggedCliffGrotto_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  21, RUGGED_CLIFF, 5
	warp_event 3,  21, RUGGED_CLIFF, 5
	warp_event 2,  0, RUGGED_CLIFF_GROTTO, 5
	warp_event 3,  0, RUGGED_CLIFF_GROTTO, 6
	warp_event 10, 0, RUGGED_CLIFF_GROTTO, 3
	warp_event 11, 0, RUGGED_CLIFF_GROTTO, 4
	warp_event 10, 7, RUGGED_CLIFF_GROTTO, 9
	warp_event 11, 7, RUGGED_CLIFF_GROTTO, 10
	warp_event 12, 17, RUGGED_CLIFF_GROTTO, 3
	warp_event 13, 17, RUGGED_CLIFF_GROTTO, 4
	warp_event 13, 14, RUGGED_CLIFF_GROTTO, 13
	warp_event 13, 15, RUGGED_CLIFF_GROTTO, 14
	warp_event 23, 2, RUGGED_CLIFF_GROTTO, 3
	warp_event 23, 3, RUGGED_CLIFF_GROTTO, 4
	warp_event 20, 7, RUGGED_CLIFF_GROTTO, 17
	warp_event 21, 7, RUGGED_CLIFF_GROTTO, 18
	warp_event 20, 12, RUGGED_CLIFF_GROTTO, 3
	warp_event 21, 12, RUGGED_CLIFF_GROTTO, 4
	warp_event 13, 2, RUGGED_CLIFF_GROTTO, 3
	warp_event 13, 3, RUGGED_CLIFF_GROTTO, 4
	warp_event 10, 12, RUGGED_CLIFF_GROTTO, 3
	warp_event 10, 13, RUGGED_CLIFF_GROTTO, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 21, 15, SPRITE_BUTTERFREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_ITEMBALL, 0, RuggedCliffGrottoButterfree, EVENT_RUGGED_CLIFF_GROTTO_FINISH
	object_event 15, 21, SPRITE_ADAM_VOSS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RUGGED_CLIFF_MEET_GIOVANNI
