; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

EdwardGroup:
	next_list_item ; EDWARD (1)
	db "EDWARD@", TRAINERTYPE_ITEM_MOVES
	db 12
	dw KRABBY
	db NO_ITEM
	dw POISON_STING, MUD_SHOT, VICEGRIP, FOCUS_ENERGY
	db 11
	dw DUSKULL
	db NO_ITEM
	dw NIGHT_SHADE, DISABLE, SHADOW_SNEAK, PURSUIT
	db 13
	dw CORPHISH
	db BERRY
	dw WATER_GUN, MUD_SLAP, FOCUS_ENERGY, VICEGRIP
	db -1 ; end

	end_list_items

KenjiGroup:
	next_list_item ; KENJI (1)
	db "KENJI@", TRAINERTYPE_ITEM_MOVES
	db 18
	dw BUNEARY
	db NO_ITEM
	dw MIRROR_COAT, DOUBLE_KICK, QUICK_ATTACK, COUNTER
	db 17
	db CROAGUNK
	dw NO_ITEM
	dw PURSUIT, ROCK_TOMB, ARM_THRUST, POISON_STING
	db 19
	dw HERACROSS
	db BERRY_JUICE
	dw ROCK_TOMB, FURY_ATTACK, FOCUS_ENERGY, PIN_MISSILE
	db -1 ; end

	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 14
	dw METAPOD
	dw TACKLE, STRING_SHOT, HARDEN, NO_MOVE
	db 14
	dw PIDGEY
	dw POISON_STING, STRING_SHOT, HARDEN, NO_MOVE
	db 16
	dw SCYTHER
	dw QUICK_ATTACK, LEER, FURY_CUTTER, NO_MOVE
	db -1 ; end

	end_list_items

MortyGroup:
	next_list_item ; MORTY (1)
	db "MORTY@", TRAINERTYPE_MOVES
	db 21
	dw GASTLY
	dw LICK, POUND, MEAN_LOOK, CURSE
	db 21
	dw HAUNTER
	dw HYPNOSIS, POUND, CURSE, NIGHT_SHADE
	db 25
	dw GENGAR
	dw HYPNOSIS, SHADOW_BALL, MEAN_LOOK, DREAM_EATER
	db 23
	dw HAUNTER
	dw POUND, MEAN_LOOK, POUND, NIGHT_SHADE
	db -1 ; end

	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_MOVES
	db 27
	dw WOOPER
	dw PIDGEY, ICY_WIND, AURORA_BEAM, REST
	db 29
	dw PIDGEY
	dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 31
	dw PILOSWINE
	dw ICY_WIND, FURY_ATTACK, MIST, BLIZZARD
	db -1 ; end

	end_list_items

JasmineGroup:
	next_list_item ; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_MOVES
	db 30
	dw MAGNEMITE
	dw THUNDERBOLT, SUPERSONIC, POUND, THUNDER_WAVE
	db 30
	dw MAGNEMITE
	dw THUNDERBOLT, SUPERSONIC, POUND, THUNDER_WAVE
	db 35
	dw STEELIX
	dw SCREECH, SUNNY_DAY, ROCK_THROW, IRON_TAIL
	db -1 ; end

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_MOVES
	db 27
	dw EKANS
	dw LEER, RAGE, KARATE_CHOP, FURY_SWIPES
	db 30
	dw PIDGEY
	dw HYPNOSIS, POUND, SURF, DYNAMICPUNCH
	db -1 ; end

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw THUNDER_WAVE, SURF, POUND, DRAGONBREATH
	db 37
	dw DRAGONAIR
	dw THUNDER_WAVE, THUNDERBOLT, POUND, DRAGONBREATH
	db 37
	dw DRAGONAIR
	dw THUNDER_WAVE, ICE_BEAM, POUND, DRAGONBREATH
	db 40
	dw KINGDRA
	dw SMOKESCREEN, SURF, HYPER_BEAM, DRAGONBREATH
	db -1 ; end

	end_list_items

Rival1Group:

	end_list_items

PokemonProfGroup:

WillGroup:
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_MOVES
	db 40
	dw PIDGEY
	dw QUICK_ATTACK, POUND, CONFUSE_RAY, PSYCHIC_M
	db 41
	dw PIDGEY
	dw POUND, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 41
	dw EXEGGUTOR
	dw REFLECT, LEECH_SEED, POUND, PSYCHIC_M
	db 41
	dw PIDGEY
	dw CURSE, AMNESIA, BODY_SLAM, PSYCHIC_M
	db 42
	dw PIDGEY
	dw QUICK_ATTACK, POUND, CONFUSE_RAY, PSYCHIC_M
	db -1 ; end

	end_list_items

