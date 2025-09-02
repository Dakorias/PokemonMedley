	object_const_def
	const	HERALD_COVE_OAK
	const	HERALD_COVE_EDWARD
	const HERALD_COVE_SAILOR1
	const HERALD_COVE_SAILOR2
	const HERALD_COVE_SAILOR3
	const HERALD_COVE_SAILOR4
	const HERALD_COVE_YOUNGSTER1
	const HERALD_COVE_LASS1
	const HERALD_COVE_PERCY
	const HERALD_COVE_FISHER
	const HERALD_COVE_GRAMPS
	const HERALD_COVE_LASS2
	const HERALD_COVE_SAILOR5
	const HERALD_COVE_ROCKET1
	const HERALD_COVE_ROCKET2

HeraldCove_MapScripts:
	def_scene_scripts
	scene_script HeraldCoveOakEscort, SCENE_HERALD_COVE_OAK_ESCORT
	scene_script HeraldCoveGymChallenge, SCENE_HERALD_COVE_GYM_CHALLENGE
	scene_script HeraldCoveOakRobbed, SCENE_HERALD_COVE_OAK_ROBBED
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
	follow HERALD_COVE_OAK, PLAYER
	applymovement HERALD_COVE_OAK, OakWalksToEdward
	stopfollow
	opentext
	writetext EdwardShoutsOutText
	waitbutton
	closetext
	turnobject HERALD_COVE_OAK, LEFT
	showemote EMOTE_SHOCK, HERALD_COVE_OAK, 15
	appear HERALD_COVE_EDWARD
	applymovement HERALD_COVE_EDWARD, EdwardWalksToOak
	opentext
	writetext BastionAndOakText
	waitbutton
	closetext
	applymovement HERALD_COVE_EDWARD, EdwardWalksToPlayer
	turnobject HERALD_COVE_OAK, DOWN
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
	follow HERALD_COVE_OAK, PLAYER
	applymovement HERALD_COVE_OAK, OakWalksToLab
	disappear HERALD_COVE_OAK
	playsound SFX_ENTER_DOOR
	stopfollow
	setscene SCENE_HERALD_COVE_NOOP1
	pause 5
	applymovement PLAYER, PlayerEntersLab
	warpcheck
	end

GymChallengeScript:
Sailor1ScriptGym:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SAILOR_RONALD
	iftrue .Skip
	checkitem EDWARD_COIN
	iftrue .FightSailorRonaldScript
	writetext SailorGoFindTheCoin
	waitbutton
	closetext
	applymovement PLAYER, PlayerExitDoorMovement
	end
.Skip
	writetext SailorRonaldAfterFight
	waitbutton
	closetext
	end
.FightSailorRonaldScript
	takeitem EDWARD_COIN
	setevent EVENT_GYM_TRAINERS_IN_HERALD_COVE
	clearevent EVENT_BEAT_LASS_CANDICE
	clearevent EVENT_BEAT_YOUNGSTER_ALEX
	writetext SailorRonaldBeforeFight
	waitbutton
	closetext
	winlosstext SailorRonaldWinText, 0
	setlasttalked HERALD_COVE_SAILOR1
	loadtrainer SAILOR, RONALD
	startbattle
	reloadmapafterbattle
	opentext
	writetext SailorRonaldAfterFight
	waitbutton
	closetext
	setevent EVENT_BEAT_SAILOR_RONALD
	setevent EVENT_GYM_TRAINERS_IN_HERALD_COVE
	giveitem EDWARD_COIN
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear HERALD_COVE_SAILOR1
	disappear HERALD_COVE_SAILOR2
	disappear HERALD_COVE_SAILOR3
	disappear HERALD_COVE_SAILOR4
	disappear HERALD_COVE_YOUNGSTER1
	disappear HERALD_COVE_LASS1
	setscene SCENE_HERALD_COVE_NOOP1
	pause 25
	special FadeInFromBlack
	end

Sailor2and3ScriptGym:
	faceplayer
	opentext
	checkitem EDWARD_COIN
	iftrue .SailorGoBackToGym
	writetext SailorGoFindCoinYN
	yesorno
	iftrue SailorEndChallengeEarly
	closetext
	end
.SailorGoBackToGym:
	writetext Sailor2and3GoToGymText
	waitbutton
	closetext
	end

PokecenterEnterScript:
	turnobject PLAYER, LEFT
	opentext
	checkitem EDWARD_COIN
	iftrue .SailorGoBackToGym
	writetext SailorGoFindCoinYN
	yesorno
	iftrue SailorEndChallengeEarly
	closetext
	applymovement PLAYER, PlayerExitDoorMovement
	end
.SailorGoBackToGym:
	writetext Sailor2and3GoToGymText
	waitbutton
	closetext
	applymovement PLAYER, PlayerExitDoorMovement
	end

SailorEndChallengeEarly:
	writetext SailorEndChallengeText
	waitbutton
	closetext
	setevent EVENT_GYM_TRAINERS_IN_HERALD_COVE
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear HERALD_COVE_SAILOR1
	disappear HERALD_COVE_SAILOR2
	disappear HERALD_COVE_SAILOR3
	disappear HERALD_COVE_SAILOR4
	disappear HERALD_COVE_YOUNGSTER1
	disappear HERALD_COVE_LASS1
	clearevent EVENT_BEAT_YOUNGSTER_ALEX
	clearevent EVENT_BEAT_LASS_CANDICE
	setscene SCENE_HERALD_COVE_NOOP1
	pause 25
	special FadeInFromBlack
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

	HeraldCoveRivalGymBattle:
		checkitem EDWARD_COIN
		iftrue .Skip
		checkevent EVENT_BATTLE_PERCY_BEACH
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
		writetext PercyShoutsDowntoPlayer
		waitbutton
		closetext
		setevent EVENT_BATTLE_PERCY_BEACH
		showemote	EMOTE_SHOCK, PLAYER, 15
		turnobject PLAYER, UP
		disappear HERALD_COVE_PERCY
		moveobject HERALD_COVE_PERCY, 23, 12
		appear HERALD_COVE_PERCY
		applymovement HERALD_COVE_PERCY, PercyRunsToLedge
		playsound SFX_JUMP_OVER_LEDGE
		applymovement HERALD_COVE_PERCY, PercyJumpsDownLedge
		pause 15
		opentext
		writetext PercyChallengesPlayer
		waitbutton
		closetext
		checkevent EVENT_GOT_EKANS_FROM_OAK
		iftrue .Baltoy
		checkevent EVENT_GOT_YANMA_FROM_OAK
		iftrue .Ekans
		winlosstext PercyWinText, 0
		setlasttalked HERALD_COVE_PERCY
		loadtrainer PERCY, PERCY_1_YANMA
		startbattle
		reloadmapafterbattle
		sjump .AfterPercyBattle
	.Baltoy:
		winlosstext PercyWinText, 0
		setlasttalked HERALD_COVE_PERCY
		loadtrainer PERCY, PERCY_1_BALTOY
		startbattle
		reloadmapafterbattle
		sjump .AfterPercyBattle
	.Ekans:
		winlosstext PercyWinText, 0
		setlasttalked HERALD_COVE_PERCY
		loadtrainer PERCY, PERCY_1_EKANS
		startbattle
		reloadmapafterbattle
		sjump .AfterPercyBattle
	.AfterPercyBattle:
		opentext
		writetext PercyAfterBattleText
		waitbutton
		closetext
		giveitem EDWARD_COIN
		applymovement HERALD_COVE_PERCY, PercyLeavesAfterFight
		disappear HERALD_COVE_PERCY
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
	.Skip
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

