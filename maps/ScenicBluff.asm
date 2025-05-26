	object_const_def
	const SCENIC_BLUFF_YOUNGSTER1
	const SCENIC_BLUFF_YOUNGSTER2
	const SCENIC_BLUFF_YOUNGSTER3
	const SCENIC_BLUFF_LASS
	const SCENIC_BLUFF_BLUE
	const SCENIC_BLUFF_POKE_BALL
	const SCENIC_BLUFF_FRUIT_TREE

ScenicBluff_MapScripts:
	def_scene_scripts

	def_callbacks

	TrainerBlackBeltLau:
		trainer BLACKBELT_T, LAU, EVENT_BEAT_BLACKBELT_LAU, BlackBeltLauSeenText, BlackBeltLauBeatenText, 0, .Script

		.Script:
			endifjustbattled
			opentext
			writetext BlackBeltLauAfterText
			waitbutton
			closetext
			end

	TrainerYoungsterWesley:
		trainer YOUNGSTER, WESLEY, EVENT_BEAT_YOUNGSTER_WESLEY, YoungsterWesleySeenText, YoungsterWesleyBeatenText, 0, .Script

		.Script:
			endifjustbattled
			opentext
			writetext YoungsterWesleyAfterText
			waitbutton
			closetext
			end

	TrainerHikerReggie:
		trainer HIKER, REGGIE, EVENT_BEAT_HIKER_REGGIE, HikerReggieSeenText, HikerReggieBeatenText, 0, .Script

		.Script:
			endifjustbattled
			opentext
			writetext HikerReggieAfterText
			waitbutton
			closetext
			end

	ScenicBluffBlueScript:
		opentext
		writetext ScenicBluffBlueWaitText
		waitbutton
		closetext
		pause 15
		faceplayer
		pause 5
		opentext
		writetext ScenicBluffBlueText
		waitbutton
		closetext
		applymovement SCENIC_BLUFF_BLUE, ScenicBluffBlueTeleport
		disappear SCENIC_BLUFF_BLUE
		setevent EVENT_SCENIC_BLUFF_SEEN_BLUE
		end

	ScenicBluffLassScript:
		jumptextfaceplayer ScenicBluffLassText

	ScenicBluffPearl:
		itemball PEARL

	ScenicBluffFruitTree:
		fruittree FRUITTREE_SCENIC_BLUFF

	ScenicBluffHiddenSuperPotion:
		hiddenitem SUPER_POTION, EVENT_SCENIC_BLUFF_HIDDEN_SUPER_POTION

	ScenicBluffBlueTeleport:
		teleport_from
		step_end

	BlackBeltLauSeenText:
		text "I'm going to go"
		line "and join the GYM"

		para "LEADER in the"
		line "mountain to train"
		cont "with him!"
		done

	BlackBeltLauBeatenText:
		text "Maybe I'm just not"
		line "ready."
		done

	BlackBeltLauAfterText:
		text "I still want to"
		line "go, but he's"
		cont "pretty scary."

		para "I'll have to train"
		line "more before I go"
		cont "in there."
		done

	YoungsterWesleySeenText:
		text "I'm looking for"
		line "some new #MON!"

		para "If we battle,"
		line "maybe we can draw"
		cont "them out!"
		done

	YoungsterWesleyBeatenText:
		text "I think we might"
		line "have scared them"
		cont "away."
		done

	YoungsterWesleyAfterText:
		text "I'm trying to"
		line "collect as many"
		cont "#MON as I can!"
		done

	HikerReggieSeenText:
		text "I feel good today,"
		line "I might go all the"
		cont "way to the top!"
		done

	HikerReggieBeatenText:
		text "Whew, I'm tapped"
		line "out!"
		done

	HikerReggieAfterText:
		text "I'll have to take"
		line "a breather before"
		cont "I get going again."
		done

	ScenicBluffLassText:
		text "I love watching"
		line "the sea from here."

		para "In the evening,"
		line "it's just so"
		cont "beautiful!"
		done

	ScenicBluffBlueWaitText:
		text "..."

		para "I see why gramps"
		line "came out all"
		cont "this way."

		para "It's beautiful"
		line "out here."
		done

	ScenicBluffBlueText:
		text "Sorry, was just"
		line "enjoying the view."

		para "My name is BLUE,"
		line "and I'm a GYM"
		cont "LEADER from KANTO."

		para "I was just coming"
		line "to spectate the"

		para "tournament and see"
		line "how my grandpa is"
		cont "doing."

		para "You're one of the"
		line "aides he brought"
		cont "with him, right?"

		para "He mentioned that"
		line "he was going to"

		para "give #MON to"
		line "three of you."

		para "You seem capable"
		line "enough, but it"

		para "looks like you're"
		line "leagues away from"
		cont "me right now, so"

		para "I'll let you pass"
		line "without a battle"
		cont "this time."

		para "I hope you get"
		line "strong enough to"
		cont "battle me one day."

		para "Smell ya later."
		done

ScenicBluff_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  5, MT_MONEGO, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 35, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackBeltLau, -1
	object_event  7, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterWesley, -1
	object_event 12, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerHikerReggie, -1
	object_event 23, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScenicBluffLassScript, -1
	object_event 19, 32, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScenicBluffBlueScript, EVENT_SCENIC_BLUFF_SEEN_BLUE
	object_event 18, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ScenicBluffPearl, EVENT_SCENIC_BLUFF_PEARL
	object_event 19, 30, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScenicBluffFruitTree, -1
