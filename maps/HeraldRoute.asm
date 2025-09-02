	object_const_def
	const HERALD_ROUTE_YOUNGSTER1
	const HERALD_ROUTE_YOUNGSTER2
	const HERALD_ROUTE_LASS1
	const HERALD_ROUTE_COOLTRAINERF1
	const HERALD_ROUTE_BLOCKING_LASS
	const HERALD_ROUTE_YOUNGSTER3
	const HERALD_ROUTE_LASS2
	const HERALD_ROUTE_ROCKET1
	const HERALD_ROUTE_ROCKET2
	const HERALD_ROUTE_YOUNGSTER4
	const HERALD_ROUTE_POKE_BALL1
	const HERALD_ROUTE_POKE_BALL2
	const HERALD_ROUTE_FRUIT_TREE

HeraldRoute_MapScripts:
	def_scene_scripts
	scene_script HeraldRouteRockets, SCENE_HERALD_ROUTE_ROCKETS
	scene_script HeraldRouteNoop1, SCENE_HERALD_ROUTE_NOOP1

	def_callbacks

	HeraldRouteRockets:
		end

	HeraldRouteNoop1:
		end

TrainerYoungsterKevin:
	trainer YOUNGSTER, KEVIN, EVENT_BEAT_YOUNGSTER_KEVIN, YoungsterKevinSeenText, YoungsterKevinBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext YoungsterKevinAfterText
		waitbutton
		closetext
		end

TrainerBugCatcherJames:
	trainer BUG_CATCHER, JAMES, EVENT_BEAT_BUG_CATCHER_JAMES, BugCatcherJamesSeenText, BugCatcherJamesBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext BugCatcherJamesAfterText
		waitbutton
		closetext
		end

TrainerLassAlexis:
	trainer LASS, ALEXIS, EVENT_BEAT_LASS_ALEXIS, LassAlexisSeenText, LassAlexisBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext LassAlexisAfterText
		waitbutton
		closetext
		end

TrainerCoolTrainerFStacy:
	trainer COOLTRAINERF, STACY, EVENT_BEAT_COOLTRAINERF_STACY, CoolTrainerFStacySeenText, CoolTrainerFStacyBeatenText, 0, .Script

	.Script:
		endifjustbattled
		opentext
		writetext CoolTrainerFStacyAfterText
		waitbutton
		closetext
		end

BlockingLassScript:
	jumptextfaceplayer BlockingLassText

HeraldRouteSignScript:
	jumptext HeraldRouteSignText

RegistrationCenterSignScript:
	jumptext RegistrationCenterSignText

HeraldRouteYoungsterScript:
	jumptextfaceplayer HeraldRouteYoungsterText

HeraldRouteLassScript:
	jumptextfaceplayer HeraldRouteLassText

HeraldRoutePotion:
	itemball POTION, 1

HeraldRouteGreatBall:
	itemball GREAT_BALL, 1

BlockingRocket1Script:
	faceplayer
	opentext
	writetext RocketBlocker1Text
	waitbutton
	closetext
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, RocketPushesPlayerBack
	pause 5
	turnobject HERALD_ROUTE_ROCKET1, RIGHT
	end

BlockingRocket2Script:
	faceplayer
	opentext
	writetext RocketBlocker2Text
	waitbutton
	closetext
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, RocketPushesPlayerBack
	pause 5
	turnobject HERALD_ROUTE_ROCKET2, LEFT
	end

BlockingRocket3Script:
	turnobject HERALD_ROUTE_ROCKET1, LEFT
	opentext
	writetext RocketBlocker1Text
	waitbutton
	closetext
	applymovement HERALD_ROUTE_ROCKET1, RocketPushPlayerBackPosition1
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, RocketPushesPlayerBack
	pause 5
	applymovement HERALD_ROUTE_ROCKET1, RocketGoesBack1
	end

BlockingRocket4Script:
	turnobject HERALD_ROUTE_ROCKET2, RIGHT
	opentext
	writetext RocketBlocker2Text
	waitbutton
	closetext
	applymovement HERALD_ROUTE_ROCKET2, RocketPushPlayerBackPosition2
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, RocketPushesPlayerBack
	pause 5
	applymovement HERALD_ROUTE_ROCKET2, RocketGoesBack2
	end

