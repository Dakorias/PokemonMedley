; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; 00
	const POUND        ; 01
	const KARATE_CHOP  ; 02
	const SWIFT        ; 03
	const TAILWIND     ; 04
	const FLATTER      ; 05
	const BUG_BUZZ	   ; 06
	const FIRE_PUNCH   ; 07
	const ICE_PUNCH    ; 08
	const THUNDERPUNCH ; 09
	const SCRATCH      ; 0a
	const VICEGRIP     ; 0b
	const QUIVER_DANCE ; 0c
	const SIGNAL_BEAM  ; 0d
	const SWORDS_DANCE ; 0e
	const CUT          ; 0f
	const GUST         ; 10
	const WING_ATTACK  ; 11
	const WHIRLWIND    ; 12
	const FLY          ; 13
	const U_TURN		   ; 14
	const DARK_PULSE   ; 15
	const VINE_WHIP    ; 16
	const BANEFULBUNKR ; 17
	const DOUBLE_KICK  ; 18
	const DARK_VOID    ; 19
	const HOWL				 ; 1a
	const NASTY_PLOT	 ; 1b
	const SAND_ATTACK  ; 1c
	const HEADBUTT     ; 1d
	const STONE_EDGE   ; 1e
	const FURY_ATTACK  ; 1f
	const NIGHT_SLASH  ; 20
	const TACKLE       ; 21
	const BODY_SLAM    ; 22
	const WRAP         ; 23
	const TAKE_DOWN    ; 24
	const DRACO_METEOR ; 25
	const DOUBLE_EDGE  ; 26
	const TAIL_WHIP    ; 27
	const POISON_STING ; 28
	const DRAGON_CLAW  ; 29
	const PIN_MISSILE  ; 2a
	const LEER         ; 2b
	const BITE         ; 2c
	const GROWL        ; 2d
	const ROAR         ; 2e
	const SING         ; 2f
	const SUPERSONIC   ; 30
	const DRAGON_PULSE ; 31
	const DISABLE      ; 32
	const DRAGON_RUSH  ; 33
	const EMBER        ; 34
	const FLAMETHROWER ; 35
	const MIST         ; 36
	const WATER_GUN    ; 37
	const HYDRO_PUMP   ; 38
	const SURF         ; 39
	const ICE_BEAM     ; 3a
	const BLIZZARD     ; 3b
	const PSYBEAM      ; 3c
	const CHARGE_BEAM  ; 3d
	const AURORA_BEAM  ; 3e
	const HYPER_BEAM   ; 3f
	const PECK         ; 40
	const DRILL_PECK   ; 41
	const SUBMISSION   ; 42
	const THUNDER_FANG ; 43
	const COUNTER      ; 44
	const SEISMIC_TOSS ; 45
	const STRENGTH     ; 46
	const ABSORB       ; 47
	const MEGA_DRAIN   ; 48
	const LEECH_SEED   ; 49
	const GROWTH       ; 4a
	const RAZOR_LEAF   ; 4b
	const SOLARBEAM    ; 4c
	const POISONPOWDER ; 4d
	const STUN_SPORE   ; 4e
	const SLEEP_POWDER ; 4f
	const AURA_SPHERE  ; 50
	const STRING_SHOT  ; 51
	const DRAGON_RAGE  ; 52
	const BLAZE_KICK   ; 53
	const THUNDERSHOCK ; 54
	const THUNDERBOLT  ; 55
	const THUNDER_WAVE ; 56
	const THUNDER      ; 57
	const ROCK_THROW   ; 58
	const EARTHQUAKE   ; 59
	const MUDDY_WATER  ; 5a
	const DIG          ; 5b
	const TOXIC        ; 5c
	const CONFUSION    ; 5d
	const PSYCHIC_M    ; 5e
	const HYPNOSIS     ; 5f
	const BULK_UP      ; 60
	const AGILITY      ; 61
	const QUICK_ATTACK ; 62
	const RAGE         ; 63
	const BLAST_BURN   ; 64
	const NIGHT_SHADE  ; 65
	const FIRE_FANG    ; 66
	const SCREECH      ; 67
	const DOUBLE_TEAM  ; 68
	const RECOVER      ; 69
	const HARDEN       ; 6a
	const TAUNT        ; 6b
	const SMOKESCREEN  ; 6c
	const CONFUSE_RAY  ; 6d
	const ERUPTION		 ; 6e
	const DEFENSE_CURL ; 6f
	const COIL         ; 70
	const LIGHT_SCREEN ; 71
	const HAZE         ; 72
	const REFLECT      ; 73
	const FOCUS_ENERGY ; 74
	const FRENZY_PLANT ; 75
	const METRONOME    ; 76
	const PSYSHOCK     ; 77
	const SELFDESTRUCT ; 78
	const FLASH_CANNON ; 79
	const LICK         ; 7a
	const SMOG         ; 7b
	const SLUDGE       ; 7c
	const LAVA_PLUME   ; 7d
	const FIRE_BLAST   ; 7e
	const WATERFALL    ; 7f
	const WILL_O_WISP  ; 80
	const IRON_DEFENSE ; 81
	const AIR_SLASH		 ; 82
	const BRAVE_BIRD 	 ; 83
	const DEFOG  		   ; 84
	const AMNESIA      ; 85
	const HURRICANE		 ; 86
	const IRON_HEAD	   ; 87
	const HI_JUMP_KICK ; 88
	const GLARE        ; 89
	const DREAM_EATER  ; 8a
	const POISON_GAS   ; 8b
	const AQUA_JET     ; 8c
	const LEECH_LIFE   ; 8d
	const LOVELY_KISS  ; 8e
	const ROOST				 ; 8f
	const TRANSFORM    ; 90
	const OMINOUS_WIND ; 91
	const DIZZY_PUNCH  ; 92
	const SPORE        ; 93
	const BRINE				 ; 94
	const PHANTOMFORCE ; 95
	const SHADOW_CLAW  ; 96
	const ACID_ARMOR   ; 97
	const CRABHAMMER   ; 98
	const EXPLOSION    ; 99
	const FURY_SWIPES  ; 9a
	const SHADOW_SNEAK ; 9b
	const REST         ; 9c
	const ROCK_SLIDE   ; 9d
	const KNOCK_OFF    ; 9e
	const ACID_RAIN    ; 9f
	const CONVERSION   ; a0
	const TRI_ATTACK   ; a1
	const TRICK_ROOM   ; a2
	const SLASH        ; a3
	const SUBSTITUTE   ; a4
	const SILVER_WIND  ; a5
	const SKETCH       ; a6
	const TRIPLE_KICK  ; a7
	const THIEF        ; a8
	const DIVE				 ; a9
	const COSMIC_POWER ; aa
	const BULLET_SEED  ; ab
	const FLAME_WHEEL  ; ac
	const HYDRO_CANNON ; ad
	const CURSE        ; ae
	const FLAIL        ; af
	const LEAF_BLADE   ; b1
	const LEAF_STORM   ; b2
	const REVERSAL     ; b3
	const EARTH_POWER  ; b4
	const MUD_SHOT     ; b5
	const PROTECT      ; b6
	const MACH_PUNCH   ; b7
	const SCARY_FACE   ; b8
	const FAINT_ATTACK ; b9
	const SWEET_KISS   ; ba
	const BELLY_DRUM   ; bb
	const SLUDGE_BOMB  ; bc
	const MUD_SLAP     ; bd
	const WATER_PULSE  ; be
	const SPIKES       ; bf
	const ZAP_CANNON   ; c0
	const DESTINY_BOND ; c2
	const PERISH_SONG  ; c3
	const ICY_WIND     ; c4
	const ARM_THRUST   ; c5
	const SAND_TOMB    ; c6
	const AVALANCHE    ; c7
	const ZEN_HEADBUTT ; c8
	const SANDSTORM    ; c9
	const GIGA_DRAIN   ; ca
	const ENDURE       ; cb
	const CHARM        ; cc
	const ROLLOUT      ; cd
	const FALSE_SWIPE  ; ce
	const SWAGGER      ; cf
	const HAIL			   ; d0
	const SPARK        ; d1
	const FURY_CUTTER  ; d2
	const STEEL_WING   ; d3
	const MEAN_LOOK    ; d4
	const ATTRACT      ; d5
	const SLEEP_TALK   ; d6
	const HEAL_BELL    ; d7
	const X_SCISSOR
	const AIR_CUTTER
	const DRILL_RUN
	const RETURN       ; d8
	const ICE_FANG     ; d9
	const CROSS_POISON ; da
	const SAFEGUARD    ; db
	const PAIN_SPLIT   ; dc
	const GUNK_SHOT    ; dd
	const MAGNITUDE    ; de
	const DYNAMICPUNCH ; df
	const MEGAHORN     ; e0
	const DRAGONBREATH ; e1
	const BATON_PASS   ; e2
	const ENCORE       ; e3
	const PURSUIT      ; e4
	const RAPID_SPIN   ; e5
	const POISON_JAB   ; e6
	const IRON_TAIL    ; e7
	const METAL_CLAW   ; e8
	const CALM_MIND    ; e9
	const MORNING_SUN  ; ea
	const SYNTHESIS    ; eb
	const MOONLIGHT    ; ec
	const HIDDEN_POWER ; ed
	const CROSS_CHOP   ; ee
	const TWISTER      ; ef
	const RAIN_DANCE   ; f0
	const SUNNY_DAY    ; f1
	const CRUNCH       ; f2
	const MIRROR_COAT  ; f3
	const PSYCH_UP     ; f4
	const EXTREMESPEED ; f5
	const ANCIENTPOWER ; f6
	const SHADOW_BALL  ; f7
	const ROCK_SMASH   ; f9
	const PSYCHO_BOOST ; fa
	const ACCELEROCK   ; fb
	const ROCK_BLAST   ; fc
	const ROCK_POLISH  ; fd
	const ROCK_TOMB    ; fe
	const SPIDER_WEB
	const SNARL
	const FAKE_TEARS
	const DRAGON_DANCE
	const VOLT_SWITCH
	const NUZZLE
	const SUPERPOWER
	const DRAIN_PUNCH
	const BOUNCE
	const HEX
	const ROCK_WRECKER
	const HEAD_SMASH
	const MAGNET_BOMB
	const BULLET_PUNCH
	const MOONBLAST
	const PLAY_ROUGH
	const DAZZLE_GLEAM
	const DRAIN_KISS
	const DISARM_VOICE
	const FAIRY_WIND
	const BONE_CLUB
	const BONEMERANG
	const BONE_RUSH
	const ICE_SHARD
	const ICE_BALL
	const MAGMA_STORM
	const COTTON_GUARD
	const SPIKY_SHIELD
	const BUBBLEBEAM
	const BUBBLE
	const OCTAZOOKA
	const WITHDRAW
	const GUILLOTINE
	const HORN_DRILL
	const HYPER_DRILL
	const MEGA_KICK
	const THRASH
	const MEGA_PUNCH
	const HYPER_FANG
	const SNORE
	const STOMP
	const PAY_DAY
	const CONSTRICT
	const BIND
	const COMET_PUNCH
	const FRUSTRATION
	const SUPER_FANG
	const MIMIC
	const SOFTBOILED
	const SPLASH
	const SONICBOOM
	const MIND_READER
	const LOCK_ON
	const SWEET_SCENT
	const FEATHERDANCE
	const MINIMIZE
	const FISSURE
	const CLEAR_SMOG
	const INFESTATION
	const YAWN
	const SLACK_OFF
	const AQUA_RING
	const HYPER_VOICE
	const TAIL_GLOW
	const WATER_SPOUT
	const BULLDOZE
	const FUTURE_SIGHT
	const COTTON_SPORE
	const SEED_BOMB
	const ACID
	const HORN_ATTACK
	const DOUBLESLAP
	const BARRIER
	const TELEPORT
	const POWDER_SNOW
	const FIRE_SPIN
	const OUTRAGE
	const DETECT
	const SHADOW_PUNCH
	const STRUGGLE     ; end
DEF NUM_ATTACKS EQU const_value - 1

if NUM_ATTACKS > $3fff
		fail "Too many moves defined!"
	endc

; Battle animations use the same constants as the moves
	const ANIM_SWEET_SCENT_2     ; fc
; Animations with negative IDs will play even when animations are disabled
	const_def -1, -1
	const ANIM_HIT_CONFUSION     ;  -1 (ffff)
	const ANIM_SHAKE             ;  -2 (fffe)
	const ANIM_WOBBLE            ;  -3 (fffd)
	const ANIM_PLAYER_DAMAGE     ;  -4 (fffc)
	const ANIM_PLAYER_STAT_DOWN  ;  -5 (fffb)
	const ANIM_ENEMY_STAT_DOWN   ;  -6 (fffa)
	const ANIM_ENEMY_DAMAGE      ;  -7 (fff9)
	const ANIM_MISS              ;  -8 (fff8)
; battle anims
	const ANIM_IN_WHIRLPOOL      ;  -9 (fff7)
	const ANIM_IN_NIGHTMARE      ;  -a (fff6)
	const ANIM_IN_SANDSTORM      ;  -b (fff5)
	const ANIM_IN_LOVE           ;  -c (fff4)
	const ANIM_PAR               ;  -d (fff3)
	const ANIM_FRZ               ;  -e (fff2)
	const ANIM_SAP               ;  -f (fff1)
	const ANIM_PSN               ; -10 (fff0)
	const ANIM_BRN               ; -11 (ffef)
	const ANIM_SLP               ; -12 (ffee)
	const ANIM_CONFUSED          ; -13 (ffed)
	const ANIM_RETURN_MON        ; -14 (ffec)
	const ANIM_SEND_OUT_MON      ; -15 (ffeb)
	const ANIM_THROW_POKE_BALL   ; -16 (ffea)
DEF NUM_BATTLE_ANIMS EQU -const_value - 1

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION
