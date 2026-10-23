	object_const_def
	const HERALD_LAB_CAVENDISH
	const HERALD_LAB_PERCY
	const HERALD_LAB_BLAIRE
	const HERALD_LAB_POKE_BALL_1
	const HERALD_LAB_POKE_BALL_2
	const HERALD_LAB_POKE_BALL_3


HeraldLab_MapScripts:
	def_scene_scripts
	scene_script HeraldLabMeetCavendishScene, SCENE_HERALD_LAB_MEET_CAVENDISH
	scene_script HeraldLabCantLeave, SCENE_HERALD_LAB_CANT_LEAVE
	scene_script HeraldLabRivalFightScene, SCENE_HERALD_LAB_RIVAL_FIGHT
	scene_script HeraldLabGetPokedexScene, SCENE_HERALD_LAB_POKEDEX
	scene_script HeraldLabNoop1Scene, SCENE_HERALD_LAB_NOOP1

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CavendishMoveCallback
	callback MAPCALLBACK_OBJECTS, RivalsMoveCallback

	HeraldLabMeetCavendishScene:
		sdefer PlayerTalkToCavendishScript
		end

	HeraldLabCantLeave:
		end

	HeraldLabRivalFightScene:
		end

	HeraldLabGetPokedexScene:
		sdefer PlayerGetsPokedexScript
		end

	HeraldLabNoop1Scene:
		end

	CavendishMoveCallback:
		checkscene
		ifequal SCENE_HERALD_LAB_MEET_CAVENDISH, .NoSkipCavendish
		endcallback
		
	.NoSkipCavendish:
		moveobject HERALD_LAB_CAVENDISH, 4, 12
		endcallback

	RivalsMoveCallback:
		checkscene
		ifequal SCENE_HERALD_LAB_POKEDEX, .NoSkip
		endcallback

	.NoSkip:
		moveobject HERALD_LAB_BLAIRE, 3, 9
		moveobject HERALD_LAB_PERCY, 5, 9
		appear HERALD_LAB_BLAIRE
		appear HERALD_LAB_PERCY
		endcallback

	PlayerTalkToCavendishScript:
		clearevent EVENT_GOT_EKANS_FROM_CAVENDISH
		clearevent EVENT_GOT_YANMA_FROM_CAVENDISH
		clearevent EVENT_GOT_BALTOY_FROM_CAVENDISH
		clearevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		clearevent EVENT_EKANS_POKEBALL_IN_CAVENDISHS_LAB
		clearevent EVENT_YANMA_POKEBALL_IN_CAVENDISHS_LAB
		clearevent EVENT_BALTOY_POKEBALL_IN_CAVENDISHS_LAB
		appear HERALD_LAB_POKE_BALL_1
		appear HERALD_LAB_POKE_BALL_2
		appear HERALD_LAB_POKE_BALL_3
		disappear HERALD_LAB_PERCY
		follow HERALD_LAB_CAVENDISH, PLAYER
		applymovement HERALD_LAB_CAVENDISH, CavendishWalksToDeskMovement
		stopfollow
		pause 4
		turnobject HERALD_LAB_CAVENDISH, LEFT
		pause 15
		turnobject HERALD_LAB_CAVENDISH, UP
		pause 15
		turnobject HERALD_LAB_CAVENDISH, LEFT
		opentext
		writetext CavendishWelcomesPlayer
		waitbutton
		closetext
		playsound SFX_ENTER_DOOR
		pause 5
		turnobject PLAYER, DOWN
		moveobject HERALD_LAB_PERCY, 0, 7
		appear HERALD_LAB_PERCY
		applymovement HERALD_LAB_PERCY, PercyRunsToCavendishLabMovement
		pause 5
		opentext
		writetext PercyEntersLabText
		waitbutton
		closetext
		pause 10
		turnobject PLAYER, RIGHT
		opentext
		writetext CavendishTalksAboutPokemonText
		waitbutton
		closetext
		pause 5
		applymovement HERALD_LAB_CAVENDISH, CavendishWalksToPokemonMovement
		opentext
		writetext CavendishOffersPokemonText
		waitbutton
		closetext
		pause 4
		turnobject HERALD_LAB_BLAIRE, DOWN
		turnobject PLAYER, UP
		opentext
		writetext BlaireTurnsToPlayerText
		waitbutton
		closetext
		pause 8
		turnobject HERALD_LAB_PERCY, UP
		turnobject PLAYER, DOWN
		opentext
		writetext PercyTurnsToPlayerText
		waitbutton
		closetext
		pause 4
		turnobject PLAYER, RIGHT
		opentext
		writetext CavendishPlayerChooseText
		waitbutton
		closetext
		setscene SCENE_HERALD_LAB_CANT_LEAVE
		end

	EkansPokeballScript:
		checkevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		iftrue LookAtPokeBallScript
		refreshscreen
		pokepic EKANS
		cry EKANS
		waitbutton
		closepokepic
		opentext
		writetext TakeEkansText
		yesorno
		iffalse DidntChooseStarterScript
		disappear HERALD_LAB_POKE_BALL_1
		setevent EVENT_GOT_EKANS_FROM_CAVENDISH
		getmonname STRING_BUFFER_3, EKANS
		writetext GetStarterText
		playsound SFX_CAUGHT_MON
		waitsfx
		promptbutton
		givepoke EKANS, 5, BERRY
		writetext PlayerReceivesPokeballs
		giveitem POKE_BALL, 5
		playsound SFX_ITEM
		waitbutton
		closetext
		applymovement HERALD_LAB_BLAIRE, BlaireYanmaMovement
		opentext
		writetext BlaireWantsNextPokemon
		waitbutton
		disappear HERALD_LAB_POKE_BALL_2
		getmonname STRING_BUFFER_3, YANMA
		writetext BlaireGetsStarterText
		playsound SFX_CAUGHT_MON
		waitbutton
		closetext
		pause 30
		applymovement HERALD_LAB_PERCY, PercyBaltoyMovement
		opentext
		writetext PercyWantsNextPokemon
		waitbutton
		disappear HERALD_LAB_POKE_BALL_3
		getmonname STRING_BUFFER_3, BALTOY
		writetext PercyGetsStarterText
		playsound SFX_CAUGHT_MON
		waitbutton
		closetext
		pause 20
		sjump AfterPokemonScript

	YanmaPokeballScript:
		checkevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		iftrue LookAtPokeBallScript
		refreshscreen
		pokepic YANMA
		cry YANMA
		waitbutton
		closepokepic
		opentext
		writetext TakeYanmaText
		yesorno
		iffalse DidntChooseStarterScript
		disappear HERALD_LAB_POKE_BALL_2
		setevent EVENT_GOT_YANMA_FROM_CAVENDISH
		getmonname STRING_BUFFER_3, YANMA
		writetext GetStarterText
		playsound SFX_CAUGHT_MON
		waitsfx
		promptbutton
		givepoke YANMA, 5, BERRY
		writetext PlayerReceivesPokeballs
		giveitem POKE_BALL, 5
		playsound SFX_ITEM
		waitbutton
		closetext
		applymovement HERALD_LAB_BLAIRE, BlaireBaltoyMovement
		opentext
		writetext BlaireWantsNextPokemon
		waitbutton
		disappear HERALD_LAB_POKE_BALL_3
		getmonname STRING_BUFFER_3, BALTOY
		writetext BlaireGetsStarterText
		playsound SFX_CAUGHT_MON
		waitbutton
		closetext
		pause 30
		applymovement HERALD_LAB_PERCY, PercyEkansMovement
		opentext
		writetext PercyWantsNextPokemon
		waitbutton
		disappear HERALD_LAB_POKE_BALL_1
		getmonname STRING_BUFFER_3, EKANS
		writetext PercyGetsStarterText
		playsound SFX_CAUGHT_MON
		waitbutton
		closetext
		pause 20
		sjump AfterPokemonScript

	BaltoyPokeballScript:
		checkevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		iftrue LookAtPokeBallScript
		refreshscreen
		pokepic BALTOY
		cry BALTOY
		waitbutton
		closepokepic
		opentext
		writetext TakeBaltoyText
		yesorno
		iffalse DidntChooseStarterScript
		disappear HERALD_LAB_POKE_BALL_3
		setevent EVENT_GOT_BALTOY_FROM_CAVENDISH
		getmonname STRING_BUFFER_3, BALTOY
		writetext GetStarterText
		playsound SFX_CAUGHT_MON
		waitsfx
		promptbutton
		givepoke BALTOY, 5, BERRY
		writetext PlayerReceivesPokeballs
		giveitem POKE_BALL, 5
		playsound SFX_ITEM
		waitbutton
		closetext
		applymovement HERALD_LAB_BLAIRE, BlaireEkansMovement
		opentext
		writetext BlaireWantsNextPokemon
		waitbutton
		disappear HERALD_LAB_POKE_BALL_1
		getmonname STRING_BUFFER_3, EKANS
		writetext BlaireGetsStarterText
		playsound SFX_CAUGHT_MON
		waitbutton
		closetext
		pause 30
		applymovement HERALD_LAB_PERCY, PercyYanmaMovement
		opentext
		writetext PercyWantsNextPokemon
		waitbutton
		disappear HERALD_LAB_POKE_BALL_2
		getmonname STRING_BUFFER_3, YANMA
		writetext PercyGetsStarterText
		playsound SFX_CAUGHT_MON
		waitbutton
		closetext
		pause 20
		sjump AfterPokemonScript

	AfterPokemonScript:
		turnobject HERALD_LAB_CAVENDISH, LEFT
		pause 20
		turnobject PLAYER, RIGHT
		pause 2
		turnobject HERALD_LAB_BLAIRE, RIGHT
		pause 2
		turnobject HERALD_LAB_PERCY, RIGHT
		opentext
		writetext CavendishLeavingText
		waitbutton
		closetext
		setevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		checkevent EVENT_GOT_EKANS_FROM_CAVENDISH
		iftrue .PercyEkansExit
		checkevent EVENT_GOT_YANMA_FROM_CAVENDISH
		iftrue .PercyEkansExit
		applymovement HERALD_LAB_PERCY, PercyLeavesLabYanmaMovement
		playsound SFX_EXIT_BUILDING
		disappear HERALD_LAB_PERCY
		setscene SCENE_HERALD_LAB_RIVAL_FIGHT
		moveobject HERALD_LAB_CAVENDISH, 7, 2
		end

	.PercyEkansExit:
		applymovement HERALD_LAB_PERCY, PercyLeavesLabBaltoyMovement
		playsound SFX_EXIT_BUILDING
		disappear HERALD_LAB_PERCY
		setscene SCENE_HERALD_LAB_RIVAL_FIGHT
		end

	.PercyYanmaExit:
		applymovement HERALD_LAB_PERCY, PercyLeavesLabEkansMovement
		playsound SFX_EXIT_BUILDING
		disappear HERALD_LAB_PERCY
		setscene SCENE_HERALD_LAB_RIVAL_FIGHT
		end

	BlaireFightLeftScript:
		disappear HERALD_LAB_BLAIRE
		moveobject HERALD_LAB_BLAIRE, 5, 8
		appear HERALD_LAB_BLAIRE
		opentext
		writetext RivalBlaireCallOutText
		waitbutton
		closetext
		showemote EMOTE_SHOCK, PLAYER, 20
		turnobject PLAYER, UP
		pause 5
		applymovement HERALD_LAB_BLAIRE, BlaireWalksToFightMovement
		turnobject HERALD_LAB_BLAIRE, LEFT
		turnobject PLAYER, RIGHT
		sjump RivalFightScript

	BlaireFightRightScript:
		disappear HERALD_LAB_BLAIRE
		moveobject HERALD_LAB_BLAIRE, 4, 8
		appear HERALD_LAB_BLAIRE
		opentext
		writetext RivalBlaireCallOutText
		waitbutton
		closetext
		showemote EMOTE_SHOCK, PLAYER, 20
		turnobject PLAYER, UP
		pause 5
		applymovement HERALD_LAB_BLAIRE, BlaireWalksToFightMovement
		turnobject HERALD_LAB_BLAIRE, RIGHT
		turnobject PLAYER, LEFT
		sjump RivalFightScript

	RivalFightScript:
		opentext
		writetext RivalBlaireFightText
		waitbutton
		closetext
		checkevent EVENT_GOT_EKANS_FROM_CAVENDISH
		iftrue .Ekans
		checkevent EVENT_GOT_YANMA_FROM_CAVENDISH
		iftrue .Yanma
		winlosstext BlaireWinLabText, BlaireLossLabText
		setlasttalked HERALD_LAB_BLAIRE
		loadtrainer BLAIRE, BLAIRE_1_EKANS
		loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
		startbattle
		dontrestartmapmusic
		reloadmap
		iftrue .AfterVictorious
		sjump .AfterYourDefeat

	.Ekans:
		winlosstext BlaireWinLabText, BlaireLossLabText
		setlasttalked HERALD_LAB_BLAIRE
		loadtrainer BLAIRE, BLAIRE_1_YANMA
		loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
		startbattle
		dontrestartmapmusic
		reloadmap
		iftrue .AfterVictorious
		sjump .AfterYourDefeat

	.Yanma:
		winlosstext BlaireWinLabText, BlaireLossLabText
		setlasttalked HERALD_LAB_BLAIRE
		loadtrainer BLAIRE, BLAIRE_1_BALTOY
		loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
		startbattle
		dontrestartmapmusic
		reloadmap
		iftrue .AfterVictorious
		sjump .AfterYourDefeat

	.AfterYourDefeat:
		setevent EVENT_BATTLE_PERCY_2ND_GYM
		opentext
		writetext RivalBlaireYouWonText
		waitbutton
		closetext
		sjump .FinishRival

	.AfterVictorious
		opentext
		writetext RivalBlaireYouLostText
		waitbutton
		closetext

	.FinishRival:
		pause 15
		turnobject HERALD_LAB_BLAIRE, DOWN
		pause 15
		playsound SFX_EXIT_BUILDING
		disappear HERALD_LAB_BLAIRE
		setscene SCENE_HERALD_LAB_NOOP1
		special HealParty
		playmapmusic
		end

	LookAtPokeBallScript:
		opentext
		writetext LookAtPokeBallText
		waitbutton
		closetext
		end

	LabTryToLeaveScript:
		opentext
		writetext LabTryToLeaveText
		waitbutton
		closetext
		applymovement PLAYER, CantLeaveMovement
		end

	DidntChooseStarterScript:
		opentext
		writetext DidntChooseStarterText
		waitbutton
		closetext
		end


	PlayerGetsPokedexScript:
		applymovement PLAYER, PlayerWalksToGetPokedex
		pause 6
		turnobject HERALD_LAB_CAVENDISH, RIGHT
		pause 6
		turnobject HERALD_LAB_CAVENDISH, LEFT
		pause 6
		turnobject HERALD_LAB_CAVENDISH, DOWN
		opentext
		writetext CavendishGivesOutPokedex1
		waitbutton
		closetext
		pause 4
		opentext
		writetext PercyTalksToCavendish1
		waitbutton
		closetext
		pause 4
		opentext
		writetext BlaireTalksToCavendish1
		waitbutton
		closetext
		pause 5
		opentext
		writetext CavendishGivesOutPokedex2
		waitbutton
		closetext
		pause 4
		applymovement HERALD_LAB_CAVENDISH, CavendishWalksToPokedexMovement
		pause 4
		applymovement HERALD_LAB_CAVENDISH, CavendishWalksFromPokedexMovement
		opentext
		writetext PlayerReceivesPokedex
		playsound SFX_KEY_ITEM
		waitsfx
		setflag ENGINE_POKEDEX
		waitbutton
		closetext
		pause 2
		opentext
		writetext PercyTalksToCavendish2
		waitbutton
		writetext BlaireTalksToCavendish2
		waitbutton
		closetext
		pause 3
		opentext
		writetext CavendishGivesOutPokedex3
		waitbutton
		closetext
		pause 3
		opentext
		writetext CavendishPhoneNumberText
		waitbutton
		addcellnum PHONE_CAVENDISH
		playsound SFX_REGISTER_PHONE_NUMBER
		writetext CavendishPhoneRegisteredText
		waitbutton
		closetext
		pause 4
		turnobject HERALD_LAB_BLAIRE, RIGHT
		turnobject PLAYER, LEFT
		opentext
		writetext BlaireTalksToCavendish3
		waitbutton
		closetext
		applymovement HERALD_LAB_BLAIRE, BlaireLeavesLabPokedex
		playsound SFX_EXIT_BUILDING
		disappear HERALD_LAB_BLAIRE
		pause 10
		turnobject HERALD_LAB_PERCY, LEFT
		turnobject PLAYER, RIGHT
		opentext
		writetext PercyTalksToCavendish3
		waitbutton
		closetext
		applymovement HERALD_LAB_PERCY, PercyLeavesLabPokedex
		playsound SFX_EXIT_BUILDING
		disappear HERALD_LAB_PERCY
		setscene SCENE_HERALD_LAB_NOOP1
		end

	ProfCavendishScript:
		faceplayer
		opentext
		checkflag ENGINE_POKEDEX
		iftrue CavendishScriptCheckPokedex
		checkevent EVENT_GOT_MAP_FROM_EDWARD
		iftrue CavendishScriptAfterMap
		checkevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		iftrue CavendishScriptAfterPokemon
		writetext CavendishPickPokemonText
		waitbutton
		closetext
		end

	RivalPercyLabScript:
		faceplayer
		opentext
		writetext PercyPickPokemonText
		waitbutton
		closetext
		end

	RivalBlaireLabScript:
		faceplayer
		opentext
		checkevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
		iftrue BlaireScriptAfterPokemon
		writetext BlairePickPokemonText
		waitbutton
		closetext
		end

	CavendishScriptCheckPokedex:
		writetext CavendishLabDexCheckText
		waitbutton
		special ProfOaksPCBoot
		writetext CavendishLabGoodbyeText
		waitbutton
		closetext
		end

	CavendishScriptAfterMap:
		writetext CavendishGoRegister
		waitbutton
		closetext
		end


	CavendishScriptAfterPokemon:
		writetext CavendishTextAfterPokemon
		waitbutton
		closetext
		end

	BlaireScriptAfterPokemon:
		writetext BlaireTextAfterPokemon
		waitbutton
		closetext
		end

	HeraldLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_CAVENDISH
	iftrue .CanHeal
	writetext HeraldLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext HeraldLabHealingMachineText2
	yesorno
	iftrue HeraldLabHealingMachine_HealParty
	closetext
	end

HeraldLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_HERALD_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

	HeraldLabBookshelfScript:
		jumptext HeraldLabBookshelfText

	HeraldLabTrashCanScript:
		jumptext HeraldLabTrashCanText

	HeraldLabDoorScript:
		jumptext HeraldLabDoorText

	CavendishWalksToDeskMovement:
		step UP
		step UP
		step UP
		step UP
		step LEFT
		step LEFT
		step LEFT
		step LEFT
		step UP
		step UP
		step UP
		step UP
		step UP
		step UP
		step RIGHT
		step RIGHT
		step RIGHT
		step_end

	PercyRunsToCavendishLabMovement:
		big_step UP
		big_step UP
		big_step UP
		big_step UP
		big_step RIGHT
		big_step RIGHT
		step_end

	BlaireWalksToCavendishLabMovement:
		step UP
		step UP
		step UP
		step UP
		step RIGHT
		step UP
		step_end

	CavendishWalksToPokemonMovement:
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		turn_head LEFT
		step_end

	BlaireEkansMovement:
		step DOWN
		step RIGHT
		step RIGHT
		step_end

	BlaireYanmaMovement:
		step DOWN
		step RIGHT
		step DOWN
		step RIGHT
		step RIGHT
		step UP
		step_end

	BlaireBaltoyMovement:
		step DOWN
		step RIGHT
		step RIGHT
		step DOWN
		step RIGHT
		step RIGHT
		step UP
		step_end

	PercyEkansMovement:
		step RIGHT
		step RIGHT
		step UP
		step_end

	PercyYanmaMovement:
		step RIGHT
		step RIGHT
		step RIGHT
		step UP
		step_end

	PercyBaltoyMovement:
		step RIGHT
		step RIGHT
		step RIGHT
		step RIGHT
		step UP
		step_end

	PercyLeavesLabBaltoyMovement:
		big_step DOWN
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step DOWN
		big_step DOWN
		big_step DOWN
		step_end

	PercyLeavesLabYanmaMovement:
		big_step DOWN
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

	PercyLeavesLabEkansMovement:
		big_step LEFT
		big_step LEFT
		big_step LEFT
		big_step LEFT
		step_end

	BlaireWalksToFightMovement:
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step_end

	CantLeaveMovement:
		step RIGHT
		step_end

	PlayerWalksToGetPokedex:
		step UP
		step UP
		step UP
		step UP
		step_end

	CavendishWalksToPokedexMovement:
		step RIGHT
		step RIGHT
		turn_head UP
		step_end

	CavendishWalksFromPokedexMovement:
		step LEFT
		step LEFT
		turn_head DOWN
		step_end

	PercyLeavesLabPokedex:
		big_step DOWN
		big_step DOWN
		big_step DOWN
		big_step DOWN
		big_step DOWN
		step_end

	BlaireLeavesLabPokedex:
		step DOWN
		step LEFT
		step DOWN
		step DOWN
		step DOWN
		step DOWN
		step_end

	CavendishWelcomesPlayer:
		text "CAVENDISH: Hmm."
		line "We seem to be"
		cont "missing one."
		done

	PercyEntersLabText:
		text "PERCY: Sorry for"
		line "being late. It's"
		cont "just so nice here!"

		para "I wanted to see"
		line "the town before"
		cont "we settled in!"
		done

	CavendishTalksAboutPokemonText:
		text "CAVENDISH: Good,"
		line "we can get started"
		cont "then."

		para "You three are here"
		line "to help me with"
		cont "the exploration of"
		para "these islands. The"
		line "MONEGO ISLANDS"
		cont "have not been open"
		para "to visit for a"
		line "long time, but"
		cont "they've re-opened"
		para "now, and we're"
		line "going to take full"
		cont "advantage."
		done

	CavendishOffersPokemonText:
		text "In order to travel"
		line "and explore the"
		cont "secrets in this"
		para "region, you'll"
		line "need your own"
		cont "#MON."
		para "These are the"
		line "three that I have"
		cont "decided to bring"
		para "along for you, and"
		line "I want each of"
		cont "you to pick one."
		para "Now, who wants"
		line "to go first?"
		done

	BlaireTurnsToPlayerText:
		text "<PLAYER>, you can"
		line "go first. I'm fine"
		cont "to wait, any of"
		para "them will do for"
		line "me."
		done

	PercyTurnsToPlayerText:
		text "Same! I'm just"
		line "excited to have"
		cont "a #MON at all!"
		done

	CavendishPlayerChooseText:
		text "Well <PLAYER>,"
		line "I suppose you can"
		cont "go first then."
		para "Come choose your"
		line "new partner!"
		done

	BlaireWantsNextPokemon:
		text "BLAIRE: I'll take"
		line "this one then."
		done

	BlaireGetsStarterText:
		text "BLAIRE got"
		line "@"
		text_ram wStringBuffer3
		text "!"
		done

	PercyWantsNextPokemon:
		text "PERCY: I'm so"
		line "excited to meet my"
		cont "new partner!"
		done

	PercyGetsStarterText:
		text "PERCY got"
		line "@"
		text_ram wStringBuffer3
		text "!"
		done

	CavendishLeavingText:
		text "CAVENDISH: These"
		line "will be your"
		cont "companions while"
		para "we stay here. I"
		line "would advise you"
		cont "to get to know"
		para "them, spend time"
		line "with them, and"
		cont "learn from them."
		para "Our stay here is"
		line "not a vacation,"
		cont "so the sooner you"
		para "can get"
		line "comfortable the"
		cont "better. Now, the"
		para "first thing that"
		line "I want you all to"
		cont "do is head to"
		para "EDWARD's House"
		line "here in HERALD"
		cont "BAY. He has a map"
		para "that we need. Go"
		line "fetch it for us,"
		cont "and I will explain"
		para "why we need it"
		line "when we have it."
		done

	RivalBlaireCallOutText:
		text "BLAIRE: Hey, wait!"
		done

	RivalBlaireFightText:
		text "<PLAYER>, we need"
		line "to learn more"
		cont "about our #MON,"
		para "and I think the"
		line "best way to start"
		cont "is to have a"
		cont "battle with you,"
		para "right now. Let's"
		line "go."
		done

	BlaireWinLabText:
		text "You're good for"
		line "someone that's"
		cont "never had a"
		cont "#MON before."
		done

	BlaireLossLabText:
		text "Looks like my"
		line "partner is pretty"
		cont "strong, huh?"
		done

	RivalBlaireYouWonText:
		text "It looks like I'm"
		line "going to have to"
		cont "get stronger then."
		para "Thanks for the"
		line "battle <PLAYER>."
		done

	RivalBlaireYouLostText:
		text "Good battle"
		line "<PLAYER>, that was"
		cont "great practice for"
		cont "us. Thanks."
		done

	TakeEkansText:
		text "CAVENDISH: Do"
		line "you want EKANS?"
		cont "It's the SNAKE"
		cont "#MON!"
		done

	TakeYanmaText:
		text "CAVENDISH: Do"
		line "you want YANMA?"
		cont "It's the CLEAR"
		cont "WING #MON!"
		done

	TakeBaltoyText:
		text "CAVENDISH: Do"
		line "you want BALTOY?"
		cont "It's the CLAYDOLL"
		cont "#MON!"
		done

	LookAtPokeBallText:
		text "PokeBall"
		done

	DidntChooseStarterText:
		text "Take your time."
		line "It's an important"
		cont "decision."
		done

	LabTryToLeaveText:
		text "Wait! You haven't"
		line "picked just yet!"
		done

	LabTryToLeaveRightText:
		text "Wait! You haven't"
		line "picked just yet!"
		done

	GetStarterText:
		text "<PLAYER> got a"
		line "@"
		text_ram wStringBuffer3
		text "!"
		done

	CavendishPickPokemonText:
		text "Pick carefully."
		line "This is a big dec-"
		cont "ision."
		done

	PercyPickPokemonText:
		text "This is exciting,"
		line "<PLAYER>! Our very"
		cont "own #MON!"
		done

	BlairePickPokemonText:
		text "Whichever partner"
		line "I get will be"
		cont "fine, just choose"
		cont "quickly please."
		done

	CavendishTextAfterPokemon:
		text "Bring that map"
		line "back as soon as"
		cont "you can. We need"
		para "it for our"
		line "research."
		done

	BlaireTextAfterPokemon:
		text "I'm glad we have a"
		line "#MON now, it"
		cont "should make"
		para "traveling around"
		line "much easier."
		done

	CavendishGoRegister:
		text "Hey <PLAYER>,"
		line "what are you doing"
		cont "back here? I"
		para "assumed that you"
		line "would be getting"
		cont "signed up for the"
		cont "CONFERENCE."
		para "PERCY already"
		line "delivered the map"
		cont "to me, so you need"
		para "to get signed up"
		line "when you can."
		cont "I have something"
		para "for you all when"
		line "you return!"
		done

	CavendishGivesOutPokedex1:
		text "CAVENDISH: Ah,"
		line "good! You're all"
		cont "here now, and you"
		para "all seem to be"
		line "getting along"
		cont "well with your"
		para "#MON! That's"
		line "great!"
		done

	PercyTalksToCavendish1:
		text "PERCY: My new"
		line "partner has been"
		cont "great so far!"
		para "I love being a"
		line "trainer!"
		done

	BlaireTalksToCavendish1:
		text "BLAIRE: I see a"
		line "lot of potential"
		cont "in mine. We'll"
		para "do well in the"
		line "CONFERENCE, I"
		cont "just know it."
		done

	CavendishGivesOutPokedex2:
		text "CAVENDISH: Now,"
		line "as for why I"
		cont "called you all"
		para "here again, I"
		line "have a gift for"
		cont "you."
		done

	PlayerReceivesPokedex:
		text "<PLAYER> received"
		line "#DEX!"
		done

	PercyTalksToCavendish2:
		text "PERCY: #DEX?"
		line "What's a #DEX?"
		done

	BlaireTalksToCavendish2:
		text "BLAIRE: I know"
		line "what this is. It's"
		cont "an encyclopedia."
		para "It's meant to hold"
		line "all kinds of data"
		cont "about #MON!"
		para "But ours seem"
		line "blank?"
		done

	CavendishGivesOutPokedex3:
		text "CAVENDISH: That's"
		line "right, and it's"
		cont "why I need you"
		para "three here with"
		line "me. The MONEGO"
		cont "ISLANDS have been"
		para "closed for so long"
		line "and we don't know"
		cont "what #MON live"
		para "here now. So, I"
		line "need you three to"
		para "travel to the far"
		line "ends of this"
		cont "region. Discover"
		cont "all there is to"
		para "know about the"
		line "#MON here. I'll"
		cont "advise you along"
		cont "the way, but this"
		para "is mostly on you,"
		line "as I can't travel"
		cont "like I used to."
		para "So get going!"
		line "Adventure awaits"
		cont "you now!"
		done

	CavendishPhoneNumberText:
		text "Also, I trust you"
		line "all remembered to"
		cont "bring your"
		para "#GEARs with"
		line "you. Here's my"
		para "number, I'll"
		line "register it in"
		cont "your #GEAR."
		done

	CavendishPhoneRegisteredText:
		text "My number is"
		line "registered. Call"
		cont "if you need help."
		done

	BlaireTalksToCavendish3:
		text "BLAIRE: I'm going"
		line "to challenge"
		cont "EDWARD now. I've"
		para "caught a few"
		line "#MON nearby."
		cont "I think my team"
		para "is ready for"
		line "him."
		done

	PercyTalksToCavendish3:
		text "PERCY: I might"
		line "need to invest in"
		cont "some # BALLS."
		para "I haven't caught"
		line "anything just yet!"
		done

	PlayerReceivesPokeballs:
		text "<PLAYER> received"
		line "5 # BALLS!"
		done

	HeraldLabBookshelfText:
		text "Lots of books on"
		line "#MON research."
		done

	HeraldLabTrashCanText:
		text "There's some paper"
		line "crumpled up and"
		cont "thrown away."
		done

	HeraldLabDoorText:
		text "It's locked."
		done

	HeraldLabHealingMachineText1:
		text "I wonder what this"
		line "does?"
		done

	HeraldLabHealingMachineText2:
		text "Would you like to"
		line "heal your #MON?"
		done

	CavendishLabDexCheckText:
		text "How is your #-"
		line "DEX coming?"

		para "Let's see…"
		done

	CavendishLabGoodbyeText:
		text "If you're in the"
		line "area, I hope you"
		cont "come visit again."
		done

HeraldLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, HERALD_COVE, 2
	warp_event  5, 13, HERALD_COVE, 2

	def_coord_events
	coord_event  1,  4, SCENE_HERALD_LAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  1,  2, SCENE_HERALD_LAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4, 13, SCENE_HERALD_LAB_RIVAL_FIGHT, BlaireFightLeftScript
	coord_event  5, 13, SCENE_HERALD_LAB_RIVAL_FIGHT, BlaireFightRightScript

	def_bg_events
	bg_event  6,  7, BGEVENT_READ, HeraldLabHealingMachine
	bg_event  7, 11, BGEVENT_READ, HeraldLabBookshelfScript
	bg_event  6, 11, BGEVENT_READ, HeraldLabBookshelfScript
	bg_event  1, 11, BGEVENT_READ, HeraldLabBookshelfScript
	bg_event  0, 11, BGEVENT_READ, HeraldLabBookshelfScript
	bg_event  8, 11, BGEVENT_READ, HeraldLabBookshelfScript
	bg_event  9, 11, BGEVENT_READ, HeraldLabBookshelfScript
	bg_event  4,  6, BGEVENT_READ, HeraldLabDoorScript

	def_object_events
	object_event  4,  8, SPRITE_PROFESSOR_CAVENDISH, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfCavendishScript, EVENT_CAVENDISH_MISSING_FROM_LAB
	object_event  9,  0, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RivalPercyLabScript, EVENT_RIVAL_HERALD_LAB
	object_event  2,  1, SPRITE_BAD_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, RivalBlaireLabScript, EVENT_RIVAL_HERALD_LAB
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EkansPokeballScript, EVENT_EKANS_POKEBALL_IN_CAVENDISHS_LAB
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YanmaPokeballScript, EVENT_YANMA_POKEBALL_IN_CAVENDISHS_LAB
	object_event  6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BaltoyPokeballScript, EVENT_BALTOY_POKEBALL_IN_CAVENDISHS_LAB
