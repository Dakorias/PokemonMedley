object_const_def
	const HERALD_COVE_CAVENDISH
	const HERALD_COVE_EDWARD
	const HERALD_COVE_FISHER
	const HERALD_COVE_GRAMPS
	const HERALD_COVE_LASS2
	const HERALD_COVE_SAILOR5
	const HERALD_COVE_ROCKET1
	const HERALD_COVE_ROCKET2

HeraldCove_MapScripts:
	def_scene_scripts
	scene_script HeraldCoveOakEscort, SCENE_HERALD_COVE_CAVENDISH_ESCORT
	scene_script HeraldCoveOakRobbed, SCENE_HERALD_COVE_CAVENDISH_ROBBED
	scene_script HeraldCoveNoop1, SCENE_HERALD_COVE_NOOP1

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .HeraldCoveFlyPointCallback

	.HeraldCoveFlyPointCallback:
	setflag ENGINE_FLYPOINT_HERALD_COVE
	endcallback

	HeraldCoveOakEscort:
	sdefer OakEscortScript
		end

	HeraldCoveGymChallenge:
		end

	HeraldCoveOakRobbed:
		end

	HeraldCoveNoop1:
		end

	OakEscortScript:
	applymovement PLAYER, PlayerExitDoorMovement
	turnobject PLAYER, LEFT
	opentext
	writetext OakTalksToPlayerText1
	waitbutton
	closetext
	follow HERALD_COVE_CAVENDISH, PLAYER
	applymovement HERALD_COVE_CAVENDISH, OakWalksToEdward
	stopfollow
	opentext
	writetext EdwardShoutsOutText
	waitbutton
	closetext
	turnobject HERALD_COVE_CAVENDISH, LEFT
	showemote EMOTE_SHOCK, HERALD_COVE_CAVENDISH, 15
	appear HERALD_COVE_EDWARD
	applymovement HERALD_COVE_EDWARD, EdwardWalksToOak
	opentext
	writetext EdwardAndOakText
	waitbutton
	closetext
	applymovement HERALD_COVE_EDWARD, EdwardWalksToPlayer
	turnobject HERALD_COVE_CAVENDISH, DOWN
	pause 5
	turnobject PLAYER, LEFT
	pause 15
	opentext
	writetext EdwardTalksToPlayerText
	waitbutton
	closetext
	applymovement HERALD_COVE_EDWARD, EdwardWalksAway
	disappear HERALD_COVE_EDWARD
	pause 30
	turnobject PLAYER, UP
	opentext
	writetext OakTalksToPlayerText2
	waitbutton
	closetext
	setevent EVENT_LASS_BATTLE_HERALD_ROUTE
	follow HERALD_COVE_CAVENDISH, PLAYER
	applymovement HERALD_COVE_CAVENDISH, OakWalksToLab
	disappear HERALD_COVE_CAVENDISH
	playsound SFX_ENTER_DOOR
	stopfollow
	setscene SCENE_HERALD_COVE_NOOP1
	applymovement PLAYER, PlayerEntersLab
	warpcheck
	end

HeraldCoveOldRodFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .AfterOldRod
	writetext FisherAskToSeeKrabbyText
	yesorno
	iffalse .SaidNo
	special BillsGrandfather
	ifnotequal KRABBY, .NotKrabby
	scall .IsKrabby
	end

	.SaidNo
		writetext DontHaveKrabbyText
		waitbutton
		closetext
		turnobject HERALD_COVE_FISHER, DOWN
		end

	.NotKrabby
		writetext ThatsNotAKrabbyText
		waitbutton
		closetext
		turnobject HERALD_COVE_FISHER, DOWN
		end

	.AfterOldRod
		writetext FisherAfterOldRod
		waitbutton
		closetext
		end

	.IsKrabby
		writetext ThatsAKrabbyText
		waitbutton
		verbosegiveitem OLD_ROD
		setevent EVENT_GOT_OLD_ROD
		writetext ThanksForHelpingFisherText
		waitbutton
		closetext
		end