HeraldRouteGrottoEntryScript:
	opentext
	writetext HeraldRouteGrottoEntryText
	yesorno
	iftrue .HeraldGrottoWarp
	closetext
	end

.HeraldGrottoWarp
	closetext
	playsound SFX_ENTER_DOOR
	pause 5
	special FadeOutToWhite
	warp HERALD_GROTTO, 2, 13
	end

HeraldRouteYoungsterDannyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_YOUNGSTER_DANNY1
	iftrue .AfterBattle
	writetext YoungsterDannyPracticeBattle
	yesorno
	iffalse .NoBattle
	writetext YoungsterDannyBattleExcited
	waitbutton
	winlosstext DannyWinText, 0
	setlasttalked HERALD_ROUTE_YOUNGSTER2
	loadtrainer YOUNGSTER, DANNY1
	startbattle
	reloadmapafterbattle
	opentext
	writetext YoungsterDannyLossText
	waitbutton
	closetext
	setevent EVENT_BEAT_YOUNGSTER_DANNY1
	end

.NoBattle
	writetext YoungsterDannyGoodLuck
	waitbutton
	closetext
	turnobject HERALD_ROUTE_YOUNGSTER2, LEFT
	end

.AfterBattle
	writetext YoungsterDannyTrainMore
	waitbutton
	closetext
	end

HeraldRouteFruitTree:
	fruittree FRUITTREE_HERALD_ROUTE

RocketPushesPlayerBack:
	fix_facing
	set_sliding
	jump_step DOWN
	remove_sliding
	remove_fixed_facing
	step_sleep 8
	step_end

RocketPushPlayerBackPosition1:
	big_step UP
	big_step LEFT
	turn_head DOWN
	step_end

RocketPushPlayerBackPosition2:
	big_step UP
	big_step RIGHT
	turn_head DOWN
	step_end

RocketGoesBack1:
	big_step DOWN
	big_step RIGHT
	step_end

RocketGoesBack2:
	big_step DOWN
	big_step LEFT
	step_end

YoungsterKevinSeenText:
	text "Hey, I haven't"
	line "seen you here"

	para "before. You must"
	line "be new here, but"

	para "that won't stop"
	line "me from beating"
	cont "you! Come on!"
	done

YoungsterKevinBeatenText:
	text "Aww. You're"
	line "pretty good!"
	done

YoungsterKevinAfterText:
	text "I caught my"
	line "#MON right"
	cont "here!"

	para "But I need money"
	line "to get more..."
	done

BugCatcherJamesSeenText:
	text "Go my #MON!"
	line "We will win this"
	cont "time!"
	done

BugCatcherJamesBeatenText:
	text "Darn, not again..."
	done

BugCatcherJamesAfterText:
	text "I just got beat by"
	line "some girl. She was"
	cont "really tough."
	done

LassAlexisSeenText:
	text "My #MON and I"
	line "are visiting from"
	cont "SINNOH!"

	para "Look at all the"
	line "fun #MON I"
	cont "caught here!"
	done

LassAlexisBeatenText:
	text "I really like"
	line "your #MON!"
	done

LassAlexisAfterText:
	text "I caught a lot"
	line "of #MON."

	para "But I keep seeing"
	line "different ones"
	cont "sometimes."

	para "I think one comes"
	line "out at night too!"
	done

CoolTrainerFStacySeenText:
	text "Oh good. I could"
	line "use a warm up!"
	done

CoolTrainerFStacyBeatenText:
	text "What?!"
	done

CoolTrainerFStacyAfterText:
	text "You're good. Are"
	line "you signing up?"
	done

BlockingLassText:
	text "Sorry! I lost my"
	line "# BALLS! I can't"
	cont "find them at all!"

	para "I'll battle you"
	line "when I find them!"
	done

