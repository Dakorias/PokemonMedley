	object_const_def
	const MOUNTAIN_GYM_ARENA_KENJI
	const MOUNTAIN_GYM_ARENA_BLAIRE
	const MOUNTAIN_GYM_ARENA_PERCY
	const MOUNTAIN_GYM_ARENA_HARRISON
	const MOUNTAIN_GYM_ARENA_BLACK_BELT1
	const MOUNTAIN_GYM_ARENA_BLACK_BELT2
	const MOUNTAIN_GYM_ARENA_BLACK_BELT3
	const MOUNTAIN_GYM_ARENA_BLACK_BELT4
	const MOUNTAIN_GYM_ARENA_YOUNGSTER1
	const MOUNTAIN_GYM_ARENA_YOUNGSTER2


MountainGymArena_MapScripts:
	def_scene_scripts
	scene_script MountainGymArenaEscortScene, SCENE_MOUNTAIN_GYM_ARENA_ESCORT

	def_callbacks

	MountainGymArenaEscortScene:
	sdefer MountainGymArenaEscort
		end

MountainGymArenaEscort:
	checkevent EVENT_BEAT_KENJI_TOURNAMENT
	iftrue KenjiGymFightScript
	checkevent EVENT_TOURNAMENT_ROUND_2_BEAT
	iftrue	GymTournamentRound3Script
	checkevent EVENT_TOURNAMENT_ROUND_1_BEAT
	iftrue	GymTournamentRound2Script
	sjump GymTournamentRound1Script
	end

	GymTournamentRound1Script:
		checkevent EVENT_BATTLE_PERCY_2ND_GYM
		iftrue .PercyGymFight
		moveobject MOUNTAIN_GYM_ARENA_BLAIRE, 7, 5
		appear MOUNTAIN_GYM_ARENA_BLAIRE
		follow MOUNTAIN_GYM_KENJI, PLAYER
		applymovement MOUNTAIN_GYM_KENJI, KenjiLeadsPlayerMovement
		stopfollow
		turnobject MOUNTAIN_GYM_ARENA_KENJI, LEFT
		opentext
		writetext KenjiStayHereText
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_KENJI, KenjiWalksToRefSpot
		opentext
		writetext Blaire2ndGymChallenge
		waitbutton
		closetext
		checkevent EVENT_GOT_EKANS_FROM_OAK
		iftrue .BlaireYanma
		checkevent EVENT_GOT_YANMA_FROM_OAK
		iftrue .BlaireBaltoy
		winlosstext Blaire2GymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_BLAIRE
		loadtrainer BLAIRE, BLAIRE_2_EKANS
		startbattle
		reloadmapafterbattle
		sjump .AfterBlaireBattle

		.BlaireYanma
		winlosstext Blaire2GymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_BLAIRE
		loadtrainer BLAIRE, BLAIRE_2_YANMA
		startbattle
		reloadmapafterbattle
		sjump .AfterBlaireBattle

		.BlaireBaltoy
		winlosstext Blaire2GymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_BLAIRE
		loadtrainer BLAIRE, BLAIRE_2_BALTOY
		startbattle
		reloadmapafterbattle
		sjump .AfterBlaireBattle

		.AfterBlaireBattle
		turnobject PLAYER, RIGHT
		opentext
		writetext Blaire2ndGymAfter
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_ARENA_BLAIRE, ChallengerLeavesGym
		disappear MOUNTAIN_GYM_ARENA_BLAIRE
		playsound SFX_EXIT_BUILDING
		pause 5
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiHealsPlayerMovement
		opentext
		writetext KenjiHealsAfter1st
		waitbutton
		closetext
		special HealParty
		setevent EVENT_TOURNAMENT_ROUND_1_BEAT
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	.PercyGymFight
	moveobject MOUNTAIN_GYM_ARENA_PERCY, 7, 5
	appear MOUNTAIN_GYM_ARENA_PERCY
	follow MOUNTAIN_GYM_KENJI, PLAYER
	applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiLeadsPlayerMovement
	stopfollow
	turnobject MOUNTAIN_GYM_KENJI, LEFT
	opentext
	writetext KenjiStayHereText
	waitbutton
	closetext
	applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiWalksToRefSpot
	opentext
	writetext Percy2ndGymChallenge
	waitbutton
	closetext
	checkevent EVENT_GOT_EKANS_FROM_OAK
	iftrue .PercyYanma
	checkevent EVENT_GOT_YANMA_FROM_OAK
	iftrue .PercyBaltoy
	winlosstext Percy2GymWinText, 0
	setlasttalked MOUNTAIN_GYM_ARENA_PERCY
	loadtrainer PERCY, PERCY_2_EKANS
	startbattle
	reloadmapafterbattle
	sjump .AfterPercyBattle

	.PercyYanma
	winlosstext Percy2GymWinText, 0
	setlasttalked MOUNTAIN_GYM_ARENA_PERCY
	loadtrainer PERCY, PERCY_2_YANMA
	startbattle
	reloadmapafterbattle
	sjump .AfterPercyBattle

	.PercyBaltoy
	winlosstext Percy2GymWinText, 0
	setlasttalked MOUNTAIN_GYM_ARENA_PERCY
	loadtrainer PERCY, PERCY_2_BALTOY
	startbattle
	reloadmapafterbattle
	sjump .AfterPercyBattle

	.AfterPercyBattle
	turnobject PLAYER, RIGHT
	opentext
	writetext Percy2ndGymAfter
	waitbutton
	closetext
	applymovement MOUNTAIN_GYM_ARENA_PERCY, ChallengerLeavesGym
	disappear MOUNTAIN_GYM_ARENA_PERCY
	playsound SFX_EXIT_BUILDING
	pause 5
	applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiHealsPlayerMovement
	opentext
	writetext KenjiHealsAfter1st
	waitbutton
	closetext
	special HealParty
	setevent EVENT_TOURNAMENT_ROUND_1_BEAT
	playsound SFX_ENTER_DOOR
	pause 5
	warpcheck
	end

	GymTournamentRound2Script:
		moveobject MOUNTAIN_GYM_ARENA_BLACK_BELT1, 7, 5
		appear MOUNTAIN_GYM_ARENA_BLACK_BELT1
		follow MOUNTAIN_GYM_KENJI, PLAYER
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiLeadsPlayerMovement
		stopfollow
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiWalksToRefSpot
		opentext
		writetext BlackBelt2ndGymChallenge
		waitbutton
		closetext
		checkevent EVENT_GOT_EKANS_FROM_OAK
		iftrue .BlackBelt1
		checkevent EVENT_GOT_YANMA_FROM_OAK
		iftrue .BlackBelt2
		winlosstext BlackBeltGymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_BLACK_BELT1
		loadtrainer BLACKBELT_T, HONDA3
		startbattle
		reloadmapafterbattle
		sjump .AfterBlackBeltBattle

		.BlackBelt1
		winlosstext BlackBeltGymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_BLACK_BELT1
		loadtrainer BLACKBELT_T, HONDA1
		startbattle
		reloadmapafterbattle
		sjump .AfterBlackBeltBattle

		.BlackBelt2
		winlosstext BlackBeltGymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_BLACK_BELT1
		loadtrainer BLACKBELT_T, HONDA2
		startbattle
		reloadmapafterbattle
		sjump .AfterBlackBeltBattle

		.AfterBlackBeltBattle
		turnobject PLAYER, RIGHT
		opentext
		writetext BlackBelt2ndGymAfter
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_ARENA_BLACK_BELT1, ChallengerLeavesGym
		disappear MOUNTAIN_GYM_ARENA_BLACK_BELT1
		playsound SFX_EXIT_BUILDING
		pause 5
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiHealsPlayerMovement
		opentext
		writetext KenjiHealsAfter2nd
		waitbutton
		closetext
		special HealParty
		setevent EVENT_TOURNAMENT_ROUND_2_BEAT
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	GymTournamentRound3Script:
		moveobject MOUNTAIN_GYM_ARENA_HARRISON, 7, 5
		appear MOUNTAIN_GYM_ARENA_HARRISON
		follow MOUNTAIN_GYM_ARENA_KENJI, PLAYER
		applymovement MOUNTAIN_GYM_KENJI, KenjiLeadsPlayerMovement
		stopfollow
		applymovement MOUNTAIN_GYM_KENJI, KenjiWalksToRefSpot
		opentext
		writetext Harrison2ndGymChallenge
		waitbutton
		closetext
		winlosstext HarrisonGymWinText, 0
		setlasttalked MOUNTAIN_GYM_ARENA_HARRISON
		loadtrainer HARRISON, HARRISON1
		startbattle
		reloadmapafterbattle
		turnobject PLAYER, RIGHT
		opentext
		writetext Harrison2ndGymAfter
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_ARENA_HARRISON, ChallengerLeavesGym
		disappear MOUNTAIN_GYM_ARENA_HARRISON
		playsound SFX_EXIT_BUILDING
		pause 5
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiHealsPlayerMovement
		opentext
		writetext KenjiHealsAfter3rd
		waitbutton
		closetext
		special HealParty
		setevent EVENT_BEAT_KENJI_TOURNAMENT
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	KenjiGymFightScript:
		follow MOUNTAIN_GYM_KENJI, PLAYER
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiLeadsPlayerMovement
		stopfollow
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiWalksToBattleSpot
		clearevent EVENT_TOURNAMENT_ROUND_1_BEAT
		clearevent EVENT_TOURNAMENT_ROUND_2_BEAT
		clearevent EVENT_BEAT_KENJI_TOURNAMENT
		opentext
		writetext KenjiReadyforGymFight
		waitbutton
		closetext
		winlosstext KenjiGymBattleWin, 0
		loadtrainer KENJI, KENJI1
		startbattle
		reloadmapafterbattle
		turnobject PLAYER, RIGHT
		setevent EVENT_BEAT_KENJI
		applymovement MOUNTAIN_GYM_ARENA_KENJI, KenjiGiveBadgeMovement
		opentext
		writetext ReceivedCrushBadgeText
		playsound SFX_GET_BADGE
		waitsfx
		setflag ENGINE_CRUSHBADGE
		readvar VAR_BADGES
		writetext KenjiBeatenText
		waitbutton
		writetext KenjiFightOverText
		waitbutton
		closetext
		special HealParty
		playsound SFX_ENTER_DOOR
		pause 5
		setscene SCENE_MOUNTAIN_GYM_BREAK_MOVEMENT
		special FadeOutToWhite
		warp MT_MONEGO, 22, 6
		end

	KenjiLeadsPlayerMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step_end

	KenjiWalksToRefSpot:
	step DOWN
	step DOWN
	turn_head UP
	step_end

	KenjiHealsPlayerMovement:
	step UP
	step UP
	turn_head LEFT
	step_end

	ChallengerLeavesGym:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

	KenjiWalksToBattleSpot:
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

	KenjiGiveBadgeMovement:
	step LEFT
	step LEFT
	step_end

	KenjiStayHereText:
		text "Stand here."
		done

	Percy2ndGymChallenge:
		text "PERCY: <PLAYER>! I"
		line "knew we would get"
		cont "to battle!"

		para "Let's get this"
		line "show on the road!"
		done

	Percy2GymWinText:
		text "Man, you really"
		line "tough you know?"
		done

	Percy2ndGymAfter:
		text "Contrats, <PLAYER>!"
		line "You earned it!"

		para "I'm going to train"
		line "some more and come"
		cont "back later."

		para "See you around!"
		done

	KenjiHealsAfter1st:
		text "KENJI: Well done,"
		line "have a short rest."

		para "When you're ready,"
		line "your next battle"
		cont "will begin!"
		done

	Blaire2ndGymChallenge:
		text "BLAIRE: <PLAYER>."
		line "I was hoping we"
		cont "would battle."

		para "I'm glad, because"
		line "now I can start to"

		para "show you how much"
		line "stronger I am."
		cont "Let's do this!"
		done

	Blaire2GymWinText:
		text "What?! But how?"
		done

	Blaire2ndGymAfter:
		text ". . . Fine. You"
		line "win for now."

		para "But don't you get"
		line "comfy. You should"

		para "keep training hard"
		line "so it feels right"

		para "when I beat you."
		line "See you around."
		done

	Harrison2ndGymChallenge:
		text "Hi there. Name's"
		line "HARRISON by the"
		cont "way."

		para "I never caught"
		line "your name either."

		para "...<PLAYER>?"
		line "Good to meet you!"

		para "Alright, well now"
		line "that we got that"

		para "over with, lets"
		line "battle!"
		done

	HarrisonGymWinText:
		text "Wow, you're really"
		line "something!"
		done

	Harrison2ndGymAfter:
		text "Guess I have some"
		line "training to do."

		para "I'll get going,"
		line "maybe I'll see you"
		cont "around. See ya!"
		done

	KenjiHealsAfter2nd:
		text "KENJI: Very good!"
		line "Have a short rest."

		para "When you're ready,"
		line "your next battle"
		cont "will begin!"
		done

	BlackBelt2ndGymChallenge:
		text "I'm glad I get to"
		line "battle with you."

		para "You are a worthy"
		line "opponent, so let"
		cont "us begin!"
		done

	BlackBeltGymWinText:
		text "Down and out!"
		done

	BlackBelt2ndGymAfter:
		text "I can see how you"
		line "made it this far."

		para "I'll be rooting"
		line "for you to go"
		cont "all the way!"
		done

	KenjiHealsAfter3rd:
		text "KENJI: Great job!"
		line "Have a short rest."

		para "When you're ready,"
		line "your next battle"
		cont "will begin!"
		done

	KenjiReadyforGymFight:
		text "It is not often"
		line "that someone goes"
		cont "undefeated here."

		para "I am KENJI, the"
		line "martial arts"

		para "master on these"
		line "islands."

		para "I have trained my"
		line "entire life."

		para "I will not lose."
		line "Lets go."
		done

	KenjiGymBattleWin:
		text "Ah, well done!"
		line "You have earned"
		cont "the CRUSH BADGE!"
		done

	ReceivedCrushBadgeText:
		text "<PLAYER> received"
		line "the CRUSH BADGE!"
		done

	KenjiBeatenText:
		text "Congratulations!"
		line "You are the clear"
		cont "winner here."

		para "It was no contest"
		line "at all!"
		done

	KenjiFightOverText:
		text "You will do well"
		line "as you continue"

		para "to obtain more"
		line "badges."

		para "I wish you the"
		line "best of luck!"
		done

MountainGymArena_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 13, MOUNTAIN_GYM_BREAK, 2
	warp_event  4,  5, MOUNTAIN_GYM_BREAK, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  13, SPRITE_KENJI, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KenjiTalkToScript, -1
	object_event  11, 11, SPRITE_BAD_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  11, 11, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  11, 11, SPRITE_HARRISON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  11, 11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event   2,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event   6,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event   7,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event   4,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event   5,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