HeraldCoveLass:
	jumptextfaceplayer HeraldCoveLassText

BerryMasterScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_HERALD_BERRY_MASTER
	iftrue .TakenBerries
	writetext BerryMasterIntro
	waitbutton
	verbosegiveitem BERRY, 3
	verbosegiveitem PSNCUREBERRY, 3
	setevent EVENT_TALKED_TO_HERALD_BERRY_MASTER
.TakenBerries
	writetext BerryMasterAfterIntro
	waitbutton
	closetext
	end

BerryMasterSignScript:
	opentext
	writetext BerryMasterSignText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	pause 10
	opentext
	writetext DoesntNoticeSignText
	waitbutton
	closetext
	end

RocketRobbedOakScript:
	disappear HERALD_COVE_ROCKET1
	disappear HERALD_COVE_ROCKET2
	moveobject HERALD_COVE_ROCKET1, 30, 5
	moveobject HERALD_COVE_ROCKET2, 30, 5
	opentext
	writetext RocketShoutsText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	appear HERALD_COVE_ROCKET1
	playsound SFX_ENTER_DOOR
	pause 2
	applymovement HERALD_COVE_ROCKET1, RocketRunsIntoPlayer1
	playsound SFX_TACKLE
	applymovement PLAYER, HeraldCoveRocketPushesPlayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	pause 3
	applymovement HERALD_COVE_ROCKET1, RocketRunsIntoPlayer1
	pause 3
	opentext
	writetext RocketShoutsAtPlayer
	waitbutton
	closetext
	applymovement HERALD_COVE_ROCKET2, Rocket2RunsPastPlayer1
	opentext
	writetext RocketWeHaveToGo
	waitbutton
	closetext
	turnobject HERALD_COVE_ROCKET1, LEFT
	opentext
	writetext RocketTalksToRocket
	waitbutton
	closetext
	applymovement HERALD_COVE_ROCKET2, Rocket2RunsPastRocket
	disappear HERALD_COVE_ROCKET2
	turnobject HERALD_COVE_ROCKET1, DOWN
	opentext
	writetext RocketTalksToPlayer
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, RocketShovesPlayer
	applymovement HERALD_COVE_ROCKET1, Rocket1Leaves1
	disappear HERALD_COVE_ROCKET1
	moveobject HERALD_COVE_CAVENDISH, 30, 5
	appear HERALD_COVE_CAVENDISH
	applymovement HERALD_COVE_CAVENDISH, OakWalksToPlayer
	opentext
	writetext OakTheyStoleTheMapText
	waitbutton
	closetext
	applymovement HERALD_COVE_CAVENDISH, OakWalksToHeraldRoute
	disappear HERALD_COVE_CAVENDISH
	playmusic MUSIC_VERMILION_CITY
	setscene SCENE_HERALD_COVE_NOOP1
	setmapscene HERALD_ROUTE, SCENE_HERALD_ROUTE_NOOP1
	setevent EVENT_ROCKETS_STEAL_SEALED_MAP
	setevent EVENT_OAK_MISSING_FROM_LAB
	end

HeraldCoveSailorScript:
	jumptextfaceplayer HeraldCoveSailorText

HeraldCoveSignScript:
	jumptext HeraldCoveSignText

HeraldLabSignScript:
	jumptext HeraldLabSignText

HeraldHouseSignScript:
	jumptext HeraldHouseSignText

	PlayerExitDoorMovement:
	step DOWN
	step_end

	OakWalksToEdward:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

	EdwardWalksToOak:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

	EdwardWalksToPlayer:
	step DOWN
	turn_head RIGHT
	step_end

	EdwardWalksAway:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

	OakWalksToLab:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end

	PlayerEntersLab:
	step UP
	step_end

	HeraldCoveRocketPushesPlayer:
		fix_facing
		set_sliding
		jump_step DOWN
		remove_sliding
		remove_fixed_facing
		step_sleep 8
		step_end

		RocketRunsIntoPlayer1:
		big_step DOWN
		step_end

		Rocket2RunsPastPlayer1:
		big_step DOWN
		big_step LEFT
		big_step DOWN
		turn_head RIGHT
		step_end

		Rocket2RunsPastRocket:
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

		RocketShovesPlayer:
		fix_facing
		set_sliding
		big_step DOWN
		remove_sliding
		remove_fixed_facing
		step_sleep 8
		turn_head LEFT
		step_end

		Rocket1Leaves1:
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

		OakWalksToPlayer:
		step DOWN
		step DOWN
		step DOWN
		step_end

		OakWalksToHeraldRoute:
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step_end

	OakTalksToPlayerText1:
	text "Our lab and rooms"
	line "should be up here."

	para "Let's go and get"
	line "settled in."
	done

	EdwardShoutsOutText:
	text "???: CAVENDISH!"
	line "I knew I saw your"
	cont "ship pull in!"
	done

	EdwardAndOakText:
	text "CAVENDISH: EDWARD!"
	line "It's good to see"
	cont "you!"

	para "How are things now"
	line "that the islands"
	cont "have reopened?"

	para "EDWARD: Busier"
	line "than I'm used to."

	para "With the BATTLE"
	line "CONFERENCE openin'"

	para "soon, there's been"
	line "alot o' trainers"
	cont "lookin' to enter."
	done

	EdwardTalksToPlayerText:
	text "And who-er you? A"
	line "new trainer goin'"
	cont "to join in?"

	para "CAVENDISH: No,"
	line "<PLAYER> isn't a"
	cont "trainer."

	para "Not yet anyways,"
	line "they're one of my"
	cont "aides helping me."

	para "EDWARD: Shame,"
	line "you look like"
	cont "you'd be a good'n."

	para "CAVENDISH, send"
	line "'em by later. I'll"
		cont "get that map for"
		cont "you."
	done

	OakTalksToPlayerText2:
	text "CAVENDISH: EDWARD"
	line "is the local GYM"
	cont "LEADER."

	para "He's also sailed"
	line "everywhere you can"
	cont "around here, so"

	para "he has a map that"
	line "I asked him to get"

	para "me. We can worry"
	line "about that later."

	para "For now, I've got"
	line "something to show"
	cont "you all! Let's go!"
	done

	FisherAskToSeeKrabbyText:
		text "Hey kid, you're a"
		line "trainer right?"

		para "Do you have a"
		line "#MON that's"
		cont "called KRABBY?"

		para "I've been fishing"
		line "all day, and I"

		para "can't seem to find"
		line "any."

		para "I need to take"
		line "a picture of one"
		cont "for my daughter."

		para "So, do you have"
		line "one?"
		done

	FisherAskToSeeKrabby2Text:
		text "Hey, you're back!"
		line "Do you have it?"
		done

	DontHaveKrabbyText:
		text "Ah, well that's a"
		line "shame."

		para "I'll be here if"
		line "you find one!"
		done

	ThatsNotAKrabbyText:
		text "Oh that's not what"
		line "I need to see."

		para "I'll be here if"
		line "you find one."
		done

	FisherAfterOldRod:
		text "How's that rod"
		line "treating you?"

		para "Catch any big ones"
		line "lately?"
		done

	ThatsAKrabbyText:
		text "Perfect! That's"
		line "just what I need!"

		para "Thank you! Here,"
		line "take this as a"
		cont "thank you from me."
		done

	ThanksForHelpingFisherText:
		text "Thanks again for"
		line "your help kid."

		para "Now, go land the"
		line "big one!"
		done

	HeraldCoveLassText:
		text "This beach is good"
		line "to tan on. I enjoy"
		cont "looking out at"
		cont "the ocean too!"

		done

	BerryMasterIntro:
		text "Ah, did you come"
		line "because you heard"

		para "of the great BERRY"
		line "MASTER?"

		para "Me and my siblings"
		line "have studied them"
		cont "for many years!"

		para "I know everything"
		line "there is to know"
		cont "about berries."

		para "I'll even give you"
		line "a small selection"
		cont "of what I have."

		para "Aren't I generous?"
		line "Sadly for you, my"

		para "knowledge is too"
		line "much for you, so"

		para "that will have to"
		line "do."
		done

	BerryMasterAfterIntro:
		text "What? You want"
		line "more?"

		para "I can't offer any"
		line "more right now."

		para "Come back later."
		done

	BerryMasterSignText:
		text "THE BERRY MASTER"
		line "(self-proclaimed)"

		para "The bottom looks"
		line "like it's been"
		cont "scribbled on."
		done

		DoesntNoticeSignText:
		text "He doesn't seem to"
		line "notice at all."
		done

	HeraldCoveSignText:
		text "HERALD COVE:"

		para "The call of a new"
		line "adventure awaits."
		done

	HeraldLabSignText:
		text "HERALD COVE"
		line "RESEARCH LAB"
		done

	HeraldHouseSignText:
		text "EDWARD's HOUSE"
		done

	HeraldCoveSailorText:
		text "EDWARD's the best"
		line "sailor to sail the"
		cont "islands here."

		para "He's charted out"
		line "most of the maps"
		cont "for it too."

		para "He's also met tons"
		line "of #MON, so if"

		para "you challenge him,"
		line "be ready."

		para "The GYM LEADERS"
		line "here aren't like"

		para "the ones in other"
		line "regions."
		done

		RocketShoutsText:
		text "Alright, we got it! Let's get out of here!"
		done

		RocketShoutsAtPlayer:
		text "OW! Hey, watch it"
		line "runt, or I'll..."
		done

		RocketWeHaveToGo:
		text "Hey! Quit messing"
		line "around! We have to"
		cont "go now!"
		done

		RocketWeHaveToGoPort:
		text "Hey! Quit messing"
		line "around! We have to"
		cont "go now!"

		para "Our boat didn't"
		line "show, so we can't"
		cont "go to the port!"
		done

		RocketTalksToRocket:
		text "Alright fine, I'll"
		line "be right behind"
		cont "you."
		done

		RocketTalksToPlayer:
		text "You're lucky today"
		line "punk. Now scram!"
		done

		OakTheyStoleTheMapText:
		text "CAVENDISH:"
		line "<PLAYER>! Are you"
		cont "alright?"

		para "...Ok, good."
		line "Those goons stole"
		cont "the SEALED MAP!"

			para "I don't know why"
			line "they took it, or"
			cont "what they're doing"
			para "here, but whatever"
			line "it is, it can't"
			cont "be good."

		para "Come with me to"
		line "get it back. We"
		cont "have to stop them!"
		done

