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
	next_list_item ; SCIENTIST_NEWTON (1)
	db "NEWTON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SCIENTIST_TESLA (2)
	db "TESLA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SCIENTIST_EDISON (3)
	db "EDISON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; YOUNGSTER_MILO (8)
	db "MILO@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER_TOBY (9)
	db "TOBY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER_FINN (10)
	db "FINN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:

	next_list_item ; DETECTIVE_HOLMES (1)
	db "HOLMES@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; DETECTIVE_MARLOWE (2)
	db "MARLOWE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; DETECTIVE_DUPIN (3)
	db "DUPIN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

BirdKeeperGroup:

	next_list_item ; BIRD_KEEPER_ROBIN (1)
	db "ROBIN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BIRD_KEEPER_WREN (2)
	db "WREN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BIRD_KEEPER_HAWK (3)
	db "HAWK@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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
	db "LANEY@", TRAINERTYPE_MOVES
	db 5
	dw COTTONEE
	dw COTTON_SPORE, ABSORB, GROWTH, NO_MOVE
	db 7
	dw EEVEE
	dw TACKLE, TAIL_WHIP, SAND_ATTACK, GROWL
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

	next_list_item ; LASS_LILY (5)
	db "LILY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; LASS_MOLLY (6)
	db "MOLLY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; LASS_ELLIE (7)
	db "ELLIE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
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

	next_list_item ; COOLTRAINERM_AIDEN (1)
	db "AIDEN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; COOLTRAINERM_DANTE (2)
	db "DANTE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; COOLTRAINERM_BLAKE (3)
	db "BLAKE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "STACY@", TRAINERTYPE_NORMAL
	db 8
	dw SHINX
	db 8
	dw COTTONEE
	db -1 ; end

	next_list_item ; COOLTRAINERF_ARIA (2)
	db "ARIA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; COOLTRAINERF_CLARA (3)
	db "CLARA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; COOLTRAINERF_ZOE (4)
	db "ZOE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

BeautyGroup:

	next_list_item ; BEAUTY_BELLE (1)
	db "BELLE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BEAUTY_CELINE (2)
	db "CELINE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BEAUTY_VIOLA (3)
	db "VIOLA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

PokemaniacGroup:

	next_list_item ; POKEMANIAC_FELIX (1)
	db "FELIX@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; POKEMANIAC_OSCAR (2)
	db "OSCAR@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; POKEMANIAC_HUGO (3)
	db "HUGO@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNT (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 11
	dw ZUBAT
	db 12
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM_REX (2)
	db "REX@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GRUNTM_AXEL (3)
	db "AXEL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GRUNTM_BRUTUS (4)
	db "BRUTUS@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

GentlemanGroup:

	next_list_item ; GENTLEMAN_ARTHUR (1)
	db "ARTHUR@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GENTLEMAN_WALTER (2)
	db "WALTER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GENTLEMAN_CECIL (3)
	db "CECIL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SkierGroup:

	next_list_item ; SKIER_ALPINE (1)
	db "ALPINE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SKIER_ASPEN (2)
	db "ASPEN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SKIER_SIERRA (3)
	db "SIERRA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

TeacherGroup:

	next_list_item ; TEACHER_AGNES (1)
	db "AGNES@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; TEACHER_HELEN (2)
	db "HELEN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; TEACHER_IRENE (3)
	db "IRENE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; BUG_CATCHER_CHIP (2)
	db "CHIP@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BUG_CATCHER_REED (3)
	db "REED@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BUG_CATCHER_FLINT (4)
	db "FLINT@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
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

	next_list_item ; FISHER_WADE (2)
	db "WADE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; FISHER_RIVER (3)
	db "RIVER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; FISHER_BROOK (4)
	db "BROOK@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SwimmerMGroup:

	next_list_item ; SWIMMERM_CODY (1)
	db "CODY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SWIMMERM_TYLER (2)
	db "TYLER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SWIMMERM_LUKE (3)
	db "LUKE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SwimmerFGroup:

	next_list_item ; SWIMMERF_CORAL (1)
	db "CORAL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SWIMMERF_MARINA (2)
	db "MARINA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SWIMMERF_PEARL (3)
	db "PEARL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; SAILOR_DRAKE (3)
	db "DRAKE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SAILOR_ANCHOR (4)
	db "ANCHOR@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SAILOR_PORTER (5)
	db "PORTER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SuperNerdGroup:

	next_list_item ; SUPER_NERD_BYRON (1)
	db "BYRON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SUPER_NERD_NIGEL (2)
	db "NIGEL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SUPER_NERD_MARTIN (3)
	db "MARTIN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

Rival2Group:

	end_list_items

GuitaristGroup:

	next_list_item ; GUITARIST_RIFF (1)
	db "RIFF@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GUITARIST_HENDRIX (2)
	db "HENDRIX@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GUITARIST_LENNON (3)
	db "LENNON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; HIKER_CLIFF (4)
	db "CLIFF@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; HIKER_BOULDER (5)
	db "BOULDER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; HIKER_GRANT (6)
	db "GRANT@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

