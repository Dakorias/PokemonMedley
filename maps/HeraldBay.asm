	object_const_def
	const HERALD_BAY_PERCY
	const HERALD_BAY_EDWARD
	const HERALD_BAY_PERCY2
	const HERALD_BAY_BLAIRE
	const HERALD_BAY_SURVIVALIST
	const HERALD_BAY_LASS
	const HERALD_BAY_TM54
	const HERALD_BAY_GREAT_BALL
	const HERALD_BAY_POTION

HeraldBay_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CavendishAfterGymCallCallback
	callback MAPCALLBACK_OBJECTS, EdwardBayCallback

	CavendishAfterGymCallCallback:
	checkevent EVENT_BEAT_EDWARD
	iffalse .Done
	checkevent EVENT_CAVENDISH_CALLED_AFTER_EDWARD
	iftrue .Done
	checkcellnum PHONE_CAVENDISH
	iffalse .Done
	setevent EVENT_CAVENDISH_CALLED_AFTER_EDWARD
	phonecall CavendishPhoneCallerName
	opentext
	writetext CavendishAfterGymCallText
	waitbutton
	closetext
	hangup
	.Done:
	endcallback

CavendishPhoneCallerName:
	db "PROF. CAVENDISH@"


	EdwardBayCallback:
	checkevent EVENT_EDWARD_MISSING_FROM_HOUSE
	iftrue .EdwardPresent
	disappear HERALD_BAY_EDWARD
	.EdwardPresent
	endcallback

HeraldBayPercyScript:
	opentext
	writetext HeraldBayPercyText1
	yesorno
	iftrue .SeenEdward
	writetext HeraldBayPercyTextNoEdward
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement HERALD_BAY_PERCY, HeraldBayPercyMovementJump
	disappear HERALD_BAY_PERCY
	setevent EVENT_HERALD_BAY_PERCY
	end

.SeenEdward
	writetext HeraldBayPercyTextAlreadyMet
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement HERALD_BAY_PERCY, HeraldBayPercyMovementJump
	disappear HERALD_BAY_PERCY
	setevent EVENT_HERALD_BAY_PERCY
	end

HeraldBayEdwardScript:
	checkflag ENGINE_POKEDEX
	iftrue .EdwardAfterPokedex
	checkevent EVENT_GOT_MAP_FROM_EDWARD
	iftrue .AfterMapScript
	disappear HERALD_BAY_PERCY2
	disappear HERALD_BAY_BLAIRE
	moveobject HERALD_BAY_PERCY2, 17, 31
	moveobject HERALD_BAY_BLAIRE, 18, 31
	appear HERALD_BAY_PERCY2
	appear HERALD_BAY_BLAIRE
	applymovement HERALD_BAY_PERCY2, HeraldBayPercyRunsToPlayer
	applymovement HERALD_BAY_BLAIRE, HeraldBayBlaireWalksToPlayer
	pause 5
	turnobject HERALD_BAY_EDWARD, LEFT
	pause 12
	faceplayer HERALD_BAY_EDWARD
	opentext
	writetext HeraldBayEdwardText1
	waitbutton
	closetext
	pause 5
	turnobject PLAYER, UP
	opentext
	writetext HeraldBayBlaireText1
	waitbutton
	closetext
	pause 5
	turnobject PLAYER, LEFT
	opentext
	writetext HeraldBayPercyTextMap
	waitbutton
	closetext
	pause 4
	playsound SFX_ITEM
	opentext
	writetext PercyGetsMapText
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, DOWN
	opentext
	writetext HeraldBayEdwardText2
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, LEFT
	opentext
	writetext HeraldBayPercyText2
	waitbutton
	closetext
	pause 5
	turnobject PLAYER, UP
	opentext
	writetext HeraldBayBlaireText2
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, DOWN
	opentext
	writetext HeraldBayEdwardText3
	waitbutton
	closetext
	pause 5
	turnobject PLAYER, LEFT
	turnobject HERALD_BAY_BLAIRE, LEFT
	applymovement HERALD_BAY_PERCY2, HeraldBayPercyRunsFromPlayer
	pause 10
	turnobject PLAYER, UP
	opentext
	writetext HeraldBayBlaireText3
	waitbutton
	closetext
	pause 5
	applymovement HERALD_BAY_BLAIRE, HeraldBayBlaireWalksFromPlayer
	setscene SCENE_HERALD_ROUTE_ROCKETS
	setevent EVENT_HERALD_ROUTE_BLAIRE
	setevent EVENT_HERALD_BAY_PERCY
	setevent EVENT_GOT_MAP_FROM_EDWARD
	setevent EVENT_LASS_AT_HERALD_ROUTE
	clearevent EVENT_LASS_BATTLE_HERALD_ROUTE
	end

	.AfterMapScript
	opentext
	writetext HeraldBayEdwardText3
	waitbutton
	closetext
	end

	.EdwardAfterPokedex
		faceplayer
		opentext
		checkevent EVENT_BEAT_EDWARD
		iftrue .SpeechAfterGym
		writetext HeraldBayEdwardTraveltoIslandText
		yesorno
		iftrue .HeadToIsland
		writetext HeraldBayEdwardComeBackText
		waitbutton
		closetext
		end

	.HeadToIsland
		writetext HeraldBayEdwardLetsGoText
		waitbutton
		closetext
		setscene SCENE_FIRST_GYM_ISLAND
		special FadeOutToWhite
		pause 15
		warp FIRST_GYM_BEACH, 13, 24
		end

	.SpeechAfterGym:
		writetext HeraldBayEdwardFightOverText
		waitbutton
		closetext
		end