RocketRobbedOakScript1:
	applymovement PLAYER, PlayerWalkAfterGym
	opentext
	writetext RocketShoutsText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	showemote	EMOTE_SHOCK, PLAYER, 15
	moveobject HERALD_COVE_ROCKET1, 19, 9
	moveobject HERALD_COVE_ROCKET2, 19, 9
	appear HERALD_COVE_ROCKET1
	appear HERALD_COVE_ROCKET2
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement HERALD_COVE_ROCKET1, RocketRunsIntoPlayer1
	playsound SFX_BUMP
	pause 5
	opentext
	writetext RocketShoutsAtPlayer
	waitbutton
	closetext
	applymovement HERALD_COVE_ROCKET2, Rocket2RunsPastPlayer1
	opentext
	writetext RocketWeHaveToGo
	waitbutton
	closetext
	turnobject HERALD_COVE_ROCKET1, UP
	opentext
	writetext RocketTalksToRocket
	waitbutton
	closetext
	applymovement HERALD_COVE_ROCKET2, Rocket2RunsPastRocket
	disappear HERALD_COVE_ROCKET2
	turnobject HERALD_COVE_ROCKET1, LEFT
	opentext
	writetext RocketTalksToPlayer
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, RocketShovesPlayer
	applymovement HERALD_COVE_ROCKET1, Rocket1Leaves1
	disappear HERALD_COVE_ROCKET1
	moveobject HERALD_COVE_OAK, 19, 9
	appear HERALD_COVE_OAK
	applymovement HERALD_COVE_OAK, OakWalksToPlayer
	opentext
	writetext OakTheyStoleTheMapText
	waitbutton
	closetext
	applymovement HERALD_COVE_OAK, OakWalksToHeraldRoute
	disappear HERALD_COVE_OAK
	playmusic MUSIC_VERMILION_CITY
	setscene SCENE_HERALD_COVE_NOOP1
	setmapscene HERALD_ROUTE, SCENE_HERALD_ROUTE_NOOP1
	setevent EVENT_ROCKETS_STEAL_SEALED_MAP
	setevent EVENT_OAK_MISSING_FROM_LAB
	end

RocketRobbedOakScript2:
	applymovement PLAYER, PlayerWalkAfterGym
	opentext
	writetext RocketShoutsText
	waitbutton
	closetext
	showemote	EMOTE_SHOCK, PLAYER, 15
	moveobject HERALD_COVE_ROCKET1, 27, 7
	moveobject HERALD_COVE_ROCKET2, 27, 7
	appear HERALD_COVE_ROCKET1
	appear HERALD_COVE_ROCKET2
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement HERALD_COVE_ROCKET1, RocketRunsIntoPlayer2
	playsound SFX_BUMP
	pause 5
	opentext
	writetext RocketShoutsAtPlayer
	waitbutton
	closetext
	applymovement HERALD_COVE_ROCKET2, Rocket2RunsPastPlayer2
	opentext
	writetext RocketWeHaveToGoPort
	waitbutton
	closetext
	turnobject HERALD_COVE_ROCKET1, UP
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
	applymovement HERALD_COVE_ROCKET1, Rocket1Leaves2
	pause 3
	disappear HERALD_COVE_ROCKET1
	moveobject HERALD_COVE_OAK, 27, 8
	appear HERALD_COVE_OAK
	applymovement HERALD_COVE_OAK, OakWalksToPlayerPort
	opentext
	writetext OakTheyStoleTheMapText
	waitbutton
	closetext
	applymovement HERALD_COVE_OAK, OakWalksToHeraldRoutePort
	disappear HERALD_COVE_OAK
	playmusic MUSIC_VERMILION_CITY
	setscene SCENE_HERALD_COVE_NOOP1
	setmapscene HERALD_ROUTE, SCENE_HERALD_ROUTE_NOOP1
	setevent EVENT_ROCKETS_STEAL_SEALED_MAP
	setevent EVENT_OAK_MISSING_FROM_LAB
	end

WalkBackToBeachScript:
	turnobject HERALD_COVE_SAILOR3, RIGHT
	opentext
	writetext ShouldGoBackToBeachText
	waitbutton
	closetext
	applymovement PLAYER, WalkBackToBeachMovement
	turnobject HERALD_COVE_SAILOR3, DOWN
	end

HeraldCoveSailorScript:
	giveitem TOWN_MAP
	jumptextfaceplayer HeraldCoveSailorText

HeraldCoveSignScript:
	jumptext HeraldCoveSignText

HeraldLabSignScript:
	jumptext HeraldLabSignText