HeraldRouteYoungsterText:
	text "I just heard some-"
	line "thing down there."

	para "I wonder what it"
	line "could be, but it's"

	para "too scary for me"
	line "to check."
	done

HeraldRouteLassText:
	text "There's a lot of"
	line "different #MON"
	cont "that live here!"

	para "Some only come out"
	line "at night, or early"
	cont "in the morning."
	done

RocketBlocker1Text:
	text "Hey, beat it! We"
	line "don't need you"
	cont "snooping around!"
	done

RocketBlocker2Text:
	text "Turn around and"
	line "go back where you"
	cont "came from, kid."
	done

HeraldRouteSignText:
	text "HERALD PASS"

	para "HERALD COVE -"
	line "CRAGGY BEACH"
	done

RegistrationCenterSignText:
	text "BATTLE CONFERENCE"
	line "REGISTRATION AREA"
	done

HeraldRouteGrottoEntryText:
	text "The forest seems"
	line "to open up here."

	para "Would you like to"
	line "step inside?"
	done

YoungsterDannyPracticeBattle:
	text "Oh man, I'm so"
	line "nervous. I want to"
	cont "sign up, but..."

	para "I don't know if I"
	line "can do it."

	para "I've just arrived"
	line "from SINNOH, but I"

	para "might just want to"
	line "watch instead."

	para "You're a trainer?"
	line "Do you want to do"
	cont "a practice battle?"

	para "It might help me"
	line "clear my head."
	done

YoungsterDannyBattleExcited:
	text "Alright, great!"
	line "Thanks a lot! Come"

	para "on, BIDOOF! Let's"
	line "do this!"
	done

DannyWinText:
	text "Wow, you're good."
	done

YoungsterDannyLossText:
	text "Thanks for the"
	line "battle. I'm still"

	para "not sure if I want"
	line "to sign up yet."

	para "You totally should"
	line "though! You'd do"
	cont "really well there."

	para "I wish you the"
	line "best!"
	done

YoungsterDannyGoodLuck:
	text "Ah ok, I get it."
	line "I'll think on it"
	cont "some more then."
	done

YoungsterDannyTrainMore:
	text "I'm going to do it"
	line "I've decided! But"
	cont "I need practice."

	para "You go ahead, I'll"
	line "catch up soon!"
	done

HeraldRoute_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  5, REGISTRATION_CENTER, 1
	warp_event 4,   4, HERALD_GROTTO, 1

	def_coord_events
	coord_event 36, 2, SCENE_HERALD_ROUTE_ROCKETS, BlockingRocket3Script
	coord_event 39, 2, SCENE_HERALD_ROUTE_ROCKETS, BlockingRocket4Script

	def_bg_events
	bg_event 5,  3, BGEVENT_READ, HeraldRouteGrottoEntryScript
	bg_event 4,  3, BGEVENT_READ, HeraldRouteGrottoEntryScript
	bg_event 40, 12, BGEVENT_READ, HeraldRouteSignScript
	bg_event 22,  6, BGEVENT_READ, RegistrationCenterSignScript

	def_object_events
	object_event 31,  12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterKevin, -1
	object_event 17, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJames, -1
	object_event 11, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassAlexis, EVENT_LASS_BATTLE_HERALD_ROUTE
	object_event 19,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCoolTrainerFStacy, -1
	object_event  9, 16, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlockingLassScript, EVENT_LASS_AT_HERALD_ROUTE
	object_event  9,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HeraldRouteYoungsterScript, -1
	object_event 32,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HeraldRouteLassScript, -1
	object_event  37,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlockingRocket1Script, EVENT_ROCKETS_STEAL_SEALED_MAP
	object_event  38,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlockingRocket2Script, EVENT_ROCKETS_STEAL_SEALED_MAP
	object_event  51, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HeraldRouteYoungsterDannyScript, EVENT_BEAT_YOUNGSTER_DANNY1
	object_event  13,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HeraldRoutePotion, EVENT_HERALD_ROUTE_POTION
	object_event   5, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, HeraldRouteGreatBall, EVENT_HERALD_ROUTE_GREAT_BALL
	object_event 15, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HeraldRouteFruitTree, -1