BikerGroup:

	next_list_item ; BIKER_SPIKE (1)
	db "SPIKE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BIKER_SLASH (2)
	db "SLASH@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BIKER_RIDER (3)
	db "RIDER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; BURGLAR_LOCKE (1)
	db "LOCKE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BURGLAR_SHADOW (2)
	db "SHADOW@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BURGLAR_SLICK (3)
	db "SLICK@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

FirebreatherGroup:

	next_list_item ; FIREBREATHER_BLAZE (1)
	db "BLAZE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; FIREBREATHER_EMBER (2)
	db "EMBER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; FIREBREATHER_TORCH (3)
	db "TORCH@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

JugglerGroup:

	next_list_item ; JUGGLER_JESTER (1)
	db "JESTER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; JUGGLER_DEXTER (2)
	db "DEXTER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; JUGGLER_ORSON (3)
	db "ORSON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; BLACKBELT_T_RYU (5)
	db "RYU@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BLACKBELT_T_DAICHI (6)
	db "DAICHI@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BLACKBELT_T_AKIRA (7)
	db "AKIRA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

ExecutiveMGroup:

	end_list_items

PsychicGroup:

	next_list_item ; PSYCHIC_T_ORION (1)
	db "ORION@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; PSYCHIC_T_COSMO (2)
	db "COSMO@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; PSYCHIC_T_SALEM (3)
	db "SALEM@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

PicnickerGroup:

	next_list_item ; PICNICKER_DAISY (1)
	db "DAISY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; PICNICKER_POPPY (2)
	db "POPPY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; PICNICKER_ROSIE (3)
	db "ROSIE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

CamperGroup:

	next_list_item ; CAMPER_SCOUT (1)
	db "SCOUT@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; CAMPER_ARCHIE (2)
	db "ARCHIE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; CAMPER_BEAU (3)
	db "BEAU@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

ExecutiveFGroup:

	end_list_items

SageGroup:

	next_list_item ; SAGE_HAKU (1)
	db "HAKU@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SAGE_KOZEN (2)
	db "KOZEN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SAGE_DAIZEN (3)
	db "DAIZEN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

MediumGroup:

	next_list_item ; MEDIUM_MYSTRA (1)
	db "MYSTRA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; MEDIUM_SELENE (2)
	db "SELENE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; MEDIUM_OPAL (3)
	db "OPAL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

BoarderGroup:

	next_list_item ; BOARDER_FROST (1)
	db "FROST@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BOARDER_SHRED (2)
	db "SHRED@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BOARDER_SLOPE (3)
	db "SLOPE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

