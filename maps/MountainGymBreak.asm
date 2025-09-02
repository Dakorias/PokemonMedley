	object_const_def
	const MOUNTAIN_GYM_BREAK_KENJI
	const MOUNTAIN_GYM_BREAK_BLAIRE
	const MOUNTAIN_GYM_BREAK_PERCY
	const MOUNTAIN_GYM_BREAK_HARRISON
	const MOUNTAIN_GYM_BREAK_YOUNGSTER1
	const MOUNTAIN_GYM_BREAK_HIKER
	const MOUNTAIN_GYM_BREAK_BLACKBELT

MountainGymBreak_MapScripts:
	def_scene_scripts
	scene_script MountainGymBreakMovement, SCENE_MOUNTAIN_GYM_BREAK_MOVEMENT
	scene_script MountainGymBreak, SCENE_MOUNTAIN_GYM_BREAK

	def_callbacks

	MountainGymBreakMovement:
	applymovement PLAYER, PlayerStepsFromSteps
	setscene SCENE_MOUNTAIN_GYM_BREAK

	MountainGymBreak:
	end

	WalkPastKenjiBreakScript:
		turnobject PLAYER, LEFT
		turnobject MOUNTAIN_GYM_KENJI, RIGHT
		sjump MountainGymBreakScript

	KenjiTalkToBreakScript:
		faceplayer

	MountainGymBreakScript:
		opentext
		checkevent EVENT_BEAT_KENJI_TOURNAMENT
		iftrue KenjiGymFightBreakScript
		checkevent EVENT_TOURNAMENT_ROUND_2_BEAT
		iftrue	GymBreakRound3Script
		checkevent EVENT_TOURNAMENT_ROUND_1_BEAT
		iftrue	GymBreakRound2Script
		sjump GymBreakRound1Script
		end

	GymBreakRound1Script:
		writetext KenjiRound1Text
		yesorno
		iffalse PlayerStepsAwayScript
		writetext KenjiLeadsPlayerToArena
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_BREAK_KENJI, StepUpMovement
		applymovement PLAYER, StepUpMovement
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	GymBreakRound2Script:
		writetext KenjiRound2Text
		yesorno
		iffalse PlayerStepsAwayScript
		writetext KenjiLeadsPlayerToArena
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_BREAK_KENJI, StepUpMovement
		applymovement PLAYER, StepUpMovement
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	GymBreakRound3Script:
		writetext KenjiRound3Text
		yesorno
		iffalse PlayerStepsAwayScript
		writetext KenjiLeadsPlayerToArena
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_BREAK_KENJI, StepUpMovement
		applymovement PLAYER, StepUpMovement
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	KenjiGymFightBreakScript:
		writetext KenjiFinalRoundText
		yesorno
		iffalse PlayerStepsAwayScript
		writetext KenjiLeadsPlayerToArena
		waitbutton
		closetext
		applymovement MOUNTAIN_GYM_BREAK_KENJI, StepUpMovement
		applymovement PLAYER, StepUpMovement
		playsound SFX_ENTER_DOOR
		pause 5
		warpcheck
		end

	PlayerStepsAwayScript:
		writetext KenjiComeBackWhenReadyText
		waitbutton
		closetext
		applymovement PLAYER, PlayerStepsAwayMovement
		end

	LeavingStairsScript:
		opentext
		writetext PlayerLeavesStairs
		yesorno
		iffalse PlayerStepsAwayStairs
		closetext
		clearevent EVENT_TOURNAMENT_ROUND_1_BEAT
		clearevent EVENT_TOURNAMENT_ROUND_2_BEAT
		clearevent EVENT_BEAT_KENJI_TOURNAMENT
		playsound SFX_ENTER_DOOR
		pause 5
		setscene SCENE_MOUNTAIN_GYM_BREAK_MOVEMENT
		special FadeOutToWhite
		warp MT_MONEGO, 22, 5
		end

	PlayerStepsAwayStairs:
		closetext
		applymovement PLAYER, PlayerWalksFromSteps
		end

	BlaireTalksToPlayerScript:
		jumptextfaceplayer Blaire2ndGymTalkText

	PercyTalksToPlayerScript:
		jumptextfaceplayer Percy2ndGymTalkText

	PokefanTalksToPlayerScript:
		jumptextfaceplayer PokefanTalksText

	BlackBeltTalksToPlayerScript:
		faceplayer
		opentext
		checkevent EVENT_TOURNAMENT_ROUND_1_BEAT
		iftrue .BlackBeltRound2TalksScript
		writetext BlackBeltTalks1Text
		waitbutton
		closetext
		end

	.BlackBeltRound2TalksScript:
		writetext BlackBeltTalks2Text
		waitbutton
		closetext
		end

	YoungsterTalksToPlayerScript:
		faceplayer
		opentext
		checkevent EVENT_TOURNAMENT_ROUND_1_BEAT
		iftrue .YoungsterRound2TalksScript
		writetext YoungsterTalks1Text
		waitbutton
		closetext
		end

	.YoungsterRound2TalksScript:
		writetext YoungsterTalks2Text
		waitbutton
		closetext
		end

	HarrisonTalksToPlayerScript:
		faceplayer
		opentext
		checkevent EVENT_TOURNAMENT_ROUND_2_BEAT
		iftrue .HarrisonRound3TalksScript
		checkevent EVENT_TOURNAMENT_ROUND_1_BEAT
		iftrue .HarrisonRound2TalksScript
		writetext HarrisonTalks1Text
		waitbutton
		closetext
		end

	.HarrisonRound3TalksScript:
		writetext HarrisonTalks3Text
		waitbutton
		closetext
		end

	.HarrisonRound2TalksScript:
		writetext HarrisonTalks2Text
		waitbutton
		closetext
		end

	PlayerStepsFromSteps:
		step UP
		step LEFT
		step_end

	PlayerWalksFromSteps:
		step LEFT
		step_end

	PlayerStepsAwayMovement:
		step DOWN
		step_end

	StepUpMovement:
		step UP
		step_end

	KenjiRound1Text:
		text "This will be your"
		line "first fight."

		para "Are you prepared?"
		done

	KenjiRound2Text:
		text "Congratulations"
		line "on your victory!"

		para "This will be your"
		line "second fight."

		para "Are you prepared?"
		done

	KenjiRound3Text:
		text "Congratulations"
		line "on your victory!"

		para "This will be your"
		line "third fight."

		para "Are you prepared?"
		done

	KenjiFinalRoundText:
		text "This will be your"
		line "final fight."

		para "Are you prepared?"
		done

	KenjiLeadsPlayerToArena:
		text "Great! Then follow"
		line "me to the arena!"

		para "We will have your"
		line "opponent waiting"
		cont "for you there."
		done

	KenjiComeBackWhenReadyText:
		text "Ok, then return"
		line "when you are"
		cont "ready to fight!"
		done

	PlayerLeavesStairs:
		text "You are about to"
		line "forfeit."

		para "Are you sure you"
		line "want to leave?"
		done

	Blaire2ndGymTalkText:
		text "BLAIRE: <PLAYER>."
		line "I figured that"
		cont "you'd get here."

		para "I hope I get to"
		line "fight you here."

		para "You're going to"
		line "be shocked at how"
		cont "much better I am!"
		done

	Percy2ndGymTalkText:
		text "PERCY: <PLAYER>! I"
		line "knew you would be"
		cont "here soon!"

		para "There's lots of"
		line "trainers here, and"

		para "I even saw more"
		line "rooms full on my"
		cont "way in."

		para "I hope we get to"
		line "battle, it'll be"
		cont "a ton of fun!"
		done

	PokefanTalksText:
		text "Oh man... I'm so"
		line "nervous."

		para "I didn't know we"
		line "would be battling"

		para "in front of so"
		line "many people..."
		done

	BlackBeltTalks1Text:
		text "I'm one of KENJI's"
		line "trainees. I'm"

		para "hoping to battle"
		line "him today at the"

		para "end of this"
		line "tournament."
		done

	BlackBeltTalks2Text:
		text "You're good to"
		line "make it past the"
		cont "first battle."

		para "I hope to fight"
		line "you in the next"
		cont "round."

		para "KENJI tells us to"
		line "always seek out"
		cont "strong opponents."
		done

	YoungsterTalks1Text:
		text "I'm so excited to"
		line "be here!"

		para "I came all the way"
		line "here just to fight"
		cont "in the league!"

		para "I just have to"
		line "win!"
		done

	YoungsterTalks2Text:
		text "I made it through"
		line "the first round!"

		para "There's so many"
		line "strong trainers"
		cont "left though..."

		para "I hope I can"
		line "still win."
		done

	HarrisonTalks1Text:
		text "...You look tough"
		line "to beat."

		para "I think this will"
		line "be pretty fun!"
		done

	HarrisonTalks2Text:
		text "My last opponent"
		line "was pretty good."

		para "I better keep my"
		line "guard up if I"
		cont "want to win."
		done

	HarrisonTalks3Text:
		text "I watched your"
		line "last battle."

		para "You're good, I'm a"
		line "bit nervous here."

		para "I think we're the"
		line "last fight, so"

		para "let's make it a"
		line "good one!"
		done

