DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
	const PHONECONTACT_CAVENDISH
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass EDWARD ; 1
	const EDWARD1

	trainerclass KENJI ; 2
	const KENJI1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass HARRISON ; c
	const HARRISON1

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const KEVIN
	const ALEX
	const DANNY1
	const ALLEN
	const DANNY2
	const WESLEY
	const DAVID

	trainerclass DETECTIVE ; 17

	trainerclass BIRD_KEEPER ; 18

	trainerclass LASS ; 19
	const ALEXIS
	const LANEY
	const CANDICE
	const NICOLE

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b

	trainerclass COOLTRAINERF ; 1c
	const STACY

	trainerclass BEAUTY ; 1d

	trainerclass POKEMANIAC ; 1e

	trainerclass GRUNTM ; 1f
	const GRUNT1

	trainerclass GENTLEMAN ; 20

	trainerclass SKIER ; 21

	trainerclass TEACHER ; 22

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const JAMES

	trainerclass FISHER ; 25
	const ARNOLD

	trainerclass SWIMMERM ; 26

	trainerclass SWIMMERF ; 27

	trainerclass SAILOR ; 28
	const RONALD
	const TUCKER

	trainerclass SUPER_NERD ; 29

	trainerclass RIVAL2 ; 2a

	trainerclass GUITARIST ; 2b

	trainerclass HIKER ; 2c
	const REGGIE
	const DONNY
	const CONNOR

	trainerclass BIKER ; 2d

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f

	trainerclass FIREBREATHER ; 30

	trainerclass JUGGLER ; 31

	trainerclass BLACKBELT_T ; 32
	const LAU
	const HONDA1
	const HONDA2
	const HONDA3

	trainerclass EXECUTIVEM ; 33

	trainerclass PSYCHIC_T ; 34

	trainerclass PICNICKER ; 35

	trainerclass CAMPER ; 36

	trainerclass EXECUTIVEF ; 37

	trainerclass SAGE ; 38

	trainerclass MEDIUM ; 39

	trainerclass BOARDER ; 3a

	trainerclass POKEFANM ; 3b

	trainerclass KIMONO_GIRL ; 3c

	trainerclass TWINS ; 3d

	trainerclass POKEFANF ; 3e

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41

	trainerclass GRUNTF ; 42

	trainerclass MYSTICALMAN ; 43
	const EUSINE

	trainerclass BLAIRE ; 44
	const BLAIRE_1_EKANS
	const BLAIRE_1_YANMA
	const BLAIRE_1_BALTOY
	const BLAIRE_2_EKANS
	const BLAIRE_2_YANMA
	const BLAIRE_2_BALTOY
	const BLAIRE_3_EKANS
	const BLAIRE_3_YANMA
	const BLAIRE_3_BALTOY

	trainerclass PERCY ; 45
	const PERCY_1_EKANS
	const PERCY_1_YANMA
	const PERCY_1_BALTOY
	const PERCY_2_EKANS
	const PERCY_2_YANMA
	const PERCY_2_BALTOY

	trainerclass BREEDER ; 46
	const DAWN

	trainerclass BUG_MANIAC ; 47
	const EDWIN

	trainerclass CLOWN ; 48

	trainerclass CYCLIST ; 49

	trainerclass NURSE ; 4a

	trainerclass ENGINEER ; 4b

	trainerclass HEX_MANIAC ; 4c

	trainerclass MYSTERY_MAN ; 4d

	trainerclass PAINTER ; 4e

	trainerclass RANGER ; 4f
	const GERALD

	trainerclass RUIN_MANIAC ; 50

	trainerclass SCUBA_DIVER ; 51

	trainerclass SUPERTRAINER ; 52

	trainerclass SURFER ; 53

	trainerclass ROCKET_CAPT ; 54

	trainerclass ROCKET_SCI ; 55

	trainerclass TOURIST ; 56

	trainerclass SURVIVALIST ; 57
	const PERRY
	const JOHN

	trainerclass FARMER ; 58

	trainerclass GARDENER ; 59
	const LILY

	trainerclass DANCER ; 5a

	DEF KRIS EQU __trainer_class__
DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