PokefanMGroup:

	next_list_item ; POKEFANM_HAROLD (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; POKEFANM_ALFRED (2)
	db "ALFRED@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

KimonoGirlGroup:

	next_list_item ; KIMONO_GIRL_SAKURA (1)
	db "SAKURA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; KIMONO_GIRL_AYAME (2)
	db "AYAME@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

TwinsGroup:

	next_list_item ; TWINS_MIA_AND_MAY (1)
	db "MIA & MAY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; TWINS_AVA_AND_EVE (2)
	db "AVA & EVE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

PokefanFGroup:

	next_list_item ; POKEFANF_MABEL (1)
	db "MABEL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; POKEFANF_EDITH (2)
	db "EDITH@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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

	next_list_item ; OFFICER_GRADY (1)
	db "GRADY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; OFFICER_BRENT (2)
	db "BRENT@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

GruntFGroup:

	next_list_item ; GRUNTF_RAVEN (1)
	db "RAVEN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GRUNTF_ROXY (2)
	db "ROXY@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

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
	dw TRAPINCH
	db -1 ; end

	next_list_item ; BLAIRE1 (2)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  5
	dw TOGEPI
	db -1 ; end

	next_list_item ; BLAIRE1 (3)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  5
	dw ARON
	db -1 ; end

	next_list_item ; BLAIRE2 (1)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  12
	dw TRAPINCH
	db  10
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; BLAIRE2 (2)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  12
	dw TOGEPI
	db  10
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; BLAIRE2 (3)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  12
	dw ARON
	db  10
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; BLAIRE3 (1)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  16
	dw ROCKRUFF
	db  15
	dw HOUNDOUR
	db  18
	dw TRAPINCH
	db -1 ; end

	next_list_item ; BLAIRE3 (2)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  16
	dw ROCKRUFF
	db  15
	dw HOUNDOUR
	db  18
	dw TOGEPI
	db -1 ; end

	next_list_item ; BLAIRE3 (3)
	db "BLAIRE@", TRAINERTYPE_NORMAL
	db  16
	dw ROCKRUFF
	db  15
	dw HOUNDOUR
	db  18
	dw ARON
	db -1 ; end

	end_list_items

PercyGroup:
	next_list_item ; PERCY1 (1)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 10
	dw LOTAD
	db 11
	dw TRAPINCH
	db -1 ; end

	next_list_item ; PERCY1 (2)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 10
	dw LOTAD
	db 11
	dw TOGEPI
	db -1 ; end

	next_list_item ; PERCY1 (3)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 10
	dw LOTAD
	db 11
	dw ARON
	db -1 ; end

	next_list_item ; PERCY2 (1)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 16
	dw ROCKRUFF
	db 15
	dw LOMBRE
	db 17
	dw TRAPINCH
	db -1 ; end

	next_list_item ; PERCY2 (2)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 16
	dw ROCKRUFF
	db 15
	dw LOMBRE
	db 17
	dw TOGEPI
	db -1 ; end

	next_list_item ; PERCY2 (3)
	db "PERCY@", TRAINERTYPE_NORMAL
	db 16
	dw ROCKRUFF
	db 15
	dw LOMBRE
	db 17
	dw ARON
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

	next_list_item ; BREEDER_HAZEL (2)
	db "HAZEL@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BREEDER_WILLOW (3)
	db "WILLOW@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

BugManiacGroup:
	next_list_item ; BUG_MANIAC (1)
	db "EDWIN@", TRAINERTYPE_NORMAL
	db  19
	dw YANMA
	db -1 ; end

	next_list_item ; BUG_MANIAC_MANTIS (2)
	db "MANTIS@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; BUG_MANIAC_STAG (3)
	db "STAG@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

ClownGroup:

	next_list_item ; CLOWN_BOBO (1)
	db "BOBO@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; CLOWN_PATCHES (2)
	db "PATCHES@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

CyclistGroup:

	next_list_item ; CYCLIST_PEDRO (1)
	db "PEDRO@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; CYCLIST_CHASE (2)
	db "CHASE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

NurseGroup:

	next_list_item ; NURSE_ELSA (1)
	db "ELSA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; NURSE_NINA (2)
	db "NINA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

EngineerGroup:

	next_list_item ; ENGINEER_RIVET (1)
	db "RIVET@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; ENGINEER_GORDON (2)
	db "GORDON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

HexManiacGroup:

	next_list_item ; HEX_MANIAC_LUNA (1)
	db "LUNA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; HEX_MANIAC_NYX (2)
	db "NYX@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

MysteryManGroup:

	next_list_item ; MYSTERY_MAN_ENIGMA (1)
	db "ENIGMA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; MYSTERY_MAN_CIPHER (2)
	db "CIPHER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

PainterGroup:

	next_list_item ; PAINTER_CLAUDE (1)
	db "CLAUDE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; PAINTER_MONET (2)
	db "MONET@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

RangerGroup:
	next_list_item ; GERALD (1)
	db "GERALD@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 15
	dw LOMBRE
	db -1 ; end

	next_list_item ; RANGER_ROWAN (2)
	db "ROWAN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; RANGER_FERN (3)
	db "FERN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

RuinManiacGroup:

	next_list_item ; RUIN_MANIAC_CEDRIC (1)
	db "CEDRIC@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; RUIN_MANIAC_RELIC (2)
	db "RELIC@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

ScubaDiverGroup:

	next_list_item ; SCUBA_DIVER_NEPTUNE (1)
	db "NEPTUNE@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SCUBA_DIVER_TRITON (2)
	db "TRITON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SuperTrainerGroup:

	next_list_item ; SUPERTRAINER_VICTOR (1)
	db "VICTOR@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SUPERTRAINER_REGINA (2)
	db "REGINA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SurferGroup:

	next_list_item ; SURFER_KAI (1)
	db "KAI@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SURFER_REEF (2)
	db "REEF@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

RocketCaptGroup:

	next_list_item ; ROCKET_CAPT_TALON (1)
	db "TALON@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; ROCKET_CAPT_VIPER (2)
	db "VIPER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

RocketSciGroup:

	next_list_item ; ROCKET_SCI_VOLT (1)
	db "VOLT@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; ROCKET_SCI_KELVIN (2)
	db "KELVIN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

TouristGroup:

	next_list_item ; TOURIST_MILES (1)
	db "MILES@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; TOURIST_PIPER (2)
	db "PIPER@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

SurvivalistGroup:
	next_list_item ; PERRY (1)
	db "PERRY@", TRAINERTYPE_MOVES
	db 6
	dw BUNEARY
	dw SPLASH, POUND, DEFENSE_CURL, CHARM
	db 6
	dw FLETCHLING
	dw TACKLE, GROWL, PECK, NO_MOVE
	db -1 ; end

	next_list_item ; JOHN (1)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 15
	dw NUMEL
	db 15
	dw ARON
	db -1 ; end

	next_list_item ; SURVIVALIST_FLYNN (3)
	db "FLYNN@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; SURVIVALIST_FORREST (4)
	db "FORREST@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

FarmerGroup:

	next_list_item ; FARMER_HANK (1)
	db "HANK@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; FARMER_AMOS (2)
	db "AMOS@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

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

	next_list_item ; GARDENER_IRIS (2)
	db "IRIS@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; GARDENER_FLORA (3)
	db "FLORA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

DancerGroup:
	next_list_item ; DANCER_RUMBA (1)
	db "RUMBA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	next_list_item ; DANCER_SAMBA (2)
	db "SAMBA@", TRAINERTYPE_NORMAL
	dbw 15, RATTATA
	db -1 ; end

	end_list_items

