	object_const_def
	const MT_MONEGO_YOUNGSTER1
	const MT_MONEGO_YOUNGSTER2
	const MT_MONEGO_YOUNGSTER3

MtMonego_MapScripts:
	def_scene_scripts

	def_callbacks

	TrainerHikerDonny:
		trainer HIKER, DONNY, EVENT_BEAT_HIKER_DONNY, HikerDonnySeenText, HikerDonnyBeatenText, 0, .Script

		.Script:
			endifjustbattled
			opentext
			writetext HikerDonnyAfterText
			waitbutton
			closetext
			end

	TrainerYoungsterDavid:
		trainer YOUNGSTER, DAVID, EVENT_BEAT_YOUNGSTER_DAVID, YoungsterDavidSeenText, YoungsterDavidBeatenText, 0, .Script

		.Script:
			endifjustbattled
			opentext
			writetext YoungsterDavidAfterText
			waitbutton
			closetext
			end

	TrainerHikerConnor:
		trainer HIKER, CONNOR, EVENT_BEAT_HIKER_CONNOR, HikerConnorSeenText, HikerConnorBeatenText, 0, .Script

		.Script:
			endifjustbattled
			opentext
			writetext HikerConnorAfterText
			waitbutton
			closetext
			end


	HikerDonnySeenText:
		text "The light from the"
		line "GYM is keeping"
		cont "this cave lit."

		para "That means it's"
		line "ripe for"
		cont "exploring!"
		done

	HikerDonnyBeatenText:
		text "I should have"
		line "brought some"
		cont "POTIONS. . ."
		done

	HikerDonnyAfterText:
		text "This cave opened"
		line "up fairly"
		cont "recently."

		para "They were digging"
		line "it out to prepare"

		para "for the new"
		line "CONFERENCE, I"
		cont "think."
		done

	YoungsterDavidSeenText:
		text "AHHH!"
		done

	YoungsterDavidBeatenText:
		text "Don't sneak up on"
		line "me like that!"
		done

	YoungsterDavidAfterText:
		text "I think I went"
		line "the wrong way."

		para "I can't find my"
		line "way out now."
		done

	HikerConnorSeenText:
		text "I got wiped out at"
		line "the GYM. It's"
		cont "rough in there!"
		done

	HikerConnorBeatenText:
		text "You might be good"
		line "enough!"
		done

	HikerConnorAfterText:
		text "I don't know how"
		line "the challenge"
		cont "works."

		para "All I know is"
		line "that you have to"

		para "win a lot of"
		line "battles!"
		done


MtMonego_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 29, SCENIC_BLUFF, 1
	warp_event 22,  5, MOUNTAIN_GYM, 1
	warp_event 3,  11, RUGGED_CLIFF, 1
	warp_event 15,  1, RUGGED_CLIFF, 2
	warp_event 19, 11, MT_MONEGO_B1F, 1
	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerDonny, -1
	object_event  12, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, COLOR_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterDavid, -1
	object_event  18,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerConnor, -1
