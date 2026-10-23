	object_const_def
	const FIRST_GYM_YOUNGSTER1
	const FIRST_GYM_LASS1
	const FIRST_GYM_SAILOR
	const FIRST_GYM_BLAIRE
	const FIRST_GYM_PERCY
	const FIRST_GYM_EDWARD


FirstGymBeach_MapScripts:
	def_scene_scripts
	scene_script FirstGymBeachNoop, SCENE_FIRST_GYM_ISLAND

	def_callbacks

	FirstGymBeachNoop:
		end


	Sailor1ScriptGym:
	trainer SAILOR, RONALD, EVENT_BEAT_SAILOR_RONALD, SailorRonaldSeenText, SailorRonaldBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext SailorRonaldAfterText
		waitbutton
		closetext
		end

	TrainerYoungsterAlex:
	trainer YOUNGSTER, ALEX, EVENT_BEAT_YOUNGSTER_ALEX, YoungsterAlexSeenText, YoungsterAlexBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext YoungsterAlexAfterText
		waitbutton
		closetext
		end

	TrainerLassCandice:
	trainer LASS, CANDICE, EVENT_BEAT_LASS_CANDICE, LassCandiceSeenText, LassCandiceBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext LassCandiceAfterText
		waitbutton
		closetext
		end
	
	FirstGymEdwardScript:
		faceplayer
		opentext
		checkitem EDWARD_COIN
		iftrue .EdwardGymBattle
		checkevent EVENT_FIRST_GYM_UNLOCK
		iftrue .EdwardTravelBack
		writetext FirstGymEdwardGoFindCoinText
		waitbutton
		closetext
		end

	.EdwardTravelBack
		writetext FirstGymTravelBackYesOrNoText
		yesorno
		iftrue .TravelBack
		closetext
		end

	.TravelBack
		writetext FirstGymEdwardTravelText
		waitbutton
		closetext
		special FadeOutToWhite
		pause 15
		warp HERALD_BAY, 17, 36
		end

	.EdwardGymBattle
		writetext FirstGymEdwardGymBattleIntro
		waitbutton
		closetext
		pause 4
		readvar VAR_FACING
		ifequal UP, .GoAround
		follow FIRST_GYM_EDWARD, PLAYER
		applymovement FIRST_GYM_EDWARD, FirstGymEdwardWalksUp
		stopfollow
		pause 4
		applymovement FIRST_GYM_EDWARD, FirstGymEdwardWalksToBattleSpot
		pause 3
		applymovement PLAYER, FirstGymPlayerWalksToBattleSpot
	.StartBattle
		pause 4
		opentext
		writetext FirstGymEdwardGymBattleIntro2
		waitbutton
		closetext
		winlosstext FirstGymEdwardGymBattleWin, 0
		loadtrainer EDWARD, EDWARD1
		startbattle
		reloadmapafterbattle
		setevent EVENT_BEAT_EDWARD
		opentext
		writetext FirstGymReceivedAnchorBadgeText
		playsound SFX_GET_BADGE
		waitsfx
		setflag ENGINE_ANCHORBADGE
		setmapscene HERALD_COVE, SCENE_HERALD_COVE_CAVENDISH_ROBBED
		takeitem EDWARD_COIN
		readvar VAR_BADGES
	.FightDone:
		writetext FirstGymEdwardBeatenText
		waitbutton
		closetext
		applymovement FIRST_GYM_EDWARD, FirstGymEdwardWalksBackToPlayer
		verbosegiveitem TM_TAUNT
		setevent EVENT_GOT_TM51_TAUNT
	.SpeechAfterTM:
		opentext
		writetext FirstGymEdwardFightOverText
		waitbutton
		closetext
		follow FIRST_GYM_EDWARD, PLAYER
		applymovement FIRST_GYM_EDWARD, FirstGymEdwardWalksToBoat
		stopfollow
		pause 5
		special FadeOutToWhite
		pause 15
		warp HERALD_BAY, 17, 36
		end

	.GoAround
		applymovement FIRST_GYM_EDWARD, FirstGymEdwardWalksAroundPlayer
		pause 4
		applymovement PLAYER, FirstGymPlayerWalksToBattleSpot2
		sjump .StartBattle

	FirstGymBlaireBattle:
		checkitem EDWARD_COIN
		iftrue .SkipBlaire
		checkevent EVENT_BATTLE_BLAIRE_BEACH
		iftrue .SkipGiveCoin
		opentext
		writetext PlayerStumblesOntoCoin
		waitbutton
		closetext
		opentext
		writetext PlayerFoundGymCoin
		playsound SFX_ITEM
		waitsfx
		promptbutton
		closetext
		pause 5
		opentext
		writetext FirstGymBlaireShoutsToPlayer
		waitbutton
		closetext
		setevent EVENT_BATTLE_BLAIRE_BEACH
		showemote	EMOTE_SHOCK, PLAYER, 15
		turnobject PLAYER, UP
		disappear FIRST_GYM_BLAIRE
		moveobject FIRST_GYM_BLAIRE, 23, 12
		appear FIRST_GYM_BLAIRE
		applymovement FIRST_GYM_BLAIRE, FirstGymBlaireWalksToPlayer
		pause 15
		opentext
		writetext FirstGymBlaireChallengesPlayer
		waitbutton
		closetext
		checkevent EVENT_GOT_EKANS_FROM_OAK
		iftrue .Baltoy
		checkevent EVENT_GOT_YANMA_FROM_OAK
		iftrue .Ekans
		winlosstext FirstGymBlaireWinText, 0
		setlasttalked FIRST_GYM_BLAIRE
		loadtrainer BLAIRE, BLAIRE_2_YANMA
		startbattle
		reloadmapafterbattle
		sjump .AfterBlaireBattle
	.Baltoy:
		winlosstext FirstGymBlaireWinText, 0
		setlasttalked FIRST_GYM_BLAIRE
		loadtrainer BLAIRE, BLAIRE_2_BALTOY
		startbattle
		reloadmapafterbattle
		sjump .AfterBlaireBattle
	.Ekans:
		winlosstext FirstGymBlaireWinText, 0
		setlasttalked FIRST_GYM_BLAIRE
		loadtrainer BLAIRE, BLAIRE_2_EKANS
		startbattle
		reloadmapafterbattle
		sjump .AfterBlaireBattle
	.AfterBlaireBattle:
		opentext
		writetext FirstGymBlaireAfterBattleText
		waitbutton
		closetext
		giveitem EDWARD_COIN
		applymovement FIRST_GYM_BLAIRE, FirstGymBlaireWalksFromPlayer
		disappear FIRST_GYM_BLAIRE
		end
	.SkipGiveCoin
		opentext
		writetext PlayerStumblesOntoCoin
		waitbutton
		closetext
		opentext
		verbosegiveitem EDWARD_COIN
		closetext
		end
	.SkipBlaire
		end

	FirstGymPercyBattle:
		checkitem EDWARD_COIN
		iftrue .SkipPercy
		checkevent EVENT_BATTLE_PERCY_BEACH
		iftrue .SkipPercy
		setevent EVENT_BATTLE_PERCY_BEACH
		disappear FIRST_GYM_PERCY
		moveobject FIRST_GYM_PERCY, 17, 14
		appear FIRST_GYM_PERCY
		applymovement FIRST_GYM_PERCY, FirstGymPercyRunsToPlayer
		showemote EMOTE_SHOCK, PLAYER, 15
		turnobject PLAYER, DOWN
		pause 3
		opentext
		writetext FirstGymPercyChallengesPlayer
		waitbutton
		closetext
		checkevent EVENT_GOT_EKANS_FROM_OAK
		iftrue .Baltoy
		checkevent EVENT_GOT_YANMA_FROM_OAK
		iftrue .Ekans
		winlosstext FirstGymPercyWinText, 0
		setlasttalked FIRST_GYM_PERCY
		loadtrainer PERCY, PERCY_1_YANMA
		startbattle
		reloadmapafterbattle
		sjump .AfterPercyBattle
	.Baltoy:
		winlosstext FirstGymPercyWinText, 0
		setlasttalked FIRST_GYM_PERCY
		loadtrainer PERCY, PERCY_1_BALTOY
		startbattle
		reloadmapafterbattle
		sjump .AfterPercyBattle
	.Ekans:
		winlosstext FirstGymPercyWinText, 0
		setlasttalked FIRST_GYM_PERCY
		loadtrainer PERCY, PERCY_1_EKANS
		startbattle
		reloadmapafterbattle
		sjump .AfterPercyBattle
	.AfterPercyBattle:
		opentext
		writetext FirstGymPercyAfterBattleText
		waitbutton
		closetext
		giveitem EDWARD_COIN
		applymovement FIRST_GYM_PERCY, FirstGymPercyLeavesAfterFight
		disappear FIRST_GYM_PERCY
		end
	.SkipPercy
		end

	FirstGymEdwardWalksUp:
		step UP
		step UP
		step UP
		step_end

	FirstGymEdwardWalksAroundPlayer:
		step LEFT
		step UP
		step UP
		step UP
		turn_head RIGHT
		step_end

	FirstGymEdwardWalksToBattleSpot:
		step LEFT
		turn_head RIGHT
		step_end

	FirstGymPlayerWalksToBattleSpot:
		step UP
		step RIGHT
		step RIGHT
		turn_head LEFT
		step_end

	FirstGymPlayerWalksToBattleSpot2:
		step UP
		step UP
		step RIGHT
		step RIGHT
		turn_head LEFT
		step_end

	FirstGymEdwardWalksBackToPlayer:
		step RIGHT
		step RIGHT
		step_end

	FirstGymEdwardWalksToBoat:
		step DOWN
		step DOWN
		step DOWN
		step LEFT
		turn_head DOWN
		step_end

	FirstGymBlaireWalksToPlayer:
		step DOWN
		step DOWN
		step DOWN
		step RIGHT
		step DOWN
		step DOWN
		turn_head RIGHT
		step_end

	FirstGymBlaireWalksFromPlayer:
		step DOWN
		step DOWN
		step LEFT
		step DOWN
		step DOWN
		step DOWN
		step_end

	FirstGymPercyRunsToPlayer:
		big_step UP
		big_step UP
		big_step UP
		big_step UP
		step_end

	FirstGymPercyLeavesAfterFight:
		big_step DOWN
		big_step DOWN
		big_step DOWN
		big_step DOWN
		step_end

	SailorRonaldSeenText:
		text "I'm here to help"
		line "you challengers"
		cont "with hints, but"
		para "you'll have to"
		line "beat me first!"
		done

	SailorRonaldBeatenText:
		text "You swamped me!"
		done

	SailorRonaldAfterText:
		text "Your hint from me"
		line "is that the COIN"
		cont "is beside the"
		para "pond in the"
		line "middle. That's all"
		cont "I can say!"
		done

	YoungsterAlexSeenText:
		text "Hey! Watch where"
		line "you're stepping!"

		para "You could have"
		line "stepped on it!"
		done

	YoungsterAlexBeatenText:
		text "Aww man..."
		done

	YoungsterAlexAfterText:
		text "The hint I was"
		line "given is the COIN"
		cont "was on the right"
		para "side of the"
		line "island. But where"
		cont "could it be?"
		done

	LassCandiceSeenText:
		text "Stop! Don't move!"
		line "I think I saw it"
		cont "by your shoe!"
		done

	LassCandiceBeatenText:
		text "Maybe that wasn't"
		line "it..."
		done

	LassCandiceAfterText:
		text "I was told that"
		line "the COIN was in"
		cont "different sand."
		para "Look for a patch"
		line "that stands out"
		cont "from the beach."
		done

	PlayerStumblesOntoCoin:
		text "Wait, what's that"
		line "in the sand?"

		para "..."
		done

	PlayerFoundGymCoin:
		text "<PLAYER> found"
		line "EDWARD COIN!"
		done

		FirstGymBlaireShoutsToPlayer:
			text "Hey, <PLAYER>!"
			done

		FirstGymBlaireChallengesPlayer:
			text "I see you have"
			line "the coin, but"
			cont "here's my deal:"
			para "I challenge you"
			line "to a battle now."
			cont "Whoever wins"
			para "takes the coin and"
			line "shows they're the"
			cont "strongest of us"
			cont"three. Let's go."
			done
			
		FirstGymBlaireWinText:
			text "Darn it. I thought"
			line "we'd do better"
			cont "than this."
			done
			
		FirstGymBlaireAfterBattleText:
			text "Good battle,"
			line "<PLAYER>. You're on"
			cont "top for now."
			para "Good luck with"
			line "the GYM LEADER."
			done

		FirstGymPercyChallengesPlayer:
			text "Hey <PLAYER>! I"
			line "caught a new #MON,"
			cont "and I want to look"
			para "up there for the"
			line "COIN, but first,"
			cont "I need to battle"
			cont "you!"
			done
			
		FirstGymPercyWinText:
			text "Wow! You're pretty"
			line "tough, <PLAYER>!"
			done
			
		FirstGymPercyAfterBattleText:
			text "Alright, I guess"
			line "I'm not ready to"
			cont "battle the GYM."
			para "Oh well! I'll"
			line "come back later."
			cont "See ya!"
			done

		FirstGymEdwardGoFindCoinText:
			text "Alright <PLAYER>,"
			line "we're here on the"
			cont "island!"

			para "Now, before you"
			line "can battle me, I"
			cont "have a challenge"

			para "that you have to"
			line "complete first."

			para "On the beach there"
			line "is a coin, hidden"
			cont "in the sand."

			para "Find it and bring"
			line "it to me for your"
			cont "battle."

			para "I'll give you a"
			line "hint: look for"
			cont "little piles of"
			cont "sand on the beach."
			para "I've given hints"
			line "to the other"
			cont "trainers too."
			para "Ask them after you"
			line "beat them in battle."
			cont "Good luck!"
			done

		FirstGymTravelBackYesOrNoText:
			text "Hey, you doing"
			line "alright? Or do you"
			cont "want to head back?"
			done

		FirstGymEdwardTravelText:
			text "Alright, hop in."
			line "We're heading back"
			cont "to the bay!"
			done

		FirstGymEdwardGymBattleIntro:
			text "I see you got it."
			line "Very well then,"
			cont "you earned this."
			done

		FirstGymEdwardGymBattleIntro2:
			para "I am EDWARD, I'm"
			line "the best sailor in"
			cont "the region, I love"

			para "the salty sea air,"
			line "and I don't lose"
			cont "easily."
			done

		FirstGymEdwardGymBattleWin:
			text "Well done! I knew"
			line "you were something"
			cont "special!"
			done

	 	FirstGymReceivedAnchorBadgeText:
			text "<PLAYER> received"
			line "ANCHOR BADGE!"
			done

		FirstGymEdwardBeatenText:
			text "With that badge,"
			line "you've taken your"
			cont "first steps in"

			para "the MONEGO ISLES"
			line "BATTLE CONFERENCE!"

			para "You're gonna go a"
			line "long way in it, I"
			cont "feel it."

			para "Here, take this too."
			done

		FirstGymEdwardFightOverText:
			text "That TM is TAUNT."
			line "It makes foes so"
			cont "mad they won't use"
			cont "non-damaging moves."
			para "Let's head back to"
			line "the island. Come"
			cont "with me."
			done
		

FirstGymBeach_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 14, 11, SCENE_FIRST_GYM_ISLAND, FirstGymPercyBattle
	coord_event 25, 17, SCENE_FIRST_GYM_ISLAND, FirstGymBlaireBattle

	def_bg_events

	def_object_events
	object_event  23, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerYoungsterAlex, -1
	object_event  8,  11, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassCandice, -1
	object_event  22, 25, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, Sailor1ScriptGym, -1
	object_event 31, 31, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 31, 31, SPRITE_BAD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 12, 24, SPRITE_EDWARD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FirstGymEdwardScript, -1
