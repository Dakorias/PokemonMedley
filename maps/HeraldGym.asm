	object_const_def
	const HERALD_GYM_EDWARD

HeraldGym_MapScripts:
	def_scene_scripts

	def_callbacks

	EdwardGymScript:
		faceplayer
		opentext
		checkevent EVENT_BEAT_EDWARD
		iftrue .SpeechAfterTM
		checkitem EDWARD_COIN
		iftrue .HeraldGymBattle
		checkevent EVENT_GYM_TRAINERS_IN_HERALD_COVE
		iffalse EdwardGoOutside
		checkitem ID_CARD
		iftrue EdwardStartGymChallengeScript
		writetext EdwardComeBackLaterText
		waitbutton
		closetext
		end
	.HeraldGymBattle:
		writetext EdwardGymBattleIntro
		waitbutton
		closetext
		winlosstext EdwardGymBattleWin, 0
		loadtrainer EDWARD, EDWARD1
		startbattle
		reloadmapafterbattle
		setevent EVENT_BEAT_EDWARD
		opentext
		writetext ReceivedAnchorBadgeText
		playsound SFX_GET_BADGE
		waitsfx
		setflag ENGINE_ANCHORBADGE
		setmapscene HERALD_COVE, SCENE_HERALD_COVE_CAVENDISH_ROBBED
		takeitem EDWARD_COIN
		readvar VAR_BADGES
	.FightDone:
		writetext EdwardBeatenText
		waitbutton
	.SpeechAfterTM:
		writetext EdwardFightOverText
		waitbutton
		closetext
		end

	EdwardStartGymChallengeScript:
		writetext EdwardExplainsGymChallenge
		yesorno
		iffalse .No
		writetext EdwardGivesGymChallenge
		waitbutton
		closetext
		end

	.No
		writetext EdwardNoGymChallenge
		waitbutton
		closetext
		end

	EdwardMapScript:
		writetext EdwardGivesMapText
		waitbutton
		verbosegiveitem SEALED_MAP
		setevent EVENT_GOT_MAP_FROM_EDWARD
		writetext PlayerShouldJoinConference
		waitbutton
		closetext
		setmapscene HERALD_LAB, SCENE_HERALD_LAB_POKEDEX
		end

	PlayerShouldJoinConference:
		text "Sign up for the"
		line "MONEGO CONFERENCE!"
		done

	EdwardGoOutside:
		writetext EdwardGoOutsideText
		waitbutton
		closetext
		end

	EdwardHowDidYouGetHereScript:
		writetext EdwardHowDidYouGetHereText
		waitbutton
		closetext
		end

	EdwardComeBackLaterText:
		text "Come back once"
		line "you're all regis-"
		cont "tered up."

		para "I'll give you a"
		line "good challenge!"
		done

	EdwardHowDidYouGetHereText:
		text "Cheatn mutherfuckr"
		done

	EdwardExplainsGymChallenge:
		text "<PLAYER>! I see"
		line "you have an I.D."
		cont "CARD now."

		para "So that means you"
		line "must be here to"
		cont "challenge me!"
		done

	EdwardGivesGymChallenge:
		text "Great! Before you"
		line "can battle me, I"
		cont "have a challenge"

		para "you have to finish"
		line "first."

		para "On the beach there"
		line "is a coin, hidden"
		cont "in the sand."

		para "Find it and bring"
		line "it to me for your"
		cont "battle."

		para "There will be"
		line "other trainers"
		cont "looking for it, so"

		para "be prepared for a"
		line "fight! Now go on"
		cont "and find it!"
		done

	EdwardGoOutsideText:
		text "What are you wait"
		line "-ing for? Get out"
		cont "there!"
		done

	EdwardNoGymChallenge:
		text "No? Alright then."
		line "Come back when"
		cont "you want to."

		para "We can start then,"
		line "so make sure"
		cont "you're ready!"
		done

	EdwardGymBattleIntro:
		text "I see you got it."
		line "Very well then,"
		cont "you earned this."

		para "I am EDWARD, I'm"
		line "the best sailor in"
		cont "the region, I love"

		para "the salty sea air,"
		line "and I don't lose"
		cont "easily. Lets go."
		done

	EdwardGymBattleWin:
		text "Well done! I knew"
		line "you were something"
		cont "special!"
		done

	ReceivedAnchorBadgeText:
		text "<PLAYER> received"
		line "ANCHOR BADGE!"
		done
	EdwardBeatenText:
		text "With that badge,"
		line "you've taken your"
		cont "first steps in"

		para "the MONEGO ISLES"
		line "BATTLE CONFERENCE!"

		para "You're gonna go a"
		line "long way in it, I"
		cont "feel it."
		done

	EdwardFightOverText:
		text "Stop by anytime!"
		line "I might have you"
		cont "rematch me soon!"
		done

HeraldGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, HERALD_COVE, 4
	warp_event  5,  7, HERALD_COVE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_EDWARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EdwardGymScript, -1