HeraldGymSignScript:
	jumptext HeraldGymSignText

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

	PercyRunsToLedge:
		big_step DOWN
		big_step DOWN
		step_end

	PercyJumpsDownLedge:
		jump_step DOWN
		step_end

	PercyLeavesAfterFight:
		step LEFT
		step DOWN
		step DOWN
		step LEFT
		step LEFT
		step LEFT
		step DOWN
		step LEFT
		step_end


		PlayerWalkAfterGym:
		step UP
		step UP
		step_end

		RocketRunsIntoPlayer1:
		big_step LEFT
		big_step LEFT
		big_step DOWN
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

		Rocket2RunsPastPlayer1:
		big_step UP
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		turn_head DOWN
		step_end

		Rocket2RunsPastRocket:
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

		RocketShovesPlayer:
		big_step DOWN
		turn_head UP
		step_end

		Rocket1Leaves1:
		big_step LEFT
		big_step LEFT
		big_step UP
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

		OakWalksToPlayer:
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step DOWN
		step LEFT
		step LEFT
		turn_head DOWN
		step_end

		OakWalksToHeraldRoute:
		step LEFT
		step LEFT
		step UP
		step LEFT
		step LEFT
		step LEFT
		step_end

		RocketRunsIntoPlayer2:
		big_step DOWN
		big_step LEFT
		big_step DOWN
		big_step DOWN
		big_step LEFT
		big_step DOWN
		step_end

		Rocket2RunsPastPlayer2:
		big_step DOWN
		big_step DOWN
		big_step LEFT
		big_step LEFT
		turn_head DOWN
		step_end

		Rocket1Leaves2:
		big_step UP
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

		OakWalksToPlayerPort:
		step DOWN
		step LEFT
		step DOWN
		step LEFT
		step DOWN
		step DOWN
		step_end

		OakWalksToHeraldRoutePort:
		step UP
		step UP
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step_end

	WalkBackToBeachMovement:
		step LEFT
		step_end


	OakTalksToPlayerText1:
	text "Our lab and rooms"
	line "should be up here."

	para "Let's go and get"
	line "settled in."
	done

	EdwardShoutsOutText:
	text "???: OAK! I knew"
	line "I saw your ship"
	cont "pull in!"
	done

	BastionAndOakText:
	text "OAK: EDWARD! It's"
	line "good to see you!"

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

	para "OAK: No, <PLAYER>"
	line "isn't a trainer."

	para "Not yet anyways,"
	line "they're one of my"
	cont "aides helping me."

	para "EDWARD: Shame,"
	line "you look like"
	cont "you'd be a good'n."

	para "OAK, send 'em by"
	line "later. I'll get"
	cont "that map for you."
	done

	OakTalksToPlayerText2:
	text "OAK: EDWARD is"
	line "the local GYM"
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

	SailorGoFindTheCoin:
		text "You have to find"
		line "the coin before"
		cont "you can enter."

		para "I would get look-"
		line "ing if I were you."
		done

	SailorGoFindCoinYN:
		text "You have to find"
		line "the coin before"
		cont "you can enter."

		para "I would get look-"
		line "ing if I were you."

		para "Or did you want to"
		line "leave early?"
		done

	SailorEndChallengeText:
		text "Alright, your"
		line "challenge is over."

		para "Talk to EDWARD if"
		line "you want to try"
		cont "again."
		done

	SailorRonaldBeforeFight:
		text "Looks like that's"
		line "it! One last thing"

		para "before I let you"
		line "in."

		para "You have to beat"
		line "me first!"
		done

	SailorRonaldWinText:
		text "You swamped me!"
		done

	SailorRonaldAfterFight:
		text "Great job! By"
		line "beating me, you"
		cont "completed the gym"

		para "challenge! You're"
		line "free to challenge"

		para "EDWARD whenever"
		line "you like."

		para "We'll get out of"
		line "your way."
		done

	Sailor2and3GoToGymText:
		text "You have the coin?"
		line "Head back to the"

		para "gym to complete"
		line "the challenge!"
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
		text "Darn it, I lost."
		line "I guess I'm out of"
		cont "the challenge now."
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
		text "I'll just have to"
		line "look harder next"
		cont "time!"
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

	PercyShoutsDowntoPlayer:
		text "Hey! <PLAYER>!"
		line "Watch out!"
		done

	PercyChallengesPlayer:
		text "Ta-da! Pretty good"
		line "landing, right?"

		para "I see that coin"
		line "you have there,"
		cont "it's the gym"

		para "challenge right?"
		line "If I beat you, I"
		cont "could beat him!"

		para "I challenge you"
		line "for the coin,"
		cont "<PLAYER>!"
		done

	PercyWinText:
		text "Aww, you're better"
		line "than I thought."
		done

	PercyAfterBattleText:
		text "Good one, <PLAYER>!"
		line "You're good at"
		cont "this!"

		para "A deal's a deal,"
		line "I'll do my own"
		cont "GYM challenge!"

		para "See you later,"
		line "<PLAYER>!"
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
		line "to tan on, but you"

		para "have to watch out"
		line "whenever EDWARD"

		para "starts a GYM"
		line "CHALLENGE."

		para "Just stay clear of"
		line "the trainers and"
		cont "you'll be ok!"
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

	HeraldGymSignText:
		text "HERALD COVE"
		line "#MON GYM"
		cont "LEADER: EDWARD"

		para "The Captain of"
		line "the Seas!"
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
		text "Move out of the"
		line "way! Move!"
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
		text "OAK: <PLAYER>! Are"
		line "you alright?"

		para "...Ok, good."
		line "Those goons stole"
		cont "the SEALED MAP!"

		para "I don't know why"
		line "TEAM ROCKET is"

		para "here, or why they"
		line "want the map, but"

		para "whatever it is, it"
		line "can't be good."

		para "Come with me to"
		line "get it back. We"
		cont "have to stop them!"
		done

	ShouldGoBackToBeachText:
		text "Hey! The treasure"
		line "is on the beach!"

		para "You don't have to"
		line "go that far!"
		done