TrainerSurvivalistPerry:
	trainer SURVIVALIST, PERRY, EVENT_BEAT_SURVIVALIST_PERRY, SurvivalistPerrySeenText, SurvivalistPerryBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext SurvivalistPerryAfterText
		waitbutton
		closetext
		end

TrainerLassLaney:
	trainer LASS, LANEY, EVENT_BEAT_LASS_LANEY, LassLaneySeenText, LassLaneyBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext LassLaneyAfterText
		waitbutton
		closetext
		end

HeraldBayGrottoEntryScript:
	opentext
	writetext HeraldBayGrottoEntryText
	yesorno
	iftrue .HeraldBayGrottoWarp
	closetext
	end

	.HeraldBayGrottoWarp
	closetext
	playsound SFX_ENTER_DOOR
	pause 5
	warp HERALD_BAY_GROTTO, 4, 7
	end

	HeraldBaySignScript:
		jumptext HeraldBaySignText

	HeraldBayTM54:
		itemball TM_DEFENSE_CURL

	HeraldBayGreatBall:
		itemball GREAT_BALL

	HeraldBayPotion:
		itemball POTION

	HeraldBayPercyMovementJump:
		jump_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

	HeraldBayPercyRunsToPlayer:
		big_step DOWN
		big_step DOWN
		big_step DOWN
		big_step DOWN
		big_step DOWN
		turn_head RIGHT
		step_end

	HeraldBayBlaireWalksToPlayer:
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step_end

	HeraldBayPercyRunsFromPlayer:
		big_step UP
		big_step UP
		big_step UP
		big_step UP
		big_step UP
		step_end

	HeraldBayBlaireWalksFromPlayer:
		step UP
		step UP
		step UP
		step UP
		step_end

	HeraldBayPercyText1:
		text "Oh hey <PLAYER>!"
		line "I know we were"
		para "sent out to look"
		line "for the map, but"
		cont "I got excited and"
		cont "ran out here."
		para "Have you seen"
		line "EDWARD then?"
		done

	HeraldBayPercyTextNoEdward:
		text "Oh, you haven't"
		line "seen EDWARD"
		cont "either? I guess we"
		para "both just got a"
		line "bit carried away"
		cont "then."
		para "Ha ha ha!"
		line "Well, we should"
		para "probably go get"
		line "that map. I'll see"
		cont "you around!"
		done

	HeraldBayPercyTextAlreadyMet:
		text "You've already"
		line "met him? That's"
		cont "great!"
		para "..."
		para "Oh, he left it in"
		line "his boat. I think"
		cont "I saw a boat"
		cont "earlier."
		para "At least, I did"
		line "before I got lost."
		para "I'll go look for"
		line "it too. I'll see"
		cont "you later!"
		para "<PLAYER>!"
		done


	HeraldBayEdwardText1:
		text "Ah, yer' all here"
		line "then. Good. This"
		cont "is the map that I"
		para "found for PROF."
		line "CAVENDISH. I don't"
		cont "know what it is,"
		para "but it was a pain"
		line "to find, so take"
		cont "good care of it."
		done

	HeraldBayBlaireText1:
		text "Good, I've been"
		line "hearing PROF."
		cont "CAVENDISH talk"
		para "about this, and"
		line "I'm excited to see"
		cont "what it is."
		done

	HeraldBayPercyTextMap:
		text "It's all sealed up"
		line "too, whoever did"
		cont "this didn't want"
		para "anyone else to"
		line "read it. I'll take"
		cont "it, and run it"
		para "back to the"
		line "professor!"
		done

	PercyGetsMapText:
		text "PERCY got"
		line "SEALED MAP!"
		done

	HeraldBayEdwardText2:
		text "One more thing,"
		line "while you three"
		cont "are here. I want"
		para "you all to sign"
		line "up for the MONEGO"
		cont "CONFERENCE."
		para "I think you all"
		line "would be good"
		cont "trainers, and I've"
		para "already spoken"
		line "with PROF."
		cont "CAVENDISH about it"
		para "too. It'll help"
		line "you all get more"
		cont "familiar with"
		cont "MONEGO too."
		done

	HeraldBayPercyText2:
		text "That sound's"
		line "awesome! I would"
		para "love to travel"
		line "and see the world!"
		done

	HeraldBayBlaireText2:
		text "It does seem like"
		line "a good idea."
		para "Getting stronger"
		line "should help our"
		cont "research too, as"
		para "strong #MON"
		line "require strong"
		cont "trainers to battle"
		cont "them."
		done

	HeraldBayEdwardText3:
		text "Well, go on then."
		line "I'll be your first"
		cont "GYM LEADER, so"
		para "I'll be waiting"
		line "here for you once"
		cont "you get signed up."
		done

	HeraldBayBlaireText3:
		text "I guess PERCY ran"
		line "to deliver the"
		para "map, so I'll head"
		line "to sign up then."
		para "I'll see you there"
		line "<PLAYER>."
		done

	SurvivalistPerrySeenText:
		text "I heard there were"
		line "some mountains"
		cont "around here."

		para "I'm looking to set"
		line "up camp there!"
		done

	SurvivalistPerryBeatenText:
		text "Woo! Good Stuff!"
		done

	SurvivalistPerryAfterText:
		text "You know, what I"
		line "really need is a"
		cont "map..."
		done

	LassLaneySeenText:
		text "Hi! I like skirts!"
		line "They're comfy and"
		cont "easy to wear!"
		done

	LassLaneyBeatenText:
		text "Oh boo..."
		done

	LassLaneyAfterText:
		text "You should try a"
		line "skirt too!"
		done

	HeraldBaySignText:
		text "HERALD BAY"
		done

	HeraldBayGrottoEntryText:
		text "The forest seems"
		line "to open up here."

		para "Would you like to"
		line "step inside?"
		done

	CavendishAfterGymCallText:
		text "Hello, <PLAY_G>?"
		para "It's Professor"
		line "Cavendish."
		para "Come back to the"
		line "lab when you can."
		cont "I'd like to see"
		line "how your research"
		cont "is going."
		done

	HeraldBayEdwardTraveltoIslandText:
		text "Well, if it isn't"
		line "<PLAYER>! Got your"
		cont "I.D. CARD, then?"
		para "Good! Ready for"
		line "your first GYM"
		cont "CHALLENGE?"
		done

	HeraldBayEdwardLetsGoText:
		text "Alright, hop in"
		line "my boat. We'll row"
		cont "to my island"
		cont "first. Hang on!"
		done

	HeraldBayEdwardComeBackText:
		text "No? Get ready and"
		line "come back. I'll"
		cont "wait right here."
		done

	HeraldBayEdwardFightOverText:
		text "You did well"
		line "against me! I have"
		cont "high hopes"
		cont "for you!"
		done

HeraldBay_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 16, HERALD_BAY_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 4, 15, BGEVENT_READ, HeraldBayGrottoEntryScript
	bg_event 5, 15, BGEVENT_READ, HeraldBayGrottoEntryScript
	bg_event 13, 5, BGEVENT_READ, HeraldBaySignScript

	def_object_events
	object_event 17, 4, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HeraldBayPercyScript, EVENT_HERALD_BAY_PERCY
	object_event 18, 37, SPRITE_EDWARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HeraldBayEdwardScript, -1
	object_event 57, 39, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 57, 39, SPRITE_BAD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 17, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSurvivalistPerry, -1
	object_event 14, 23, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassLaney, -1
	object_event 28,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_ITEMBALL, 0, HeraldBayTM54, EVENT_HERALD_BAY_TM54
	object_event 6,  33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HeraldBayGreatBall, EVENT_HERALD_BAY_GREAT_BALL
	object_event 4,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HeraldBayPotion, EVENT_HERALD_BAY_POTION
