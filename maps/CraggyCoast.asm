	object_const_def
	const CRAGGY_COAST_CLERK1
	const CRAGGY_COAST_CLERK2
	const CRAGGY_COAST_GRAMPS
	const CRAGGY_COAST_FISHER1
	const CRAGGY_COAST_FISHER2
	const CRAGGY_COAST_FISHER3
	const CRAGGY_COAST_LASS
	const CRAGGY_COAST_TEACHER
	const CRAGGY_COAST_YOUNGSTER

CraggyCoast_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .CraggyCoastFlyPointCallback

	.CraggyCoastFlyPointCallback:
	setflag ENGINE_FLYPOINT_CRAGGY_COAST
	endcallback

CraggyCoastClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CRAGGY_COAST1
	closetext
	end

CraggyCoastClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CRAGGY_COAST2
	closetext
	end

CraggyCoastClerk3Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CRAGGY_COAST3
	closetext
	end

CraggyCoastClerk4Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CRAGGY_COAST4
	closetext
	end

CraggyCoastGramps:
	jumptextfaceplayer CraggyCoastGrampsText

CraggyCoastFisher1:
	opentext
	writetext CraggyCoastFisher1Text
	waitbutton
	closetext
	faceplayer
	opentext
	writetext CraggyCoastFisher1AfterText
	waitbutton
	closetext
	turnobject CRAGGY_COAST_FISHER1, RIGHT
	end

CraggyCoastFisher2:
	jumptextfaceplayer CraggyCoastFisher2Text

CraggyCoastFisher3:
	jumptextfaceplayer CraggyCoastFisher3Text

CraggyCoastLass:
	jumptextfaceplayer CraggyCoastLassText

CraggyCoastSignScript:
	jumptext CraggyCoastSignText

FishingHouseSignScript:
	jumptext FishingHouseSignText

CraggyCoastGrampsText:
	text "You know, before"
	line "they started work"

	para "on the BATTLE"
	line "CONFERENCE, things"
	cont "were quiet here."

	para "Occasionally, we"
	line "would get people"
	cont "visiting, but now"

	para "its endless waves"
	line "of trainers!"

	para "Some kid in green"
	line "nearly knocked me"

	para "over as he ran"
	line "past earlier!"

	para "I'll be glad when"
	line "it's all back to"
	cont "normal."
	done

CraggyCoastFisher1Text:
	text "Agh, darn it! It"
	line "got away. . ."
	done

CraggyCoastFisher1AfterText:
	text "The fish just"
	line "don't bite like"
	cont "they used to. . ."
	done

CraggyCoastFisher2Text:
	text "I think the people"
	line "here for the new"

	para "tournament are too"
	line "loud."

	para "Now don't get me"
	line "wrong, we love"
	cont "having visitors,"

	para "but they keep"
	line "scarin' the fish"
	cont "away!"
	done

CraggyCoastFisher3Text:
	text "The house up north"
	line "is where all the"
	cont "fishermen gather."

	para "We talk about our"
	line "best catches, and"
	cont "our worst flops."

	para "Sometimes you may"
	line "even catch a"
	cont "battle there!"
	done

CraggyCoastLassText:
	text "I'm just passing"
	line "through here, I'm"

	para "going to enter in"
	line "the CONFERENCE!"

	para "Now I just need to"
	line "find where I"
	cont "register. . ."
	done

FishingHouseSignText:
	text "The Fishing House"
	done

CraggyCoastSignText:
	text "CRAGGY COAST:"

	para "A sea town full"
	line "of life."
	done

CraggyCoast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 29, NS_GATE, 3
	warp_event  6, 29, NS_GATE, 4
	warp_event  7, 15, CRAGGY_COAST_POKECENTER, 1
	warp_event  15, 17, CRAGGY_COAST_HOUSE1, 1
	warp_event  11, 27, CRAGGY_COAST_HOUSE2, 1
	warp_event  31, 7, CRAGGY_COAST_FISHING, 1

	def_coord_events

	def_bg_events
	bg_event 16, 20, BGEVENT_READ, CraggyCoastSignScript
	bg_event 32,  8, BGEVENT_READ, FishingHouseSignScript

	def_object_events
	object_event  21,  27, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_GREEN, OBJECTTYPE_SCRIPT, 0, CraggyCoastClerk1Script, -1
	object_event  19,  29, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, CraggyCoastClerk2Script, -1
	object_event  10,  21, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, CraggyCoastGramps, -1
	object_event  33,  13, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, CraggyCoastFisher1, -1
	object_event  28,  17, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, CraggyCoastFisher2, -1
	object_event  31,  24, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, CraggyCoastFisher3, -1
	object_event  24,   7, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, CraggyCoastLass, -1
	object_event  18,  26, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, CraggyCoastClerk3Script, -1
	object_event  21,  25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_SCRIPT, 0, CraggyCoastClerk4Script, -1