HeraldCove_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 34, 17, HERALD_PORT, 1
	warp_event 30,  5, HERALD_LAB, 1
	warp_event 19, 17, HERALD_POKECENTER, 1
	warp_event  6, 15, HERALD_GYM, 1
	warp_event 19,  5, HERALD_HOUSE, 1

	def_coord_events
	coord_event 23, 17, SCENE_HERALD_COVE_GYM_CHALLENGE, HeraldCoveRivalGymBattle
	coord_event 6,  16, SCENE_HERALD_COVE_GYM_CHALLENGE, GymChallengeScript
	coord_event 19, 18, SCENE_HERALD_COVE_GYM_CHALLENGE, PokecenterEnterScript
	coord_event 13, 12, SCENE_HERALD_COVE_OAK_ROBBED, RocketRobbedOakScript1
	coord_event 25, 14, SCENE_HERALD_COVE_OAK_ROBBED, RocketRobbedOakScript2
	coord_event 28, 16, SCENE_HERALD_COVE_GYM_CHALLENGE, WalkBackToBeachScript
	coord_event 28, 17, SCENE_HERALD_COVE_GYM_CHALLENGE, WalkBackToBeachScript
	coord_event 28, 18, SCENE_HERALD_COVE_GYM_CHALLENGE, WalkBackToBeachScript
	coord_event 28, 19, SCENE_HERALD_COVE_GYM_CHALLENGE, WalkBackToBeachScript

	def_bg_events
	bg_event 10,  4, BGEVENT_READ, BerryMasterSignScript
	bg_event 13,  7, BGEVENT_READ, HeraldCoveSignScript
	bg_event 32,  6, BGEVENT_READ, HeraldLabSignScript
	bg_event 10, 15, BGEVENT_READ, HeraldGymSignScript

	def_object_events
	object_event  33, 18, SPRITE_OAK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_OAK_HERALD_COVE
	object_event  21,  8, SPRITE_EDWARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_OAK_HERALD_COVE
	object_event  5,  16, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sailor1ScriptGym, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  13, 14, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sailor2and3ScriptGym, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  25, 16, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sailor2and3ScriptGym, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  18, 18, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Sailor2and3ScriptGym, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  10, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterAlex, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  15, 16, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassCandice, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  39,  0, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GYM_TRAINERS_IN_HERALD_COVE
	object_event  29, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HeraldCoveOldRodFisher, -1
	object_event  11,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BerryMasterScript, -1
	object_event  23, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, HeraldCoveLass, -1
	object_event  23,  6, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HeraldCoveSailorScript, -1
	object_event  39,  0, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  39,  0, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
