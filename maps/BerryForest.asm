	object_const_def
	const BERRY_FOREST_BREEDER
	const BERRY_FOREST_BUG_MANIAC
	const BERRY_FOREST_GARDENER
	const BERRY_FOREST_LASS
	const BERRY_FOREST_FRUIT_TREE1
	const BERRY_FOREST_FRUIT_TREE2
	const BERRY_FOREST_FRUIT_TREE3
	const BERRY_FOREST_FRUIT_TREE4
	const BERRY_FOREST_FRUIT_TREE5
	const BERRY_FOREST_POKE_BALL1
	const BERRY_FOREST_POKE_BALL2

BerryForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBreederDawn:
	trainer BREEDER, DAWN, EVENT_BEAT_BREEDER_DAWN, BreederDawnSeenText, BreederDawnBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext BreederDawnAfterText
		waitbutton
		closetext
		end

TrainerBugManiacEdwin:
	trainer BUG_MANIAC, EDWIN, EVENT_BEAT_BUG_MANIAC_EDWIN, BugManiacEdwinSeenText, BugManiacEdwinBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext BugManiacEdwinAfterText
		waitbutton
		closetext
		end

TrainerGardenerLily:
	trainer GARDENER, LILY, EVENT_BEAT_GARDENER_LILY, GardenerLilySeenText, GardenerLilyBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext GardenerLilyAfterText
		waitbutton
		closetext
		end

BerryForestLassScript:
	jumptextfaceplayer BerryForestLassText

BerryForestFruitTree1:
	fruittree FRUITTREE_BERRY_FOREST_1

BerryForestFruitTree2:
	fruittree FRUITTREE_BERRY_FOREST_2

BerryForestFruitTree3:
	fruittree FRUITTREE_BERRY_FOREST_3

BerryForestFruitTree4:
	fruittree FRUITTREE_BERRY_FOREST_4

BerryForestFruitTree5:
	fruittree FRUITTREE_BERRY_FOREST_5

BerryForestMiracleSeed:
	itemball MIRACLE_SEED

BerryForestSuperPotion:
	itemball SUPER_POTION

BerryForestSignScript:
	jumptext BerryForestSignText

BerryForestMasterSignScript:
	jumptext BerryForestMasterSignText

BreederDawnSeenText:
	text "I came out here"
	line "because I heard"

	para "about some rare"
	line "#MON!"
	done

BreederDawnBeatenText:
	text "You have some"
	line "rare ones too!"
	done

BreederDawnAfterText:
	text "I heard that"
	line "APPLIN was out"
	cont "here somewhere."

	para "I haven't seen one"
	line "yet though..."
	done

BugManiacEdwinSeenText:
	text "I've been waiting"
	line "for a long time"
	cont "here."

	para "Where are all of"
	line "the bugs?!"
	done

BugManiacEdwinBeatenText:
	text "What? How?"
	done

BugManiacEdwinAfterText:
	text "What? You're"
	line "telling me there's"
	cont "no bugs out here?"

	para "What kind of"
	line "forest has no"
	cont "bugs??"
	done

GardenerLilySeenText:
	text "I came out here to"
	line "meet the BERRY"
	cont "MASTER!"

	para "You should come"
	line "too!"
	done

GardenerLilyBeatenText:
	text "Wow! Too much for"
	line "me!"
	done

GardenerLilyAfterText:
	text "I heard that the"
	line "BERRY MASTER has"

	para "brothers all over"
	line "the islands."

	para "I wonder where"
	line "they all are."
	done

BerryForestLassText:
	text "This forest is"
	line "bigger than I"
	cont "thought..."

	para "I might be a bit"
	line "lost..."
	done

BerryForestSignText:
	text "BERRY FOREST"

	para "Please take your"
	line "trash!"
	done

BerryForestMasterSignText:
	text "BERRY MASTER's"
	line "HOUSE"
	done


BerryForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 16, CRAGGY_BEACH, 2
	warp_event 29, 17, CRAGGY_BEACH, 3
	warp_event  5,  3, BERRY_FOREST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 9,  5, BGEVENT_READ, BerryForestMasterSignScript
	bg_event 25, 19, BGEVENT_READ, BerryForestSignScript

	def_object_events
	object_event 19, 15, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_TRAINER, 3, TrainerBreederDawn, -1
	object_event 19, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugManiacEdwin, -1
	object_event 11,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_TRAINER, 4, TrainerGardenerLily, -1
	object_event  6, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_SCRIPT, 0, BerryForestLassScript, -1
	object_event 23, 29, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, FIXED_COLOR_TREE, OBJECTTYPE_SCRIPT, 0, BerryForestFruitTree1, -1
	object_event 18, 20, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, FIXED_COLOR_TREE, OBJECTTYPE_SCRIPT, 0, BerryForestFruitTree2, -1
	object_event 14, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, FIXED_COLOR_TREE, OBJECTTYPE_SCRIPT, 0, BerryForestFruitTree3, -1
	object_event  8, 21, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, FIXED_COLOR_TREE, OBJECTTYPE_SCRIPT, 0, BerryForestFruitTree4, -1
	object_event  25, 4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, FIXED_COLOR_TREE, OBJECTTYPE_SCRIPT, 0, BerryForestFruitTree5, -1
	object_event  20, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_ITEMBALL, 0, BerryForestMiracleSeed, EVENT_BERRY_FOREST_MIRACLE_SEED
	object_event  9, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, COLOR_RED, OBJECTTYPE_ITEMBALL, 0, BerryForestSuperPotion, EVENT_BERRY_FOREST_SUPER_POTION