HeraldCove_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 34, 17, HERALD_PORT, 1
	warp_event 30,  5, HERALD_LAB, 1
	warp_event 19, 17, HERALD_POKECENTER, 1
	warp_event  7, 15, EDWARDS_HOUSE, 1
	warp_event 19,  5, HERALD_HOUSE, 1

	def_coord_events
	coord_event 30, 6, SCENE_HERALD_COVE_CAVENDISH_ROBBED, RocketRobbedOakScript

	def_bg_events
	bg_event 10,  4, BGEVENT_READ, BerryMasterSignScript
	bg_event 13,  7, BGEVENT_READ, HeraldCoveSignScript
	bg_event 32,  6, BGEVENT_READ, HeraldLabSignScript
	bg_event 10, 15, BGEVENT_READ, HeraldHouseSignScript

	def_object_events
	object_event  33, 18, SPRITE_PROFESSOR_CAVENDISH, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_A_POKEMON_FROM_CAVENDISH
	object_event  21,  8, SPRITE_EDWARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_A_POKEMON_FROM_CAVENDISH
	object_event  29, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HeraldCoveOldRodFisher, -1
	object_event  11,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BerryMasterScript, -1
	object_event  23, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HeraldCoveLass, -1
	object_event  23,  6, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HeraldCoveSailorScript, -1
	object_event  39,  0, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  39,  0, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
