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
	const SCIENTIST_NEWTON
	const SCIENTIST_TESLA
	const SCIENTIST_EDISON

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
	const YOUNGSTER_MILO
	const YOUNGSTER_TOBY
	const YOUNGSTER_FINN

	trainerclass DETECTIVE ; 17

	const DETECTIVE_HOLMES
	const DETECTIVE_MARLOWE
	const DETECTIVE_DUPIN

	trainerclass BIRD_KEEPER ; 18

	const BIRD_KEEPER_ROBIN
	const BIRD_KEEPER_WREN
	const BIRD_KEEPER_HAWK

	trainerclass LASS ; 19
	const ALEXIS
	const LANEY
	const CANDICE
	const NICOLE
	const LASS_LILY
	const LASS_MOLLY
	const LASS_ELLIE

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b

	const COOLTRAINERM_AIDEN
	const COOLTRAINERM_DANTE
	const COOLTRAINERM_BLAKE

	trainerclass COOLTRAINERF ; 1c
	const STACY
	const COOLTRAINERF_ARIA
	const COOLTRAINERF_CLARA
	const COOLTRAINERF_ZOE

	trainerclass BEAUTY ; 1d

	const BEAUTY_BELLE
	const BEAUTY_CELINE
	const BEAUTY_VIOLA

	trainerclass POKEMANIAC ; 1e

	const POKEMANIAC_FELIX
	const POKEMANIAC_OSCAR
	const POKEMANIAC_HUGO

	trainerclass GRUNTM ; 1f
	const GRUNT1
	const GRUNTM_REX
	const GRUNTM_AXEL
	const GRUNTM_BRUTUS

	trainerclass GENTLEMAN ; 20

	const GENTLEMAN_ARTHUR
	const GENTLEMAN_WALTER
	const GENTLEMAN_CECIL

	trainerclass SKIER ; 21

	const SKIER_ALPINE
	const SKIER_ASPEN
	const SKIER_SIERRA

	trainerclass TEACHER ; 22

	const TEACHER_AGNES
	const TEACHER_HELEN
	const TEACHER_IRENE

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const JAMES
	const BUG_CATCHER_CHIP
	const BUG_CATCHER_REED
	const BUG_CATCHER_FLINT

	trainerclass FISHER ; 25
	const ARNOLD
	const FISHER_WADE
	const FISHER_RIVER
	const FISHER_BROOK

	trainerclass SWIMMERM ; 26

	const SWIMMERM_CODY
	const SWIMMERM_TYLER
	const SWIMMERM_LUKE

	trainerclass SWIMMERF ; 27

	const SWIMMERF_CORAL
	const SWIMMERF_MARINA
	const SWIMMERF_PEARL

	trainerclass SAILOR ; 28
	const RONALD
	const TUCKER
	const SAILOR_DRAKE
	const SAILOR_ANCHOR
	const SAILOR_PORTER

	trainerclass SUPER_NERD ; 29

	const SUPER_NERD_BYRON
	const SUPER_NERD_NIGEL
	const SUPER_NERD_MARTIN

	trainerclass RIVAL2 ; 2a

	trainerclass GUITARIST ; 2b

	const GUITARIST_RIFF
	const GUITARIST_HENDRIX
	const GUITARIST_LENNON

	trainerclass HIKER ; 2c
	const REGGIE
	const DONNY
	const CONNOR
	const HIKER_CLIFF
	const HIKER_BOULDER
	const HIKER_GRANT

	trainerclass BIKER ; 2d

	const BIKER_SPIKE
	const BIKER_SLASH
	const BIKER_RIDER

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f

	const BURGLAR_LOCKE
	const BURGLAR_SHADOW
	const BURGLAR_SLICK

	trainerclass FIREBREATHER ; 30

	const FIREBREATHER_BLAZE
	const FIREBREATHER_EMBER
	const FIREBREATHER_TORCH

	trainerclass JUGGLER ; 31

	const JUGGLER_JESTER
	const JUGGLER_DEXTER
	const JUGGLER_ORSON

	trainerclass BLACKBELT_T ; 32
	const LAU
	const HONDA1
	const HONDA2
	const HONDA3
	const BLACKBELT_T_RYU
	const BLACKBELT_T_DAICHI
	const BLACKBELT_T_AKIRA

	trainerclass EXECUTIVEM ; 33

	trainerclass PSYCHIC_T ; 34

	const PSYCHIC_T_ORION
	const PSYCHIC_T_COSMO
	const PSYCHIC_T_SALEM

	trainerclass PICNICKER ; 35

	const PICNICKER_DAISY
	const PICNICKER_POPPY
	const PICNICKER_ROSIE

	trainerclass CAMPER ; 36

	const CAMPER_SCOUT
	const CAMPER_ARCHIE
	const CAMPER_BEAU

	trainerclass EXECUTIVEF ; 37

	trainerclass SAGE ; 38

	const SAGE_HAKU
	const SAGE_KOZEN
	const SAGE_DAIZEN

	trainerclass MEDIUM ; 39

	const MEDIUM_MYSTRA
	const MEDIUM_SELENE
	const MEDIUM_OPAL

	trainerclass BOARDER ; 3a

	const BOARDER_FROST
	const BOARDER_SHRED
	const BOARDER_SLOPE

	trainerclass POKEFANM ; 3b

	const POKEFANM_HAROLD
	const POKEFANM_ALFRED

	trainerclass KIMONO_GIRL ; 3c

	const KIMONO_GIRL_SAKURA
	const KIMONO_GIRL_AYAME

	trainerclass TWINS ; 3d

	const TWINS_MIA_AND_MAY
	const TWINS_AVA_AND_EVE

	trainerclass POKEFANF ; 3e

	const POKEFANF_MABEL
	const POKEFANF_EDITH

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41

	const OFFICER_GRADY
	const OFFICER_BRENT

	trainerclass GRUNTF ; 42

	const GRUNTF_RAVEN
	const GRUNTF_ROXY

	trainerclass MYSTICALMAN ; 43
	const EUSINE

	trainerclass BLAIRE ; 44
	const BLAIRE_1_TRAPINCH
	const BLAIRE_1_TOGEPI
	const BLAIRE_1_ARON
	const BLAIRE_2_TRAPINCH
	const BLAIRE_2_TOGEPI
	const BLAIRE_2_ARON
	const BLAIRE_3_TRAPINCH
	const BLAIRE_3_TOGEPI
	const BLAIRE_3_ARON

	trainerclass PERCY ; 45
	const PERCY_1_TRAPINCH
	const PERCY_1_TOGEPI
	const PERCY_1_ARON
	const PERCY_2_TRAPINCH
	const PERCY_2_TOGEPI
	const PERCY_2_ARON

	trainerclass BREEDER ; 46
	const DAWN
	const BREEDER_HAZEL
	const BREEDER_WILLOW

	trainerclass BUG_MANIAC ; 47
	const EDWIN
	const BUG_MANIAC_MANTIS
	const BUG_MANIAC_STAG

	trainerclass CLOWN ; 48

	const CLOWN_BOBO
	const CLOWN_PATCHES

	trainerclass CYCLIST ; 49

	const CYCLIST_PEDRO
	const CYCLIST_CHASE

	trainerclass NURSE ; 4a

	const NURSE_ELSA
	const NURSE_NINA

	trainerclass ENGINEER ; 4b

	const ENGINEER_RIVET
	const ENGINEER_GORDON

	trainerclass HEX_MANIAC ; 4c

	const HEX_MANIAC_LUNA
	const HEX_MANIAC_NYX

	trainerclass MYSTERY_MAN ; 4d

	const MYSTERY_MAN_ENIGMA
	const MYSTERY_MAN_CIPHER

	trainerclass PAINTER ; 4e

	const PAINTER_CLAUDE
	const PAINTER_MONET

	trainerclass RANGER ; 4f
	const GERALD
	const RANGER_ROWAN
	const RANGER_FERN

	trainerclass RUIN_MANIAC ; 50

	const RUIN_MANIAC_CEDRIC
	const RUIN_MANIAC_RELIC

	trainerclass SCUBA_DIVER ; 51

	const SCUBA_DIVER_NEPTUNE
	const SCUBA_DIVER_TRITON

	trainerclass SUPERTRAINER ; 52

	const SUPERTRAINER_VICTOR
	const SUPERTRAINER_REGINA

	trainerclass SURFER ; 53

	const SURFER_KAI
	const SURFER_REEF

	trainerclass ROCKET_CAPT ; 54

	const ROCKET_CAPT_TALON
	const ROCKET_CAPT_VIPER

	trainerclass ROCKET_SCI ; 55

	const ROCKET_SCI_VOLT
	const ROCKET_SCI_KELVIN

	trainerclass TOURIST ; 56

	const TOURIST_MILES
	const TOURIST_PIPER

	trainerclass SURVIVALIST ; 57
	const PERRY
	const JOHN
	const SURVIVALIST_FLYNN
	const SURVIVALIST_FORREST

	trainerclass FARMER ; 58

	const FARMER_HANK
	const FARMER_AMOS

	trainerclass GARDENER ; 59
	const LILY
	const GARDENER_IRIS
	const GARDENER_FLORA

	trainerclass DANCER ; 5a

	const DANCER_RUMBA
	const DANCER_SAMBA

	DEF KRIS EQU __trainer_class__
DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