PKMNTrainerGroup:
	; HARRISON (1)
	db "HARRISON@", TRAINERTYPE_NORMAL
	db 17
	dw SHROOMISH
	db 16
	dw ONIX
	db 18
	dw COMBUSKEN
	db -1 ; end

	end_list_items

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 42
	dw HITMONTOP
	dw PURSUIT, QUICK_ATTACK, DIG, POUND
	db 42
	dw HITMONLEE
	dw SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, POUND
	db 42
	dw HITMONCHAN
	dw THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	db 43
	dw ONIX
	dw POUND, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
	db 46
	dw MACHAMP
	dw ROCK_SLIDE, POUND, POUND, CROSS_CHOP
	db -1 ; end

	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_MOVES
	db 42
	dw UMBREON
	dw SAND_ATTACK, CONFUSE_RAY, FAINT_ATTACK, MEAN_LOOK
	db 42
	dw PIDGEY
	dw STUN_SPORE, POUND, MOONLIGHT, POUND
	db 45
	dw GENGAR
	dw LICK, POUND, CURSE, DESTINY_BOND
	db 44
	dw MURKROW
	dw QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 47
	dw HOUNDOOM
	dw ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db -1 ; end

	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 40
	dw PIDGEY
	dw DOUBLE_TEAM, POUND, BATON_PASS, GIGA_DRAIN
	db 41
	dw VENOMOTH
	dw SUPERSONIC, GUST, PSYCHIC_M, TOXIC
	db 43
	dw PIDGEY
	dw PROTECT, POUND, EXPLOSION, SPIKES
	db 42
	dw PIDGEY
	dw POUND, POUND, SLUDGE_BOMB, TOXIC
	db 44
	dw CROBAT
	dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 44
	dw GYARADOS
	dw FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 47
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 47
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
	db 46
	dw PIDGEY
	dw WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 46
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
	db 50
	dw DRAGONITE
	dw FIRE_BLAST, SAFEGUARD, POUND, HYPER_BEAM
	db -1 ; end

	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_MOVES
	db 41
	dw GRAVELER
	dw DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
	db 41
	dw RHYHORN
	dw FURY_ATTACK, SCARY_FACE, EARTHQUAKE, POUND
	db 42
	dw PIDGEY
	dw BITE, SURF, PROTECT, POUND
	db 44
	dw ONIX
	dw POUND, ROCK_SLIDE, POUND, SANDSTORM
	db 42
	dw WOOPER
	dw SLASH, SURF, ENDURE, GIGA_DRAIN
	db -1 ; end

	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 42
	dw PIDGEY
	dw SURF, DISABLE, PSYCH_UP, PSYCHIC_M
	db 42
	dw PIDGEY
	dw SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db 44
	dw LAPRAS
	dw SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
	db 47
	dw STARMIE
	dw SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_MOVES
	db 44
	dw RAICHU
	dw THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 40
	dw PIDGEY
	dw SCREECH, DOUBLE_TEAM, POUND, EXPLOSION
	db 40
	dw MAGNETON
	dw POUND, DOUBLE_TEAM, POUND, ZAP_CANNON
	db 40
	dw PIDGEY
	dw SCREECH, DOUBLE_TEAM, POUND, EXPLOSION
	db 46
	dw PIDGEY
	dw QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	db -1 ; end

	end_list_items

ScientistGroup:

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 42
	dw PIDGEY
	dw VINE_WHIP, POUND, GIGA_DRAIN, SLEEP_POWDER
	db 41
	dw JUMPLUFF
	dw MEGA_DRAIN, LEECH_SEED, POUND, GIGA_DRAIN
	db 46
	dw PIDGEY
	dw SUNNY_DAY, SYNTHESIS, POUND, RAZOR_LEAF
	db 46
	dw PIDGEY
	dw SUNNY_DAY, SYNTHESIS, POUND, SOLARBEAM
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 4
	dw PIDGEY
	db 5
	dw SENTRET
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALEX@", TRAINERTYPE_MOVES
	db 9
	dw SWINUB
	dw TACKLE, ICY_WIND, NO_MOVE, NO_MOVE
	db 9
	dw VENONAT
	dw CONFUSION, LEECH_LIFE, DISABLE, TACKLE
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 5
	dw BIDOOF
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "ALLEN@", TRAINERTYPE_NORMAL
	db 10
	dw PIDGEY
	db 10
	dw BIDOOF
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 15
	dw BIBAREL
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "WESLEY@", TRAINERTYPE_NORMAL
	db 13
	dw FLETCHLING
	db 12
	dw BIDOOF
	db 14
	dw MACHOP
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 14
	dw BIDOOF
	db 16
	dw DUNSPARCE
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:

	end_list_items

