	object_const_def
	const BERRY_FOREST_HOUSE_GRAMPS
	const BERRY_FOREST_HOUSE_GRAMPS2

BerryForestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BerryForestMasterScript:
	faceplayer
	opentext
	checkevent EVENT_BERRY_FOREST_MASTER_FINISHED
	iftrue .OutForNow
	checkevent EVENT_BERRY_MASTER_POKEFAN_M
	iftrue .Thanks
	checkitem BERRY_BOX
	iftrue .AlreadyHasBox
	writetext BerryMasterNeedsDeliveryText
	yesorno
	iffalse .No
	writetext BerryMasterThankYouText
	waitbutton
	verbosegiveitem BERRY_BOX
	closetext
	end

	.OutForNow
		writetext BerryMasterSorryAllOutText
		waitbutton
		closetext
		end

	.No
	writetext BerryMasterNoDelivery
	waitbutton
	closetext
	end

	.Thanks
	writetext BerryMasterThanksText
	waitbutton
	closetext
	setevent EVENT_BERRY_FOREST_MASTER_FINISHED
	clearevent EVENT_BERRY_MASTER_GIVES_BERRIES
	end

	.AlreadyHasBox
	writetext BerryMasterGoDeliver
	waitbutton
	closetext
	end

	BerryForestMasterAfterScript:
		faceplayer
		opentext
		checkflag ENGINE_BERRY_FOREST_MASTER_BERRIES
		iftrue .HasNoBerries
		writetext BerryMasterGivesBerries
		waitbutton
		readvar VAR_WEEKDAY
		ifequal MONDAY, BerryMasterMondayScript
		ifequal TUESDAY, BerryMasterTuesdayScript
		ifequal WEDNESDAY, BerryMasterWednesdayScript
		ifequal THURSDAY, BerryMasterThursdayScript
		ifequal FRIDAY, BerryMasterFridayScript
		ifequal SATURDAY, BerryMasterSaturdayScript
		ifequal SUNDAY, BerryMasterSundayScript

		.HasNoBerries
		writetext BerryMasterSorryAllOutText
		waitbutton
		closetext
		end

		BerryMasterMondayScript:
			verbosegiveitem GOLD_BERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end
		BerryMasterTuesdayScript:
			verbosegiveitem PSNCUREBERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end
		BerryMasterWednesdayScript:
			verbosegiveitem PRZCUREBERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end
		BerryMasterThursdayScript:
			verbosegiveitem MYSTERYBERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end
		BerryMasterFridayScript:
			verbosegiveitem DREAM_BERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end
		BerryMasterSaturdayScript:
			verbosegiveitem MIRACLEBERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end
		BerryMasterSundayScript:
			verbosegiveitem MINT_BERRY, 3
			closetext
			setflag ENGINE_BERRY_FOREST_MASTER_BERRIES
			end

	BerryMasterWalksAround:
		step RIGHT
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step_end

	BerryMasterLeavesMovement:
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step_end

	BerryMasterNeedsDeliveryText:
		text "Hello there, I am"
		line "the BERRY MASTER."

		para "I know it's a bit"
		line "sudden, but can"
		cont "you help me?"
		done

	BerryMasterThankYouText:
		text "Oh, thank you very"
		line "much! You've saved"
		cont "me a long walk."

		para "I have a package"
		line "to deliver to"

		para "someone up north,"
		line "but I can't walk"
		cont "far these days."

		para "Take this parcel"
		line "and find him for"
		cont "me would you?"
		done

	BerryMasterNoDelivery:
		text "Ah, I see. Maybe"
		line "some other time"
		cont "then..."

	BerryMasterThanksText:
		text "Ah, so it's been"
		line "delivered then!"

		para "Thank you for your"
		line "help! I go out to"

		para "collect berries"
		line "every so often."

		para "You are welcome to"
		line "stop by and have"
		cont "some if you like."
		done

	BerryMasterGoDeliver:
		text "Thank you for"
		line "taking it again."

		para "All I was told is"
		line "that he lives"
		cont "up north."

		para "You'll have to"
		line "find him on your"
		cont "own I'm afraid."
		done

	BerryMasterGivesBerries:
		text "Ah, good timing!"
		line "I have this batch"
		cont "ready for you!"

		para "I'll be heading"
		line "to get more in"
		cont "just a moment!"
		done

	BerryMasterSorryAllOutText:
		text "Sorry, I'm fresh"
		line "out at the moment."

		para "Come back later"
		line "and I might have"
		cont "some for you!"
		done

BerryForestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, BERRY_FOREST, 3
	warp_event 3,  7, BERRY_FOREST, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, BerryForestMasterScript, EVENT_BERRY_FOREST_MASTER_FINISHED
	object_event  2, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, BerryForestMasterAfterScript, EVENT_BERRY_MASTER_GIVES_BERRIES