MountainGymBreak_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  8, MT_MONEGO, 2
	warp_event  5,  0, MOUNTAIN_GYM_ARENA, 1
	warp_event  4,  1, MOUNTAIN_GYM_ARENA, 1
	warp_event  4,  2, MOUNTAIN_GYM_ARENA, 2

	def_coord_events
	coord_event   5,  1, SCENE_MOUNTAIN_GYM_BREAK, WalkPastKenjiBreakScript
	coord_event  10,  7, SCENE_MOUNTAIN_GYM_BREAK, LeavingStairsScript
	coord_event   9,  8, SCENE_MOUNTAIN_GYM_BREAK, LeavingStairsScript

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_KENJI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KenjiTalkToBreakScript, -1
	object_event  3,  6, SPRITE_BAD_RIVAL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BlaireTalksToPlayerScript, EVENT_TOURNAMENT_ROUND_1_BEAT
	object_event  1,  3, SPRITE_GOOD_RIVAL, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PercyTalksToPlayerScript, EVENT_TOURNAMENT_ROUND_1_BEAT
	object_event  9,  2, SPRITE_HARRISON, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HarrisonTalksToPlayerScript, EVENT_BEAT_KENJI_TOURNAMENT
	object_event  7,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, YoungsterTalksToPlayerScript, EVENT_TOURNAMENT_ROUND_2_BEAT
	object_event  6,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokefanTalksToPlayerScript, EVENT_TOURNAMENT_ROUND_1_BEAT
	object_event  1,  8, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackBeltTalksToPlayerScript, EVENT_TOURNAMENT_ROUND_2_BEAT