BirdKeeperGroup:

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "ALEXIS@", TRAINERTYPE_NORMAL
	db 4
	dw PIDGEY
	db 6
	dw KRABBY
	db 5
	dw SENTRET
	db 5
	dw LOTAD
	db -1 ; end

	next_list_item ; LASS (1)
	db "LANEY@", TRAINERTYPE_NORMAL
	db 5
	dw COTTONEE
	db 7
	dw EEVEE
	db -1 ; end

	next_list_item ; LASS (2)
	db "CANDICE@", TRAINERTYPE_NORMAL
	db 8
	dw PIDGEY
	db 8
	dw COTTONEE
	db 8
	dw SENTRET
	db -1 ; end

	next_list_item ; LASS (3)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 11
	dw COTTONEE
	db 11
	dw SHINX
	db -1 ; end

	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 36
	dw CROBAT
	dw SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 33
	dw PIDGEY
	dw SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 39
	dw VENOMOTH
	dw POUND, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

	end_list_items

CooltrainerMGroup:

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "STACY@", TRAINERTYPE_NORMAL
	db 8
	dw SHINX
	db 8
	dw COTTONEE
	db -1 ; end

	end_list_items

BeautyGroup:

	end_list_items

PokemaniacGroup:

	end_list_items

GruntMGroup:
	next_list_item ; GRUNT (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 11
	dw ZUBAT
	db 12
	dw KOFFING
	db -1 ; end

	end_list_items

GentlemanGroup:

	end_list_items

SkierGroup:

	end_list_items

TeacherGroup:

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46
	dw ESPEON
	dw SAND_ATTACK, QUICK_ATTACK, POUND, PSYCHIC_M
	db 46
	dw PIDGEY
	dw POUND, REFLECT, BATON_PASS, PSYCHIC_M
	db 48
	dw ALAKAZAM
	dw RECOVER, POUND, PSYCHIC_M, REFLECT
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 5
	dw CATERPIE
	db 6
	dw SURSKIT
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 11
	dw CHINCHOU
	db 11
	dw CORPHISH
	db 12
	dw HORSEA
	db -1 ; end

	end_list_items

SwimmerMGroup:

	end_list_items

SwimmerFGroup:

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 11
	dw CHINCHOU
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 10
	dw CORPHISH
	db 12
	dw KRABBY
	db -1 ; end

	end_list_items

SuperNerdGroup:

	end_list_items

Rival2Group:

	end_list_items

GuitaristGroup:

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 13
	dw ZUBAT
	db -1 ; end

	next_list_item ; HIKER (2)
	db "DONNY@", TRAINERTYPE_NORMAL
	db 13
	dw ARON
	db 14
	dw GEODUDE
	db 13
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (3)
	db "CONNOR@", TRAINERTYPE_NORMAL
	db 14
	dw ROCKRUFF
	db 14
	dw TYROGUE
	db 15
	dw ARON
	db -1 ; end

	end_list_items

BikerGroup:

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 45
	dw PIDGEY
	dw CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45
	dw PIDGEY
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50
	dw PIDGEY
	dw QUICK_ATTACK, POUND, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	end_list_items

BurglarGroup:

	end_list_items

FirebreatherGroup:

	end_list_items

JugglerGroup:

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "LAU@", TRAINERTYPE_NORMAL
	db 12
	dw MACHOP
	db 13
	dw TYROGUE
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "HONDA@", TRAINERTYPE_NORMAL
	db 17
	dw PANCHAM
	db 17
	dw ARON
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "HONDA@", TRAINERTYPE_NORMAL
	db 17
	dw MACHOP
	db 17
	dw CROAGUNK
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "HONDA@", TRAINERTYPE_NORMAL
	db 17
	dw PAWMI
	db 17
	dw MACHOP
	db -1 ; end

	end_list_items

ExecutiveMGroup:

	end_list_items

PsychicGroup:

	end_list_items

PicnickerGroup:

	end_list_items

CamperGroup:

	end_list_items

ExecutiveFGroup:

	end_list_items

SageGroup:

	end_list_items

MediumGroup:

	end_list_items

BoarderGroup:

	end_list_items

PokefanMGroup:

	end_list_items

KimonoGirlGroup:

	end_list_items

TwinsGroup:

	end_list_items

PokefanFGroup:

	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81
	dw PIKACHU
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73
	dw ESPEON
	dw MUD_SLAP, REFLECT, POUND, PSYCHIC_M
	db 75
	dw SNORLAX
	dw AMNESIA, POUND, REST, BODY_SLAM
	db 77
	dw VENUSAUR
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, POUND
	db 77
	dw BLASTOISE
	dw RAIN_DANCE, SURF, BLIZZARD, POUND
	db -1 ; end

	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56
	dw PIDGEOT
	dw QUICK_ATTACK, WHIRLWIND, WING_ATTACK, POUND
	db 54
	dw ALAKAZAM
	dw DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56
	dw RHYDON
	dw FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58
	dw GYARADOS
	dw TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58
	dw EXEGGUTOR
	dw SUNNY_DAY, LEECH_SEED, POUND, SOLARBEAM
	db 58
	dw ARCANINE
	dw ROAR, POUND, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

	end_list_items

OfficerGroup:

	end_list_items

GruntFGroup:

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23
	dw PIDGEY
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	dw LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw PIDGEY
	dw SCREECH, POUND, THUNDER, ROLLOUT
	db -1 ; end

	end_list_items

BlaireGroup:
	next_list_item ; BLAIRE1 (1)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  5
	dw EKANS
	db -1 ; end

	next_list_item ; BLAIRE1 (2)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  5
	dw YANMA
	db -1 ; end

	next_list_item ; BLAIRE1 (3)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  5
	dw BALTOY
	db -1 ; end

	next_list_item ; BLAIRE2 (1)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  16
	dw ROCKRUFF
	db  15
	dw HOUNDOUR
	db  18
	dw EKANS
	db -1 ; end

	next_list_item ; BLAIRE2 (2)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  16
	dw ROCKRUFF
	db  15
	dw HOUNDOUR
	db  18
	dw YANMA
	db -1 ; end

	next_list_item ; BLAIRE2 (3)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  16
	dw ROCKRUFF
	db  15
	dw HOUNDOUR
	db  18
	dw BALTOY
	db -1 ; end

	end_list_items

PercyGroup:
	next_list_item ; PERCY1 (1)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 10
	dw LOTAD
	db 11
	dw EKANS
	db -1 ; end

	next_list_item ; PERCY1 (2)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 10
	dw LOTAD
	db 11
	dw YANMA
	db -1 ; end

	next_list_item ; PERCY1 (3)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 10
	dw LOTAD
	db 11
	dw BALTOY
	db -1 ; end

	next_list_item ; PERCY2 (1)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 16
	dw ROCKRUFF
	db 15
	dw LOMBRE
	db 17
	dw EKANS
	db -1 ; end

	next_list_item ; PERCY2 (2)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 16
	dw ROCKRUFF
	db 15
	dw LOMBRE
	db 17
	dw YANMA
	db -1 ; end

	next_list_item ; PERCY2 (3)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 16
	dw ROCKRUFF
	db 15
	dw LOMBRE
	db 17
	dw BALTOY
	db -1 ; end

	end_list_items

BreederGroup:
	next_list_item ; BREEDER (1)
	db "DAWN@", TRAINERTYPE_NORMAL
	db  15
	dw BUNEARY
	db  16
	dw SHINX
	db  15
	dw VULPIX
	db  16
	dw RIOLU
	db -1 ; end

	end_list_items

BugManiacGroup:
	next_list_item ; BUG_MANIAC (1)
	db "EDWIN@", TRAINERTYPE_NORMAL
	db  19
	dw YANMA
	db -1 ; end

	end_list_items

ClownGroup:

CyclistGroup:

NurseGroup:

EngineerGroup:

HexManiacGroup:

MysteryManGroup:

PainterGroup:

RangerGroup:
	next_list_item ; GERALD (1)
	db "GERALD@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 15
	dw LOMBRE
	db -1 ; end

	end_list_items

RuinManiacGroup:

ScubaDiverGroup:

SuperTrainerGroup:

SurferGroup:

RocketCaptGroup:

RocketSciGroup:

TouristGroup:

SurvivalistGroup:
	next_list_item ; PERRY (1)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 6
	dw BUNEARY
	db 6
	dw FLETCHLING
	db -1 ; end

	next_list_item ; JOHN (1)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 15
	dw NUMEL
	db 15
	dw ARON
	db -1 ; end

	end_list_items

FarmerGroup:

GardenerGroup:
	next_list_item ; GARDENER (1)
	db "LILY@", TRAINERTYPE_NORMAL
	db  17
	dw SHROOMISH
	db  17
	dw HOPPIP
	db  18
	dw APPLIN
	db -1 ; end

	end_list_items

DancerGroup:
