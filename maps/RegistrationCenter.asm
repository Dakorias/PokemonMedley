	object_const_def
	const REGISTRATION_CENTER_OFFICER
	const REGISTRATION_CENTER_COOLTRAINERF
	const REGISTRATION_CENTER_SAILOR
	const REGISTRATION_CENTER_GIOVANNI_HAT

RegistrationCenter_MapScripts:
	def_scene_scripts

	def_callbacks

RegistrationCenterOfficerScript:
	disappear REGISTRATION_CENTER_GIOVANNI_HAT
	moveobject REGISTRATION_CENTER_GIOVANNI_HAT, 4, 9
	faceplayer
	opentext
	checkitem ID_CARD
	iftrue .Skip
	writetext RegistrationText
	yesorno
	iffalse .No
	writetext RegistrationSignUp
	waitbutton
	verbosegiveitem ID_CARD
	writetext RegistrationStarterKit
	waitbutton
	verbosegiveitem POTION
	verbosegiveitem CANDY_BAG
	verbosegiveitem EXP_SHARE
	verbosegiveitem TOWN_MAP
	verbosegiveitem TEACHY_TV
	writetext RegistrationGoodLuck
	waitbutton
	closetext
	pause 5
	playsound SFX_ENTER_DOOR
	showemote EMOTE_SHOCK, REGISTRATION_CENTER_OFFICER, 15
	appear REGISTRATION_CENTER_GIOVANNI_HAT
	turnobject PLAYER, DOWN
	applymovement REGISTRATION_CENTER_GIOVANNI_HAT, GiovanniWalksToPlayer
	opentext
	writetext GiovanniStandAside
	waitbutton
	closetext
	applymovement PLAYER, PlayerMovesAside
	applymovement REGISTRATION_CENTER_GIOVANNI_HAT, GiovanniWalksToCounter
	opentext
	writetext GiovanniTalksToOfficer
	waitbutton
	closetext
	pause 10
	turnobject REGISTRATION_CENTER_GIOVANNI_HAT, RIGHT
	opentext
	writetext GiovanniTalksToPlayer
	waitbutton
	closetext
	pause 5
	turnobject PLAYER, DOWN
	applymovement REGISTRATION_CENTER_GIOVANNI_HAT, GiovanniWalksToExit
	playsound SFX_EXIT_BUILDING
	disappear REGISTRATION_CENTER_GIOVANNI_HAT
	pause 5
	applymovement PLAYER, PlayerWalksBackToCounter
	opentext
	writetext OfficerTalksAboutGiovanni
	waitbutton
	closetext
	setevent EVENT_MET_GIOVANNI_AT_REGISTRATION
	end

.No
	writetext ComeBackLater
	waitbutton
	closetext
	end

.Skip
	writetext RegistrationGoodLuck
	waitbutton
	closetext
	end

RegistrationCenterCooltrainerFScript:
	jumptextfaceplayer RegistrationCenterCooltrainerFText

RegistrationCenterSailorScript:
	jumptextfaceplayer RegistrationCenterSailorText

GiovanniWalksToPlayer:
	step UP
	step UP
	step UP
	step UP
	step_end

PlayerMovesAside:
	step RIGHT
	turn_head LEFT
	step_end

GiovanniWalksToCounter:
	step UP
	step_end

GiovanniWalksToExit:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PlayerWalksBackToCounter:
	step LEFT
	turn_head UP
	step_end

RegistrationText:
	text "Hello! Are you"
	line "here to sign up?"
	done

ComeBackLater:
	text "Ah, my mistake."
	line "Please come back"
	cont "later if you wish."
	done

RegistrationSignUp:
	text "Great! PROF. OAK"
	line "called ahead with"
	cont "your details."

	para "Your I.D. CARD is"
	line "already made and"
	cont "ready for you."
	done

RegistrationStarterKit:
	text "All participants"
	line "also get a little"
	cont "gift from us!"

	para "Consider it a"
	line "thank you for join"
	cont "-ing us."
	done

RegistrationGoodLuck:
	text "Thank you again,"
	line "and good luck!"
	done

GiovanniStandAside:
	text "Excuse me. Stand"
	line "aside please."
	done

GiovanniTalksToOfficer:
	text "I've just spoken"
	line "with the head org-"
	cont "aniser."

	para "We're cutting off"
	line "registration as of"
	cont "today."

	para "There are plenty"
	line "of trainers that"
	cont "have entered now."

	para "All that's left is"
	line "to see how it"
	cont "turns out."
	done

GiovanniTalksToPlayer:
	text "Ah, I see you've"
	line "just registered."

	para "It looks like you"
	line "will be our very"
	cont "last participant."

	para "...Strange. You"
	line "remind me of some"

	para "trainers I know."
	line "I trust you'll do"
	cont "very well then."

	para "I look forward to"
	line "seeing you again."
	done

OfficerTalksAboutGiovanni:
	text "That was the main"
	line "benefactor for our"
	cont "tournament!"

	para "Without him, we"
	line "couldn't have done"
	cont "this at all!"

	para "He really likes"
	line "privacy though."

	para "No one's really"
	line "talked to him much"
	cont "since it started."

	para "Anyways, take care"
	line "and good luck!"
	done

RegistrationCenterCooltrainerFText:
	text "The GYM LEADERS"
	line "don't stick to one"

	para "type like in other"
	line "regions."

	para "They just use what"
	line "they love most!"
	done

RegistrationCenterSailorText:
	text "The GYM CHALLENGES"
	line "are really fun to"
	cont "watch!"

	para "It makes me really"
	line "excited to see how"

	para "the finals will"
	line "end up!"
	done

RegistrationCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4,  9, HERALD_ROUTE, 1
	warp_event 5,  9, HERALD_ROUTE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RegistrationCenterOfficerScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RegistrationCenterCooltrainerFScript, -1
	object_event  1,  5, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RegistrationCenterSailorScript, -1
	object_event  4, -3, SPRITE_GIOVANNI_HAT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MET_GIOVANNI_AT_REGISTRATION
