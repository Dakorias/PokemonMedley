SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw BaltoyEvosAttacks
	dw ClaydolEvosAttacks
	dw YanmaEvosAttacks
	dw YanmegaEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw BidoofEvosAttacks
	dw BibarelEvosAttacks
	dw SentretEvosAttacks
	dw FurretEvosAttacks
	dw DunsparceEvosAttacks
	dw DudnsparceEvosAttacks
	dw StantlerEvosAttacks
	dw WyrdeerEvosAttacks
	dw DittoEvosAttacks
	dw SmeargleEvosAttacks
	dw BunearyEvosAttacks
	dw LopunnyEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw GirafarigEvosAttacks
	dw FarigirafEvosAttacks
	dw PorygonEvosAttacks
	dw Porygon2EvosAttacks
	dw PorygonzEvosAttacks
	dw HappinyEvosAttacks
	dw ChanseyEvosAttacks
	dw BlisseyEvosAttacks
	dw KecleonEvosAttacks
	dw MunchlaxEvosAttacks
	dw SnorlaxEvosAttacks
	dw FletchlingEvosAttacks
	dw FletchindrEvosAttacks
	dw TalonflameEvosAttacks
	dw HoothootEvosAttacks
	dw NoctowlEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw CrobatEvosAttacks
	dw SkarmoryEvosAttacks
	dw MurkrowEvosAttacks
	dw HonchkrowEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw SpinarakEvosAttacks
	dw AriadosEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw PinecoEvosAttacks
	dw ForretressEvosAttacks
	dw SurskitEvosAttacks
	dw MasquerainEvosAttacks
	dw ShuckleEvosAttacks
	dw ScytherEvosAttacks
	dw ScizorEvosAttacks
	dw KleavorEvosAttacks
	dw HeracrossEvosAttacks
	dw PinsirEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw CorphishEvosAttacks
	dw CrawdauntEvosAttacks
	dw BuizelEvosAttacks
	dw FloatzelEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw PolitoedEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw QwilfishEvosAttacks
	dw CorsolaEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw KingdraEvosAttacks
	dw CarvanhaEvosAttacks
	dw SharpedoEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw TotodileEvosAttacks
	dw CroconawEvosAttacks
	dw FeraligatrEvosAttacks
	dw MudkipEvosAttacks
	dw MarshtompEvosAttacks
	dw SwampertEvosAttacks
	dw NumelEvosAttacks
	dw CameruptEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw LarvestaEvosAttacks
	dw VolcoronaEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw TorkoalEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw CyndaquilEvosAttacks
	dw QuilavaEvosAttacks
	dw TyphlosionEvosAttacks
	dw TorchicEvosAttacks
	dw CombuskenEvosAttacks
	dw BlazikenEvosAttacks
	dw HoppipEvosAttacks
	dw SkiploomEvosAttacks
	dw JumpluffEvosAttacks
	dw LotadEvosAttacks
	dw LombreEvosAttacks
	dw LudicoloEvosAttacks
	dw ApplinEvosAttacks
	dw FlappleEvosAttacks
	dw AppletunEvosAttacks
	dw ShroomishEvosAttacks
	dw BreloomEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CottoneeEvosAttacks
	dw WhimsicottEvosAttacks
	dw MaractusEvosAttacks
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw ChikoritaEvosAttacks
	dw BayleefEvosAttacks
	dw MeganiumEvosAttacks
	dw TreekoEvosAttacks
	dw GrovyleEvosAttacks
	dw SceptileEvosAttacks
	dw PichuEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw ShinxEvosAttacks
	dw LuxioEvosAttacks
	dw LuxrayEvosAttacks
.IndirectEnd::

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 8, BITE
	dbw 12, GLARE
	dbw 16, SCREECH
	dbw 19, SLUDGE
	dbw 24, SUBSTITUTE
	dbw 28, PURSUIT
	dbw 34, SLUDGE_BOMB
	dbw 37, HAZE
	dbw 40, SUPER_FANG
	dbw 44, CRUNCH
	dbw 48, GUNK_SHOT
	dbw 52, COIL
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG ; Relearner
	dbw 1, ICE_FANG ; Relearner
	dbw 1, THUNDER_FANG ; Relearner
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, POISON_STING
	dbw 1, BITE
	dbw 12, GLARE
	dbw 16, SCREECH
	dbw 19, SLUDGE
	dbw 24, SUBSTITUTE
	dbw 28, PURSUIT
	dbw 34, SLUDGE_BOMB
	dbw 37, HAZE
	dbw 40, SUPER_FANG
	dbw 44, CRUNCH
	dbw 48, GUNK_SHOT
	dbw 52, COIL
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, CLAYDOL
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, RAPID_SPIN
	dbw 6, SAND_TOMB
	dbw 10, CONFUSION
	dbw 13, SANDSTORM
	dbw 16, ROCK_TOMB
	dbw 18, PSYBEAM
	dbw 23, ANCIENTPOWER
	dbw 27, COSMIC_POWER
	dbw 30, PSYSHOCK
	dbw 36, FLAIL
	dbw 40, EARTH_POWER
	dbw 43, TRICK_ROOM
	dbw 47, PSYCHIC_M
	dbw 50, EXPLOSION
	dbw 55, CALM_MIND
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STRUGGLE ; Relearner, Replace with Teleport when implemented
	dbw 1, HARDEN
	dbw 1, RAPID_SPIN
	dbw 1, SAND_TOMB
	dbw 1, CONFUSION
	dbw 13, SANDSTORM
	dbw 16, ROCK_TOMB
	dbw 18, PSYBEAM
	dbw 23, ANCIENTPOWER
	dbw 27, COSMIC_POWER
	dbw 30, PSYSHOCK
	dbw 36, HYPER_BEAM
	dbw 40, EARTH_POWER
	dbw 43, TRICK_ROOM
	dbw 47, PSYCHIC_M
	dbw 50, EXPLOSION
	dbw 55, CALM_MIND
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, YANMEGA
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, GUST
	dbw 8, LEECH_LIFE
	dbw 12, SUPERSONIC
	dbw 15, TWISTER
	dbw 19, WING_ATTACK
	dbw 22, DOUBLE_TEAM
	dbw 26, SIGNAL_BEAM
	dbw 30, ANCIENTPOWER
	dbw 33, SCREECH
	dbw 36, AIR_SLASH
	dbw 40, U_TURN
	dbw 43, HYPNOSIS
	dbw 47, DRAGON_PULSE
	dbw 50, BUG_BUZZ
	dbw 54, HURRICANE
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH ; Relearner
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, GUST
	dbw 1, LEECH_LIFE
	dbw 12, SUPERSONIC
	dbw 15, TWISTER
	dbw 19, WING_ATTACK
	dbw 22, DOUBLE_TEAM
	dbw 26, SIGNAL_BEAM
	dbw 30, ANCIENTPOWER
	dbw 33, SCREECH
	dbw 36, AIR_SLASH
	dbw 40, U_TURN
	dbw 43, HYPNOSIS
	dbw 47, DRAGON_PULSE
	dbw 50, BUG_BUZZ
	dbw 54, HURRICANE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 5, QUICK_ATTACK
	dbw 8, FOCUS_ENERGY
	dbw 12, BITE
	dbw 15, HYPER_FANG
	dbw 18, PURSUIT
	dbw 24, CRUNCH
	dbw 27, SCREECH
	dbw 32, SUPER_FANG
	dbw 37, DOUBLE_EDGE
	dbw 43, FLAIL
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 8, FOCUS_ENERGY
	dbw 12, BITE
	dbw 15, HYPER_FANG
	dbw 18, PURSUIT
	dbw 20, SCARY_FACE
	dbw 24, CRUNCH
	dbw 27, SCREECH
	dbw 32, SUPER_FANG
	dbw 37, DOUBLE_EDGE
	dbw 43, FLAIL
	db 0 ; no more level-up moves

BidoofEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, BIBAREL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, DEFENSE_CURL
	dbw 9, BITE
	dbw 12, HEADBUTT
	dbw 17, ROLLOUT
	dbw 21, TAKE_DOWN
	dbw 24, QUICK_ATTACK
	dbw 27, AMNESIA
	dbw 30, SUPER_FANG
	dbw 34, FLAIL
	dbw 38, REST
	dbw 38, SLEEP_TALK
	dbw 41, BODY_SLAM
	dbw 44, SUPERPOWER
	dbw 46, CURSE
	db 0 ; no more level-up moves

BibarelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 1, BITE
	dbw 12, HEADBUTT
	dbw 15, WATER_GUN
	dbw 17, ROLLOUT
	dbw 21, TAKE_DOWN
	dbw 24, AQUA_JET
	dbw 27, AMNESIA
	dbw 30, SUPER_FANG
	dbw 34, BRINE
	dbw 38, REST
	dbw 38, SLEEP_TALK
	dbw 41, BODY_SLAM
	dbw 44, SUPERPOWER
	dbw 46, CURSE
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 4, QUICK_ATTACK
	dbw 7, FURY_SWIPES
	dbw 11, THIEF
	dbw 14, HEADBUTT
	dbw 18, CHARM
	dbw 22, AMNESIA
	dbw 25, SLASH
	dbw 29, KNOCK_OFF
	dbw 32, BATON_PASS
	dbw 36, EXTREMESPEED
	dbw 40, BELLY_DRUM
	dbw 44, NIGHT_SLASH
	dbw 49, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COIL ; Relearner
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 1, QUICK_ATTACK
	dbw 1, FURY_SWIPES
	dbw 11, THIEF
	dbw 14, HEADBUTT
	dbw 18, CHARM
	dbw 22, AMNESIA
	dbw 25, SLASH
	dbw 29, KNOCK_OFF
	dbw 32, BATON_PASS
	dbw 36, EXTREMESPEED
	dbw 40, BELLY_DRUM
	dbw 44, NIGHT_SLASH
	dbw 49, HYPER_VOICE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, DUDNSPARCE
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SLAP
	dbw 6, BIND
	dbw 10, GLARE
	dbw 13, ROLLOUT
	dbw 16, SCREECH
	dbw 20, DIG
	dbw 23, YAWN
	dbw 27, ANCIENTPOWER
	dbw 30, BODY_SLAM
	dbw 34, CURSE
	dbw 38, DRILL_RUN
	dbw 41, ROOST
	dbw 45, HYPER_DRILL
	dbw 48, DRAGON_RUSH
	dbw 51, COIL
	dbw 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

DudnsparceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SLAP
	dbw 1, BIND
	dbw 10, GLARE
	dbw 13, ROLLOUT
	dbw 16, SCREECH
	dbw 20, DIG
	dbw 23, YAWN
	dbw 27, ANCIENTPOWER
	dbw 30, BODY_SLAM
	dbw 34, CURSE
	dbw 38, DRILL_RUN
	dbw 41, ROOST
	dbw 45, HYPER_DRILL
	dbw 48, DRAGON_RUSH
	dbw 51, COIL
	dbw 55, DOUBLE_EDGE
	dbw 61, HURRICANE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	dbbw EVOLVE_LEVEL, 44, WYRDEER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, LEER
	dbw 6, STRUGGLE ; Replace with Astonish when implemented
	dbw 10, HYPNOSIS
	dbw 13, STOMP
	dbw 16, SAND_ATTACK
	dbw 20, CONFUSE_RAY
	dbw 23, LIGHT_SCREEN
	dbw 27, TAKE_DOWN
	dbw 30, ZEN_HEADBUTT
	dbw 34, REFLECT
	dbw 37, CALM_MIND
	dbw 40, TRI_ATTACK
	dbw 43, DREAM_EATER
	dbw 48, DOUBLE_EDGE
	dbw 52, PSYCHIC_M
	db 0 ; no more level-up moves

WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, HYPNOSIS
	dbw 13, STOMP
	dbw 16, SAND_ATTACK
	dbw 20, CONFUSE_RAY
	dbw 23, LIGHT_SCREEN
	dbw 27, TAKE_DOWN
	dbw 30, ZEN_HEADBUTT
	dbw 34, REFLECT
	dbw 37, CALM_MIND
	dbw 40, TRI_ATTACK
	dbw 43, DREAM_EATER
	dbw 48, DOUBLE_EDGE
	dbw 52, PSYCHIC_M
	dbw 59, MEGAHORN
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	dbw 100, SKETCH
	db 0 ; no more level-up moves

BunearyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LOPUNNY
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 3, DEFENSE_CURL
	dbw 6, CHARM
	dbw 10, FRUSTRATION
	dbw 13, DOUBLE_KICK
	dbw 16, QUICK_ATTACK
	dbw 20, ENDURE
	dbw 23, STRUGGLE ; Replace with Jump Kick when implemented
	dbw 28, DIZZY_PUNCH
	dbw 31, AGILITY
	dbw 35, BOUNCE
	dbw 39, BATON_PASS
	dbw 42, MEGA_KICK
	dbw 45, FLATTER
	dbw 49, HI_JUMP_KICK
	dbw 55, HEAL_BELL
	db 0 ; no more level-up moves

LopunnyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, POUND
	dbw 1, DEFENSE_CURL
	dbw 1, CHARM
	dbw 10, RETURN
	dbw 13, DOUBLE_KICK
	dbw 16, QUICK_ATTACK
	dbw 20, ENDURE
	dbw 23, STRUGGLE ; Replace with Jump Kick when implemented
	dbw 28, DIZZY_PUNCH
	dbw 31, AGILITY
	dbw 35, BOUNCE
	dbw 39, BATON_PASS
	dbw 42, MEGA_KICK
	dbw 45, FLATTER
	dbw 49, HI_JUMP_KICK
	dbw 55, HEAL_BELL
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 5, FURY_SWIPES
	dbw 8, TAUNT
	dbw 12, PAY_DAY
	dbw 15, BITE
	dbw 17, QUICK_ATTACK
	dbw 20, SWAGGER
	dbw 23, FAINT_ATTACK
	dbw 26, SLASH
	dbw 30, SCREECH
	dbw 34, PLAY_ROUGH
	dbw 38, NIGHT_SLASH
	dbw 43, NASTY_PLOT
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, FURY_SWIPES
	dbw 1, TAUNT
	dbw 12, PAY_DAY
	dbw 15, BITE
	dbw 17, QUICK_ATTACK
	dbw 20, SWAGGER
	dbw 23, FAINT_ATTACK
	dbw 26, SLASH
	dbw 30, SCREECH
	dbw 34, PLAY_ROUGH
	dbw 38, NIGHT_SLASH
	dbw 43, NASTY_PLOT
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, FARIGIRAF
	db 0 ; no more evolutions
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, CONFUSION
	dbw 8, PSYCH_UP
	dbw 13, STOMP
	dbw 17, AGILITY
	dbw 20, PSYBEAM
	dbw 25, BITE
	dbw 28, BATON_PASS
	dbw 33, STRUGGLE ; Replace with Twin Beam when implemented
	dbw 38, BODY_SLAM
	dbw 43, PSYCHIC_M
	dbw 47, CRUNCH
	dbw 52, NASTY_PLOT
	db 0 ; no more level-up moves

FarigirafEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 8, PSYCH_UP
	dbw 13, STOMP
	dbw 17, AGILITY
	dbw 20, PSYBEAM
	dbw 25, BITE
	dbw 28, BATON_PASS
	dbw 33, STRUGGLE ; Replace with Twin Beam when implemented
	dbw 38, BODY_SLAM
	dbw 43, PSYCHIC_M
	dbw 47, CRUNCH
	dbw 52, NASTY_PLOT
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbbw EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 1, STRUGGLE ; Replace with Sharpen when implemented
	dbw 5, THUNDERSHOCK
	dbw 9, AGILITY
	dbw 13, SWIFT
	dbw 17, PSYBEAM
	dbw 21, THUNDER_WAVE
	dbw 25, RECOVER
	dbw 30, SIGNAL_BEAM
	dbw 35, TRI_ATTACK
	dbw 40, LOCK_ON
	dbw 45, ZAP_CANNON
	dbw 50, HYPER_BEAM
	dbw 55, TRICK_ROOM
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	dbbw EVOLVE_ITEM, EVERSTONE, PORYGONZ ; Replace with Dubious Disk when implemented
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 1, STRUGGLE ; Replace with Sharpen when implemented
	dbw 1, DEFENSE_CURL
	dbw 5, THUNDERSHOCK
	dbw 9, AGILITY
	dbw 13, SWIFT
	dbw 17, PSYBEAM
	dbw 21, THUNDER_WAVE
	dbw 25, RECOVER
	dbw 30, SIGNAL_BEAM
	dbw 35, TRI_ATTACK
	dbw 40, LOCK_ON
	dbw 45, ZAP_CANNON
	dbw 50, HYPER_BEAM
	dbw 55, TRICK_ROOM
	db 0 ; no more level-up moves

PorygonzEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 1, STRUGGLE ; Replace with Sharpen when implemented
	dbw 1, DEFENSE_CURL
	dbw 6, THUNDERSHOCK
	dbw 8, AGILITY
	dbw 14, SWIFT
	dbw 16, PSYBEAM
	dbw 24, THUNDER_WAVE
	dbw 25, RECOVER
	dbw 28, SIGNAL_BEAM
	dbw 33, TRI_ATTACK
	dbw 41, LOCK_ON
	dbw 47, ZAP_CANNON
	dbw 51, HYPER_BEAM
	dbw 53, TRICK_ROOM
	dbw 60, NASTY_PLOT
	dbw 64, DARK_PULSE
	db 0 ; no more level-up moves

HappinyEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHANSEY ; Subject to Change
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 3, MIMIC
	dbw 6, DEFENSE_CURL
	dbw 9, DISARM_VOICE
	dbw 13, SWEET_KISS
	dbw 17, MINIMIZE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 8, TAIL_WHIP
	dbw 12, SAFEGUARD
	dbw 15, DOUBLESLAP
	dbw 20, SING
	dbw 23, MINIMIZE
	dbw 27, REST
	dbw 31, TAKE_DOWN
	dbw 34, LIGHT_SCREEN
	dbw 38, HEAL_BELL
	dbw 42, SEISMIC_TOSS
	dbw 46, SOFTBOILED
	dbw 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 8, TAIL_WHIP
	dbw 12, SAFEGUARD
	dbw 15, DOUBLESLAP
	dbw 20, SING
	dbw 23, MINIMIZE
	dbw 27, REST
	dbw 31, TAKE_DOWN
	dbw 34, LIGHT_SCREEN
	dbw 38, HEAL_BELL
	dbw 42, SEISMIC_TOSS
	dbw 46, SOFTBOILED
	dbw 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

KecleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, LICK
	dbw 4, BIND
	dbw 7, THIEF
	dbw 10, DISABLE
	dbw 12, FURY_SWIPES
	dbw 16, PSYBEAM
	dbw 19, SHADOW_SNEAK
	dbw 23, STRUGGLE ; Replace with Detect when implemented
	dbw 26, SLASH
	dbw 28, FAINT_ATTACK
	dbw 32, TRICK_ROOM
	dbw 34, SCREECH
	dbw 37, BODY_SLAM
	dbw 40, SHADOW_CLAW
	dbw 43, SUBSTITUTE
	dbw 47, ANCIENTPOWER
	dbw 50, ZEN_HEADBUTT
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, DEFENSE_CURL
	dbw 6, LICK
	dbw 10, AMNESIA
	dbw 15, ROLLOUT
	dbw 19, HEADBUTT
	dbw 23, CURSE
	dbw 27, REST
	dbw 30, SLEEP_TALK
	dbw 35, BODY_SLAM
	dbw 41, CRUNCH
	dbw 44, METRONOME
	dbw 50, BELLY_DRUM
	dbw 57, FLAIL
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, LICK
	dbw 1, AMNESIA
	dbw 15, ROLLOUT
	dbw 19, HEADBUTT
	dbw 23, CURSE
	dbw 27, REST
	dbw 30, SLEEP_TALK
	dbw 35, BODY_SLAM
	dbw 41, CRUNCH
	dbw 44, YAWN
	dbw 50, BELLY_DRUM
	dbw 57, HYPER_BEAM
	dbw 65, SLACK_OFF
	db 0 ; no more level-up moves

FletchlingEvosAttacks:
	dbbw EVOLVE_LEVEL, 17, FLETCHINDR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, PECK
	dbw 9, QUICK_ATTACK
	dbw 12, AGILITY
	dbw 16, FLAIL
	dbw 22, AIR_CUTTER
	dbw 27, SWIFT
	dbw 32, FOCUS_ENERGY
	dbw 38, TAKE_DOWN
	dbw 45, BRAVE_BIRD
	dbw 52, ROOST
	db 0 ; no more level-up moves

FletchindrEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, TALONFLAME
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, PECK
	dbw 9, QUICK_ATTACK
	dbw 12, AGILITY
	dbw 16, FLAIL
	dbw 17, EMBER
	dbw 22, AIR_CUTTER
	dbw 27, FLAME_WHEEL
	dbw 32, FOCUS_ENERGY
	dbw 38, FLAMETHROWER
	dbw 45, BRAVE_BIRD
	dbw 52, ROOST
	dbw 60, FIRE_BLAST
	db 0 ; no more level-up moves

TalonflameEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, PECK
	dbw 1, QUICK_ATTACK
	dbw 12, AGILITY
	dbw 16, FLAIL
	dbw 17, EMBER
	dbw 22, AIR_CUTTER
	dbw 27, FLAME_WHEEL
	dbw 32, FOCUS_ENERGY
	dbw 38, FLAMETHROWER
	dbw 45, BRAVE_BIRD
	dbw 52, ROOST
	dbw 60, FIRE_BLAST
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, PECK
	dbw 10, CONFUSION
	dbw 13, HYPNOSIS
	dbw 17, DEFOG
	dbw 22, AIR_CUTTER
	dbw 25, REFLECT
	dbw 25, LIGHT_SCREEN
	dbw 28, PSYBEAM
	dbw 32, TAKE_DOWN
	dbw 35, MOONLIGHT
	dbw 38, AIR_SLASH
	dbw 41, CALM_MIND
	dbw 45, MOONBLAST
	dbw 48, HYPER_VOICE
	dbw 52, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, PECK
	dbw 1, CONFUSION
	dbw 13, HYPNOSIS
	dbw 17, DEFOG
	dbw 20, NIGHT_SHADE
	dbw 22, AIR_CUTTER
	dbw 25, REFLECT
	dbw 25, LIGHT_SCREEN
	dbw 28, PSYBEAM
	dbw 32, TAKE_DOWN
	dbw 35, MOONLIGHT
	dbw 38, AIR_SLASH
	dbw 41, CALM_MIND
	dbw 45, MOONBLAST
	dbw 48, HYPER_VOICE
	dbw 52, DREAM_EATER
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, SAND_ATTACK
	dbw 7, GUST
	dbw 10, QUICK_ATTACK
	dbw 12, WHIRLWIND
	dbw 16, WING_ATTACK
	dbw 19, TWISTER
	dbw 23, SWIFT
	dbw 26, FEATHERDANCE
	dbw 30, AIR_SLASH
	dbw 33, ROOST
	dbw 38, AGILITY
	dbw 42, TAILWIND
	dbw 47, HURRICANE
	dbw 51, DEFOG
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, SAND_ATTACK
	dbw 7, GUST
	dbw 10, QUICK_ATTACK
	dbw 12, WHIRLWIND
	dbw 16, WING_ATTACK
	dbw 19, TWISTER
	dbw 23, SWIFT
	dbw 26, FEATHERDANCE
	dbw 30, AIR_SLASH
	dbw 33, ROOST
	dbw 38, AGILITY
	dbw 42, TAILWIND
	dbw 47, HURRICANE
	dbw 51, DEFOG
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, SAND_ATTACK
	dbw 1, GUST
	dbw 10, QUICK_ATTACK
	dbw 12, WHIRLWIND
	dbw 16, WING_ATTACK
	dbw 19, TWISTER
	dbw 23, SWIFT
	dbw 26, FEATHERDANCE
	dbw 30, AIR_SLASH
	dbw 33, ROOST
	dbw 36, EXTREMESPEED
	dbw 38, AGILITY
	dbw 42, TAILWIND
	dbw 47, HURRICANE
	dbw 51, DEFOG
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 3, SUPERSONIC
	dbw 7, STRUGGLE ; Replace with Astonish when implemented
	dbw 10, BITE
	dbw 13, WING_ATTACK
	dbw 17, CONFUSE_RAY
	dbw 21, AIR_CUTTER
	dbw 25, SLUDGE
	dbw 29, MEAN_LOOK
	dbw 32, U_TURN
	dbw 36, SLUDGE_BOMB
	dbw 40, AIR_SLASH
	dbw 45, HAZE
	dbw 53, TOXIC
	dbw 59, SUPER_FANG
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 10, BITE
	dbw 13, WING_ATTACK
	dbw 17, CONFUSE_RAY
	dbw 21, AIR_CUTTER
	dbw 22, SCREECH
	dbw 25, SLUDGE
	dbw 29, MEAN_LOOK
	dbw 32, U_TURN
	dbw 36, CROSS_POISON
	dbw 40, AIR_SLASH
	dbw 45, HAZE
	dbw 48, SLUDGE_BOMB
	dbw 53, TOXIC
	dbw 59, SUPER_FANG
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, BITE
	dbw 13, WING_ATTACK
	dbw 17, CONFUSE_RAY
	dbw 21, AIR_CUTTER
	dbw 22, SCREECH
	dbw 25, SLUDGE
	dbw 29, MEAN_LOOK
	dbw 32, U_TURN
	dbw 36, CROSS_POISON
	dbw 40, AIR_SLASH
	dbw 45, HAZE
	dbw 48, SLUDGE_BOMB
	dbw 53, TOXIC
	dbw 59, SUPER_FANG
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 4, SAND_ATTACK
	dbw 7, FURY_ATTACK
	dbw 11, METAL_CLAW
	dbw 13, AGILITY
	dbw 18, AIR_CUTTER
	dbw 21, SWIFT
	dbw 25, SPIKES
	dbw 29, STEEL_WING
	dbw 32, IRON_DEFENSE
	dbw 36, SLASH
	dbw 41, DRILL_PECK
	dbw 44, WHIRLWIND
	dbw 49, NIGHT_SLASH
	dbw 52, STRUGGLE ; Replace with Metal Sound when implemented
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	dbbw EVOLVE_ITEM, EVERSTONE, HONCHKROW ; Replace with Dusk Stone when implemented
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 3, STRUGGLE ; Replace with Astonish when implemented
	dbw 6, FURY_ATTACK
	dbw 9, TAUNT
	dbw 12, PURSUIT
	dbw 16, HAZE
	dbw 19, WING_ATTACK
	dbw 23, NIGHT_SHADE
	dbw 28, FAINT_ATTACK
	dbw 31, MEAN_LOOK
	dbw 34, SWAGGER
	dbw 40, DRILL_PECK
	dbw 45, DARK_PULSE
	dbw 49, TAILWIND
	dbw 56, NASTY_PLOT
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FLATTER ; Relearner
	dbw 1, PECK
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, FURY_ATTACK
	dbw 1, TAUNT
	dbw 12, PURSUIT
	dbw 16, HAZE
	dbw 19, WING_ATTACK
	dbw 23, NIGHT_SHADE
	dbw 28, FAINT_ATTACK
	dbw 31, MEAN_LOOK
	dbw 34, SWAGGER
	dbw 40, DRILL_PECK
	dbw 45, DARK_PULSE
	dbw 49, TAILWIND
	dbw 56, NASTY_PLOT
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 1, HARDEN
	dbw 10, GUST
	dbw 12, STUN_SPORE
	dbw 13, POISONPOWDER
	dbw 14, SLEEP_POWDER
	dbw 16, CONFUSION
	dbw 18, SUPERSONIC
	dbw 21, SILVER_WIND
	dbw 24, PSYBEAM
	dbw 26, WHIRLWIND
	dbw 29, CONFUSE_RAY
	dbw 32, PSYSHOCK
	dbw 36, SAFEGUARD
	dbw 40, QUIVER_DANCE
	dbw 43, BUG_BUZZ
	dbw 46, TAILWIND
	dbw 49, PSYCHIC_M
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, ARIADOS
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 3, CONSTRICT
	dbw 7, LEECH_LIFE
	dbw 10, SCARY_FACE
	dbw 13, NIGHT_SHADE
	dbw 16, FURY_SWIPES
	dbw 20, PIN_MISSILE
	dbw 23, SHADOW_SNEAK
	dbw 27, SLUDGE
	dbw 30, SPIDER_WEB
	dbw 32, PURSUIT
	dbw 36, X_SCISSOR
	dbw 39, POISON_JAB
	dbw 43, PSYCHIC_M
	dbw 46, AGILITY
	dbw 51, MEGAHORN
	dbw 55, CROSS_POISON
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 1, CONSTRICT
	dbw 1, LEECH_LIFE
	dbw 10, SCARY_FACE
	dbw 13, NIGHT_SHADE
	dbw 16, FURY_SWIPES
	dbw 20, PIN_MISSILE
	dbw 23, SHADOW_SNEAK
	dbw 27, SLUDGE
	dbw 30, SPIDER_WEB
	dbw 32, PURSUIT
	dbw 36, X_SCISSOR
	dbw 39, POISON_JAB
	dbw 43, PSYCHIC_M
	dbw 46, AGILITY
	dbw 51, MEGAHORN
	dbw 55, CROSS_POISON
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, STUN_SPORE
	dbw 8, ABSORB
	dbw 10, POISONPOWDER
	dbw 14, LEECH_LIFE
	dbw 18, GROWTH
	dbw 21, MEGA_DRAIN
	dbw 25, SPORE
	dbw 28, SLASH
	dbw 32, X_SCISSOR
	dbw 37, GIGA_DRAIN
	dbw 41, MOONLIGHT
	dbw 45, CROSS_POISON
	dbw 48, FALSE_SWIPE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, STUN_SPORE
	dbw 1, ABSORB
	dbw 1, POISONPOWDER
	dbw 14, LEECH_LIFE
	dbw 18, GROWTH
	dbw 21, MEGA_DRAIN
	dbw 25, SPORE
	dbw 28, SLASH
	dbw 32, X_SCISSOR
	dbw 37, GIGA_DRAIN
	dbw 41, MOONLIGHT
	dbw 45, CROSS_POISON
	dbw 48, FALSE_SWIPE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 5, SUPERSONIC
	dbw 9, CONFUSION
	dbw 13, INFESTATION
	dbw 16, POISONPOWDER
	dbw 20, PSYBEAM
	dbw 23, STUN_SPORE
	dbw 27, SIGNAL_BEAM
	dbw 30, SLEEP_POWDER
	dbw 34, SCREECH
	dbw 38, PSYCHIC_M
	dbw 41, SLUDGE_BOMB
	dbw 45, BUG_BUZZ
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SILVER_WIND ; Relearner
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, SUPERSONIC
	dbw 1, CONFUSION
	dbw 13, INFESTATION
	dbw 16, POISONPOWDER
	dbw 20, PSYBEAM
	dbw 23, STUN_SPORE
	dbw 27, SIGNAL_BEAM
	dbw 30, SLEEP_POWDER
	dbw 34, AGILITY
	dbw 38, PSYCHIC_M
	dbw 41, SLUDGE_BOMB
	dbw 45, BUG_BUZZ
	dbw 52, QUIVER_DANCE
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 4, ENDURE
	dbw 7, RAPID_SPIN
	dbw 10, PIN_MISSILE
	dbw 15, SELFDESTRUCT
	dbw 18, TAKE_DOWN
	dbw 21, ROLLOUT
	dbw 24, CURSE
	dbw 29, SPIKES
	dbw 32, SIGNAL_BEAM
	dbw 35, EXPLOSION
	dbw 40, FLAIL
	dbw 43, IRON_DEFENSE
	dbw 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 1, ENDURE
	dbw 1, RAPID_SPIN
	dbw 10, PIN_MISSILE
	dbw 15, SELFDESTRUCT
	dbw 18, TAKE_DOWN
	dbw 21, ROLLOUT
	dbw 24, CURSE
	dbw 29, SPIKES
	dbw 32, SIGNAL_BEAM
	dbw 35, EXPLOSION
	dbw 40, FLASH_CANNON
	dbw 43, IRON_DEFENSE
	dbw 46, DOUBLE_EDGE
	dbw 53, ZAP_CANNON
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MASQUERAIN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, QUICK_ATTACK
	dbw 7, MIST
	dbw 10, INFESTATION
	dbw 14, SWEET_SCENT
	dbw 17, BUBBLEBEAM
	dbw 20, AGILITY
	dbw 24, HAZE
	dbw 30, SIGNAL_BEAM
	dbw 36, BATON_PASS
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRIER ; Relearner
	dbw 1, BUBBLE
	dbw 1, QUICK_ATTACK
	dbw 1, MIST
	dbw 1, INFESTATION
	dbw 14, SWEET_SCENT
	dbw 17, BUBBLEBEAM
	dbw 20, AGILITY
	dbw 22, AQUA_JET
	dbw 24, U_TURN
	dbw 28, DIVE
	dbw 32, GIGA_DRAIN
	dbw 37, BUG_BUZZ
	dbw 42, DAZZLE_GLEAM
	dbw 47, QUIVER_DANCE
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 5, ROLLOUT
	dbw 8, ENCORE
	dbw 12, WRAP
	dbw 15, SAFEGUARD
	dbw 19, ROCK_TOMB
	dbw 21, REST
	dbw 25, SANDSTORM
	dbw 28, INFESTATION
	dbw 31, KNOCK_OFF
	dbw 34, ROCK_SLIDE
	dbw 36, PROTECT
	dbw 40, TOXIC
	dbw 43, SPIKES
	dbw 47, STONE_EDGE
	dbw 50, PAIN_SPLIT
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, SCIZOR
	dbbw EVOLVE_ITEM, EVERSTONE, KLEAVOR ; Replace with Blk Augurite when implemented
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, FURY_CUTTER
	dbw 5, PURSUIT
	dbw 9, GUST
	dbw 13, FOCUS_ENERGY
	dbw 17, CUT
	dbw 21, DOUBLE_TEAM
	dbw 25, WING_ATTACK
	dbw 29, SLASH
	dbw 33, U_TURN
	dbw 37, AGILITY
	dbw 41, NIGHT_SLASH
	dbw 45, AIR_SLASH
	dbw 49, X_SCISSOR
	dbw 53, SWORDS_DANCE
	dbw 57, FALSE_SWIPE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, FURY_CUTTER
	dbw 5, PURSUIT
	dbw 9, METAL_CLAW
	dbw 13, FOCUS_ENERGY
	dbw 17, CUT
	dbw 21, DOUBLE_TEAM
	dbw 25, BULLET_PUNCH
	dbw 29, SLASH
	dbw 33, U_TURN
	dbw 37, IRON_DEFENSE
	dbw 41, NIGHT_SLASH
	dbw 45, IRON_HEAD
	dbw 49, X_SCISSOR
	dbw 53, SWORDS_DANCE
	dbw 57, FALSE_SWIPE
	db 0 ; no more level-up moves

KleavorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, FURY_CUTTER
	dbw 5, PURSUIT
	dbw 9, ROCK_THROW
	dbw 13, FOCUS_ENERGY
	dbw 17, CUT
	dbw 21, DOUBLE_TEAM
	dbw 25, ROCK_TOMB
	dbw 29, SLASH
	dbw 33, U_TURN
	dbw 37, ROCK_POLISH
	dbw 41, NIGHT_SLASH
	dbw 45, ROCK_SLIDE
	dbw 49, X_SCISSOR
	dbw 53, SWORDS_DANCE
	dbw 57, FALSE_SWIPE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, FURY_ATTACK
	dbw 8, ENDURE
	dbw 12, ARM_THRUST
	dbw 15, HORN_ATTACK
	dbw 19, COUNTER
	dbw 23, PIN_MISSILE
	dbw 28, STRUGGLE ; Replace with Vital Throw when implemented
	dbw 32, TAKE_DOWN
	dbw 35, REVERSAL
	dbw 40, BULK_UP
	dbw 46, MEGAHORN
	dbw 51, CROSS_CHOP
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, HARDEN
	dbw 5, VICEGRIP
	dbw 8, SEISMIC_TOSS
	dbw 12, FURY_CUTTER
	dbw 15, ROCK_SMASH
	dbw 19, FOCUS_ENERGY
	dbw 23, FAINT_ATTACK
	dbw 28, SUBMISSION
	dbw 32, THRASH
	dbw 35, X_SCISSOR
	dbw 40, SWORDS_DANCE
	dbw 46, SUPERPOWER
	dbw 51, GUILLOTINE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 5, TACKLE
	dbw 10, FLAIL
	dbw 30, BOUNCE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 20, BITE
	dbw 20, LEER
	dbw 22, DRAGON_RAGE
	dbw 25, SCARY_FACE
	dbw 28, WATER_PULSE
	dbw 31, TWISTER
	dbw 34, ICE_FANG
	dbw 38, RAIN_DANCE
	dbw 42, HYDRO_PUMP
	dbw 46, CRUNCH
	dbw 50, DRAGON_DANCE
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

CorphishEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, CRAWDAUNT
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HARDEN
	dbw 4, LEER
	dbw 8, VICEGRIP
	dbw 12, TAUNT
	dbw 15, AQUA_JET
	dbw 19, FOCUS_ENERGY
	dbw 22, BUBBLEBEAM
	dbw 26, KNOCK_OFF
	dbw 31, PROTECT
	dbw 36, NIGHT_SLASH
	dbw 40, CRABHAMMER
	dbw 45, SWORDS_DANCE
	dbw 49, CRUNCH
	dbw 54, GUILLOTINE
	db 0 ; no more level-up moves

CrawdauntEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT ; Relearner
	dbw 1, BUBBLE
	dbw 1, HARDEN
	dbw 1, LEER
	dbw 1, VICEGRIP
	dbw 12, TAUNT
	dbw 15, AQUA_JET
	dbw 19, FOCUS_ENERGY
	dbw 22, BUBBLEBEAM
	dbw 26, KNOCK_OFF
	dbw 31, PROTECT
	dbw 36, NIGHT_SLASH
	dbw 40, CRABHAMMER
	dbw 45, SWORDS_DANCE
	dbw 49, CRUNCH
	dbw 54, GUILLOTINE
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, FLOATZEL
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, GROWL
	dbw 6, WATER_GUN
	dbw 9, SONICBOOM
	dbw 13, PURSUIT
	dbw 16, SWIFT
	dbw 20, AQUA_JET
	dbw 23, RAIN_DANCE
	dbw 27, ICE_FANG
	dbw 32, WATERFALL
	dbw 36, AGILITY
	dbw 40, EXTREMESPEED
	dbw 45, CRUNCH
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, SONICBOOM
	dbw 13, PURSUIT
	dbw 16, SWIFT
	dbw 20, AQUA_JET
	dbw 23, RAIN_DANCE
	dbw 27, ICE_FANG
	dbw 32, WATERFALL
	dbw 36, AGILITY
	dbw 40, EXTREMESPEED
	dbw 45, CRUNCH
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 5, VICEGRIP
	dbw 9, WATER_GUN
	dbw 11, POISON_GAS
	dbw 14, MUD_SHOT
	dbw 17, ACID_ARMOR
	dbw 21, BRINE
	dbw 23, STOMP
	dbw 27, CROSS_POISON
	dbw 32, BANEFULBUNKR ; Change name to Baneful Fort when implemented
	dbw 36, GUILLOTINE
	dbw 39, CRABHAMMER
	dbw 43, AGILITY
	dbw 48, FLAIL
	dbw 53, GUNK_SHOT
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 1, VICEGRIP
	dbw 1, WATER_GUN
	dbw 11, POISON_GAS
	dbw 14, MUD_SHOT
	dbw 17, ACID_ARMOR
	dbw 21, BRINE
	dbw 23, STOMP
	dbw 27, CROSS_POISON
	dbw 32, BANEFULBUNKR ; Change name to Baneful Fort when implemented
	dbw 36, GUILLOTINE
	dbw 39, CRABHAMMER
	dbw 43, AGILITY
	dbw 48, FLAIL
	dbw 53, GUNK_SHOT
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 6, WATER_GUN
	dbw 9, RAPID_SPIN
	dbw 13, MINIMIZE
	dbw 17, BUBBLEBEAM
	dbw 20, SWIFT
	dbw 24, PSYBEAM
	dbw 27, CONFUSE_RAY
	dbw 32, BRINE
	dbw 36, LIGHT_SCREEN
	dbw 41, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, COSMIC_POWER
	dbw 56, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, WATER_GUN
	dbw 1, RAPID_SPIN
	dbw 13, MINIMIZE
	dbw 17, BUBBLEBEAM
	dbw 20, SWIFT
	dbw 24, PSYBEAM
	dbw 27, CONFUSE_RAY
	dbw 32, BRINE
	dbw 36, LIGHT_SCREEN
	dbw 41, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, COSMIC_POWER
	dbw 56, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, HYPNOSIS
	dbw 7, DOUBLESLAP
	dbw 10, WATER_GUN
	dbw 13, MUD_SLAP
	dbw 17, RAIN_DANCE
	dbw 20, BUBBLEBEAM
	dbw 24, MUD_SHOT
	dbw 28, BODY_SLAM
	dbw 31, ENDURE
	dbw 35, MUDDY_WATER
	dbw 39, BELLY_DRUM
	dbw 43, DOUBLE_EDGE
	dbw 46, MIND_READER
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 10, WATER_GUN
	dbw 13, MUD_SLAP
	dbw 17, RAIN_DANCE
	dbw 20, BUBBLEBEAM
	dbw 24, MUD_SHOT
	dbw 28, BODY_SLAM
	dbw 31, SUBMISSION
	dbw 35, MUDDY_WATER
	dbw 39, BELLY_DRUM
	dbw 43, DOUBLE_EDGE
	dbw 46, MIND_READER
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, WATER_GUN
	dbw 13, MUD_SLAP
	dbw 17, RAIN_DANCE
	dbw 20, BUBBLEBEAM
	dbw 24, MUD_SHOT
	dbw 28, BODY_SLAM
	dbw 31, SUBMISSION
	dbw 35, MUDDY_WATER
	dbw 39, BELLY_DRUM
	dbw 43, DOUBLE_EDGE
	dbw 46, MIND_READER
	dbw 51, HYDRO_PUMP
	dbw 58, DYNAMICPUNCH
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, WATER_GUN
	dbw 13, MUD_SLAP
	dbw 17, RAIN_DANCE
	dbw 20, BUBBLEBEAM
	dbw 24, MUD_SHOT
	dbw 28, BODY_SLAM
	dbw 31, SWAGGER
	dbw 35, MUDDY_WATER
	dbw 39, BELLY_DRUM
	dbw 43, BOUNCE
	dbw 46, HYPER_VOICE
	dbw 51, HYDRO_PUMP
	dbw 58, PERISH_SONG
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 5, SUPERSONIC
	dbw 8, STRUGGLE ; Replace with Whirlpool when implemented
	dbw 12, HORN_ATTACK
	dbw 15, WATER_PULSE
	dbw 17, ATTRACT
	dbw 20, FURY_ATTACK
	dbw 23, AGILITY
	dbw 27, WATERFALL
	dbw 32, HORN_DRILL
	dbw 35, SWORDS_DANCE ; Aero wanted this but honestly I just don't see it, we need an icebreaker lmao
	dbw 40, PLAY_ROUGH
	dbw 45, MEGAHORN
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_JAB ; Relearner
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 1, SUPERSONIC
	dbw 1, STRUGGLE ; Replace with Whirlpool when implemented
	dbw 12, HORN_ATTACK
	dbw 15, WATER_PULSE
	dbw 17, ATTRACT
	dbw 20, FURY_ATTACK
	dbw 23, AGILITY
	dbw 27, WATERFALL
	dbw 28, DRILL_PECK
	dbw 32, HORN_DRILL
	dbw 35, SWORDS_DANCE ; Aero wanted this but honestly I just don't see it, we need an icebreaker lmao
	dbw 40, PLAY_ROUGH
	dbw 45, MEGAHORN
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 5, LOCK_ON
	dbw 9, SWIFT
	dbw 16, PSYBEAM
	dbw 16, AURORA_BEAM
	dbw 16, BUBBLEBEAM
	dbw 20, FOCUS_ENERGY
	dbw 24, BULLET_SEED
	dbw 28, WATER_PULSE
	dbw 35, SIGNAL_BEAM
	dbw 39, ICE_BEAM
	dbw 43, HYDRO_PUMP
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROCK_BLAST ; Relearner
	dbw 1, GUNK_SHOT ; Relearner
	dbw 1, CONSTRICT
	dbw 1, WATER_GUN
	dbw 1, LOCK_ON
	dbw 1, SWIFT
	dbw 16, PSYBEAM
	dbw 16, AURORA_BEAM
	dbw 16, BUBBLEBEAM
	dbw 20, FOCUS_ENERGY
	dbw 24, BULLET_SEED
	dbw 25, OCTAZOOKA
	dbw 28, WATER_PULSE
	dbw 35, SIGNAL_BEAM
	dbw 39, ICE_BEAM
	dbw 43, HYDRO_PUMP
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, POISON_STING
	dbw 3, HARDEN
	dbw 6, WATER_GUN
	dbw 9, MINIMIZE
	dbw 13, ROLLOUT
	dbw 16, SPIKES
	dbw 20, PIN_MISSILE
	dbw 23, SLUDGE
	dbw 26, BRINE
	dbw 30, TAKE_DOWN
	dbw 33, TOXIC
	dbw 37, DIVE
	dbw 40, POISON_JAB
	dbw 44, PAIN_SPLIT
	dbw 49, DESTINY_BOND
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, BUBBLE
	dbw 6, ENDURE
	dbw 10, ROCK_THROW
	dbw 13, SAFEGUARD
	dbw 17, BUBBLEBEAM
	dbw 19, RECOVER
	dbw 23, ANCIENTPOWER
	dbw 26, SPIKES
	dbw 28, IRON_DEFENSE
	dbw 31, BRINE
	dbw 34, AQUA_RING
	dbw 37, MIRROR_COAT
	dbw 41, ROCK_BLAST
	dbw 45, EARTH_POWER
	dbw 49, HYDRO_PUMP
	dbw 52, FLAIL
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MILOTIC
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 5, TACKLE
	dbw 10, FLAIL
	dbw 30, BOUNCE
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, WATER_GUN
	dbw 5, AQUA_RING
	dbw 9, DISARM_VOICE
	dbw 13, TWISTER
	dbw 17, WATER_PULSE
	dbw 21, SAFEGUARD
	dbw 25, DRAIN_KISS
	dbw 29, RAIN_DANCE
	dbw 33, WATERFALL
	dbw 37, RECOVER
	dbw 41, ATTRACT
	dbw 45, DAZZLE_GLEAM
	dbw 49, HYDRO_PUMP
	dbw 53, MIRROR_COAT
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 5, THUNDERSHOCK
	dbw 8, FLAIL
	dbw 11, WATER_GUN
	dbw 13, THUNDER_WAVE
	dbw 17, SPARK
	dbw 20, BUBBLEBEAM
	dbw 23, CONFUSE_RAY
	dbw 28, CHARGE_BEAM
	dbw 32, AQUA_RING
	dbw 35, SIGNAL_BEAM
	dbw 40, THUNDERBOLT
	dbw 44, RAIN_DANCE
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 1, THUNDERSHOCK
	dbw 1, FLAIL
	dbw 11, WATER_GUN
	dbw 13, THUNDER_WAVE
	dbw 17, SPARK
	dbw 20, BUBBLEBEAM
	dbw 23, CONFUSE_RAY
	dbw 28, CHARGE_BEAM
	dbw 32, AQUA_RING
	dbw 35, SIGNAL_BEAM
	dbw 40, THUNDERBOLT
	dbw 44, RAIN_DANCE
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 5, SMOKESCREEN
	dbw 9, WATER_GUN
	dbw 12, SWIFT
	dbw 16, TWISTER
	dbw 19, FOCUS_ENERGY
	dbw 23, BUBBLEBEAM
	dbw 26, AGILITY
	dbw 30, DRAGONBREATH
	dbw 35, BRINE
	dbw 40, DRAGON_DANCE
	dbw 46, DRAGON_PULSE
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbbw EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 9, WATER_GUN
	dbw 12, SWIFT
	dbw 16, TWISTER
	dbw 19, FOCUS_ENERGY
	dbw 23, BUBBLEBEAM
	dbw 26, AGILITY
	dbw 30, DRAGONBREATH
	dbw 35, BRINE
	dbw 40, DRAGON_DANCE
	dbw 46, DRAGON_PULSE
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 1, WATER_GUN
	dbw 12, SWIFT
	dbw 16, TWISTER
	dbw 19, FOCUS_ENERGY
	dbw 23, BUBBLEBEAM
	dbw 26, AGILITY
	dbw 30, DRAGONBREATH
	dbw 35, BRINE
	dbw 40, DRAGON_DANCE
	dbw 46, DRAGON_PULSE
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, BITE
	dbw 4, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, AQUA_JET
	dbw 15, PURSUIT
	dbw 18, SCREECH
	dbw 22, TAUNT
	dbw 25, ICE_FANG
	dbw 29, SCARY_FACE
	dbw 33, CRUNCH
	dbw 36, DIVE
	dbw 40, AGILITY
	dbw 45, SUPER_FANG
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, BITE
	dbw 1, RAGE
	dbw 1, FOCUS_ENERGY
	dbw 11, AQUA_JET
	dbw 15, PURSUIT
	dbw 18, SCREECH
	dbw 22, TAUNT
	dbw 25, ICE_FANG
	dbw 29, SCARY_FACE
	dbw 33, CRUNCH
	dbw 36, DIVE
	dbw 40, AGILITY
	dbw 45, SUPER_FANG
	dbw 52, NIGHT_SLASH
	dbw 57, SWAGGER
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, WATER_GUN
	dbw 8, WITHDRAW
	dbw 11, RAPID_SPIN
	dbw 14, BITE
	dbw 18, WATER_PULSE
	dbw 21, PROTECT
	dbw 25, HEADBUTT
	dbw 29, RAIN_DANCE
	dbw 33, WATERFALL
	dbw 38, IRON_DEFENSE
	dbw 42, BODY_SLAM
	dbw 47, HYDRO_PUMP
	dbw 53, ICE_BEAM
	dbw 59, MIRROR_COAT
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, WATER_GUN
	dbw 8, WITHDRAW
	dbw 11, RAPID_SPIN
	dbw 14, BITE
	dbw 18, WATER_PULSE
	dbw 21, PROTECT
	dbw 25, HEADBUTT
	dbw 29, RAIN_DANCE
	dbw 33, WATERFALL
	dbw 38, IRON_DEFENSE
	dbw 42, BODY_SLAM
	dbw 47, HYDRO_PUMP
	dbw 53, ICE_BEAM
	dbw 59, MIRROR_COAT
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, WATER_GUN
	dbw 1, WITHDRAW
	dbw 11, RAPID_SPIN
	dbw 14, BITE
	dbw 18, WATER_PULSE
	dbw 21, PROTECT
	dbw 25, HEADBUTT
	dbw 29, RAIN_DANCE
	dbw 33, WATERFALL
	dbw 36, FLASH_CANNON
	dbw 38, IRON_DEFENSE
	dbw 42, BODY_SLAM
	dbw 47, HYDRO_PUMP
	dbw 53, ICE_BEAM
	dbw 59, MIRROR_COAT
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, WATER_GUN
	dbw 8, RAGE
	dbw 12, BITE
	dbw 15, SCARY_FACE
	dbw 19, ICE_FANG
	dbw 23, BUBBLEBEAM
	dbw 26, FLAIL
	dbw 29, SCREECH
	dbw 34, CRUNCH
	dbw 37, SLASH
	dbw 41, WATERFALL
	dbw 46, SUPERPOWER
	dbw 51, THRASH
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 8, RAGE
	dbw 12, BITE
	dbw 15, SCARY_FACE
	dbw 19, ICE_FANG
	dbw 23, BUBBLEBEAM
	dbw 26, FLAIL
	dbw 29, SCREECH
	dbw 34, CRUNCH
	dbw 37, SLASH
	dbw 41, WATERFALL
	dbw 46, SUPERPOWER
	dbw 51, THRASH
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AGILITY ; Relearner
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 1, RAGE
	dbw 12, BITE
	dbw 15, SCARY_FACE
	dbw 19, ICE_FANG
	dbw 23, BUBBLEBEAM
	dbw 26, FLAIL
	dbw 29, SCREECH
	dbw 34, CRUNCH
	dbw 37, SLASH
	dbw 41, WATERFALL
	dbw 46, SUPERPOWER
	dbw 51, THRASH
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MARSHTOMP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, WATER_GUN
	dbw 9, MUD_SLAP
	dbw 12, DEFENSE_CURL
	dbw 16, MUD_SHOT
	dbw 18, ENDURE
	dbw 21, WATER_PULSE
	dbw 26, TAKE_DOWN
	dbw 31, AMNESIA
	dbw 37, MUDDY_WATER
	dbw 41, PROTECT
	dbw 47, EARTHQUAKE
	dbw 53, HYDRO_PUMP
	dbw 58, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SWAMPERT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 9, MUD_SLAP
	dbw 12, DEFENSE_CURL
	dbw 16, MUD_SHOT
	dbw 18, ENDURE
	dbw 21, WATER_PULSE
	dbw 26, TAKE_DOWN
	dbw 31, AMNESIA
	dbw 37, MUDDY_WATER
	dbw 41, PROTECT
	dbw 47, EARTHQUAKE
	dbw 53, HYDRO_PUMP
	dbw 58, DOUBLE_EDGE
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COUNTER ; Relearner
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, MUD_SLAP
	dbw 12, DEFENSE_CURL
	dbw 16, MUD_SHOT
	dbw 18, ENDURE
	dbw 21, WATER_PULSE
	dbw 26, TAKE_DOWN
	dbw 31, AMNESIA
	dbw 37, MUDDY_WATER
	dbw 41, PROTECT
	dbw 47, EARTHQUAKE
	dbw 53, HYDRO_PUMP
	dbw 58, DOUBLE_EDGE
	db 0 ; no more level-up moves

NumelEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 5, EMBER
	dbw 8, FOCUS_ENERGY
	dbw 12, MAGNITUDE
	dbw 16, FLAME_WHEEL
	dbw 19, AMNESIA
	dbw 23, BULLDOZE
	dbw 26, TAKE_DOWN
	dbw 30, LAVA_PLUME
	dbw 35, CURSE
	dbw 40, EARTHQUAKE
	dbw 44, FLAMETHROWER
	dbw 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, EMBER
	dbw 1, FOCUS_ENERGY
	dbw 12, MAGNITUDE
	dbw 16, FLAME_WHEEL
	dbw 19, AMNESIA
	dbw 23, BULLDOZE
	dbw 26, TAKE_DOWN
	dbw 30, LAVA_PLUME
	dbw 35, CURSE
	dbw 40, EARTHQUAKE
	dbw 44, FLAMETHROWER
	dbw 48, DOUBLE_EDGE
	dbw 54, ERUPTION
	dbw 61, FISSURE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 9, ROAR
	dbw 11, LEER
	dbw 15, FLAME_WHEEL
	dbw 18, REVERSAL
	dbw 20, HOWL
	dbw 24, FIRE_FANG
	dbw 27, TAKE_DOWN
	dbw 31, AGILITY
	dbw 36, CRUNCH
	dbw 41, FLAMETHROWER
	dbw 45, PLAY_ROUGH
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG ; Relearner
	dbw 1, BITE
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, ROAR
	dbw 11, LEER
	dbw 15, FLAME_WHEEL
	dbw 18, REVERSAL
	dbw 20, HOWL
	dbw 24, FIRE_FANG
	dbw 27, TAKE_DOWN
	dbw 31, AGILITY
	dbw 36, CRUNCH
	dbw 41, FLAMETHROWER
	dbw 45, PLAY_ROUGH
	dbw 50, EXTREMESPEED
	dbw 57, FIRE_BLAST
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, VOLCORONA ; Subject to change
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, STRING_SHOT
	dbw 5, LEECH_LIFE
	dbw 10, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 15, TAKE_DOWN
	dbw 20, SCREECH
	dbw 25, FLAME_WHEEL
	dbw 30, SIGNAL_BEAM
	dbw 35, AMNESIA
	dbw 40, FLAMETHROWER
	dbw 45, DOUBLE_EDGE
	dbw 50, BUG_BUZZ
	db 0 ; no more level-up moves

VolcoronaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SUNNY_DAY ; Relearner
	dbw 1, EMBER
	dbw 1, STRING_SHOT
	dbw 1, LEECH_LIFE
	dbw 1, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 15, GUST
	dbw 20, WHIRLWIND
	dbw 25, FLAME_WHEEL
	dbw 30, SILVER_WIND
	dbw 35, AMNESIA
	dbw 40, FLAMETHROWER
	dbw 45, TAILWIND
	dbw 50, BUG_BUZZ
	dbw 55, QUIVER_DANCE
	dbw 60, FIRE_BLAST
	dbw 65, HURRICANE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 6, EMBER
	dbw 10, STOMP
	dbw 13, DOUBLE_KICK
	dbw 16, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 20, FLAME_WHEEL
	dbw 25, TAKE_DOWN
	dbw 28, AGILITY
	dbw 32, BLAZE_KICK
	dbw 37, BOUNCE
	dbw 42, STRUGGLE ; Replace with Jump Kick when implemented
	dbw 46, DOUBLE_EDGE
	dbw 52, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, EMBER
	dbw 10, STOMP
	dbw 13, DOUBLE_KICK
	dbw 16, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 20, FLAME_WHEEL
	dbw 25, TAKE_DOWN
	dbw 28, AGILITY
	dbw 32, BLAZE_KICK
	dbw 37, BOUNCE
	dbw 42, STRUGGLE ; Replace with Jump Kick when implemented
	dbw 46, DOUBLE_EDGE
	dbw 52, FIRE_BLAST
	dbw 59, MEGAHORN
	db 0 ; no more level-up moves

TorkoalEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, WITHDRAW
	dbw 4, SMOG
	dbw 7, RAPID_SPIN
	dbw 10, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 14, SMOKESCREEN
	dbw 17, FLAME_WHEEL
	dbw 21, CURSE
	dbw 26, BODY_SLAM
	dbw 29, PROTECT
	dbw 33, FLAMETHROWER
	dbw 36, IRON_DEFENSE
	dbw 36, AMNESIA
	dbw 40, EARTH_POWER
	dbw 44, LAVA_PLUME
	dbw 49, FLAIL
	dbw 54, ERUPTION
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 17, DRAGON_RAGE
	dbw 20, FIRE_FANG
	dbw 23, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 27, SCARY_FACE
	dbw 31, DRAGONBREATH
	dbw 34, SLASH
	dbw 38, FLAMETHROWER
	dbw 43, DRAGON_CLAW
	dbw 48, DRAGON_DANCE
	dbw 52, THRASH
	dbw 58, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 17, DRAGON_RAGE
	dbw 20, FIRE_FANG
	dbw 23, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 27, SCARY_FACE
	dbw 31, DRAGONBREATH
	dbw 34, SLASH
	dbw 38, FLAMETHROWER
	dbw 43, DRAGON_CLAW
	dbw 48, DRAGON_DANCE
	dbw 52, THRASH
	dbw 58, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SHADOW_CLAW ; Relearner
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 12, METAL_CLAW
	dbw 17, DRAGON_RAGE
	dbw 20, FIRE_FANG
	dbw 23, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 27, SCARY_FACE
	dbw 31, DRAGONBREATH
	dbw 34, SLASH
	dbw 36, WING_ATTACK
	dbw 38, FLAMETHROWER
	dbw 43, DRAGON_CLAW
	dbw 48, DRAGON_DANCE
	dbw 52, THRASH
	dbw 58, FIRE_BLAST
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, EMBER
	dbw 8, SMOKESCREEN
	dbw 11, QUICK_ATTACK
	dbw 16, FLAME_WHEEL
	dbw 18, DEFENSE_CURL
	dbw 21, SWIFT
	dbw 24, ROLLOUT
	dbw 28, LAVA_PLUME
	dbw 31, REVERSAL
	dbw 35, SUNNY_DAY
	dbw 40, FLAMETHROWER
	dbw 45, DOUBLE_EDGE
	dbw 51, FIRE_BLAST
	dbw 57, ERUPTION
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, EMBER
	dbw 8, SMOKESCREEN
	dbw 11, QUICK_ATTACK
	dbw 16, FLAME_WHEEL
	dbw 18, DEFENSE_CURL
	dbw 21, SWIFT
	dbw 24, ROLLOUT
	dbw 28, LAVA_PLUME
	dbw 31, REVERSAL
	dbw 35, SUNNY_DAY
	dbw 40, FLAMETHROWER
	dbw 45, DOUBLE_EDGE
	dbw 51, FIRE_BLAST
	dbw 57, ERUPTION
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 11, QUICK_ATTACK
	dbw 16, FLAME_WHEEL
	dbw 18, DEFENSE_CURL
	dbw 21, SWIFT
	dbw 24, ROLLOUT
	dbw 28, LAVA_PLUME
	dbw 31, REVERSAL
	dbw 35, SUNNY_DAY
	dbw 40, FLAMETHROWER
	dbw 45, DOUBLE_EDGE
	dbw 51, FIRE_BLAST
	dbw 57, ERUPTION
	db 0 ; no more level-up moves

TorchicEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, COMBUSKEN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, EMBER
	dbw 9, SAND_ATTACK
	dbw 11, PECK
	dbw 14, FOCUS_ENERGY
	dbw 18, QUICK_ATTACK
	dbw 22, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 25, FLAME_WHEEL
	dbw 29, AGILITY
	dbw 32, SLASH
	dbw 34, FEATHERDANCE
	dbw 39, FLAMETHROWER
	dbw 45, FLAIL
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLAZIKEN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 9, SAND_ATTACK
	dbw 11, PECK
	dbw 14, FOCUS_ENERGY
	dbw 16, DOUBLE_KICK
	dbw 18, QUICK_ATTACK
	dbw 22, STRUGGLE ; Replace with Rolling Kick when implemented
	dbw 25, FIRE_PUNCH
	dbw 29, BULK_UP
	dbw 32, SLASH
	dbw 34, FEATHERDANCE
	dbw 39, BLAZE_KICK
	dbw 45, REVERSAL
	dbw 51, HI_JUMP_KICK
	dbw 54, BRAVE_BIRD
	dbw 60, FIRE_BLAST
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SAND_ATTACK
	dbw 11, PECK
	dbw 14, FOCUS_ENERGY
	dbw 16, DOUBLE_KICK
	dbw 18, QUICK_ATTACK
	dbw 22, STRUGGLE ; Replace with Rolling Kick when implemented
	dbw 25, FIRE_PUNCH
	dbw 29, BULK_UP
	dbw 32, SLASH
	dbw 34, FEATHERDANCE
	dbw 39, BLAZE_KICK
	dbw 45, REVERSAL
	dbw 51, HI_JUMP_KICK
	dbw 54, BRAVE_BIRD
	dbw 60, FIRE_BLAST
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, TACKLE
	dbw 3, SYNTHESIS
	dbw 5, ABSORB
	dbw 7, TAIL_WHIP
	dbw 10, GUST
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 19, BULLET_SEED
	dbw 22, LEECH_SEED
	dbw 25, MEGA_DRAIN
	dbw 28, AIR_CUTTER
	dbw 30, COTTON_SPORE
	dbw 33, U_TURN
	dbw 37, GIGA_DRAIN
	dbw 40, ENCORE
	dbw 44, BOUNCE
	dbw 48, SEED_BOMB
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, TACKLE
	dbw 1, SYNTHESIS
	dbw 5, ABSORB
	dbw 7, TAIL_WHIP
	dbw 10, GUST
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 19, BULLET_SEED
	dbw 22, LEECH_SEED
	dbw 25, MEGA_DRAIN
	dbw 28, AIR_CUTTER
	dbw 30, COTTON_SPORE
	dbw 33, U_TURN
	dbw 37, GIGA_DRAIN
	dbw 40, ENCORE
	dbw 44, BOUNCE
	dbw 48, SEED_BOMB
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, TACKLE
	dbw 1, SYNTHESIS
	dbw 1, ABSORB
	dbw 7, TAIL_WHIP
	dbw 10, GUST
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 19, BULLET_SEED
	dbw 22, LEECH_SEED
	dbw 25, MEGA_DRAIN
	dbw 28, AIR_CUTTER
	dbw 30, COTTON_SPORE
	dbw 33, U_TURN
	dbw 37, GIGA_DRAIN
	dbw 40, ENCORE
	dbw 44, BOUNCE
	dbw 48, SEED_BOMB
	db 0 ; no more level-up moves

LotadEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, LOMBRE
	db 0 ; no more evolutions
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, GROWL
	dbw 4, ABSORB
	dbw 7, WATER_GUN
	dbw 9, MIST
	dbw 13, MEGA_DRAIN
	dbw 16, FLAIL
	dbw 20, BUBBLEBEAM
	dbw 23, LEECH_SEED
	dbw 26, RAIN_DANCE
	dbw 30, SYNTHESIS
	dbw 33, DIVE
	dbw 38, GIGA_DRAIN
	dbw 42, ENCORE
	dbw 48, ZEN_HEADBUTT
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

LombreEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0 ; no more evolutions
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, GROWL
	dbw 1, ABSORB
	dbw 7, WATER_GUN
	dbw 9, MIST
	dbw 13, MEGA_DRAIN
	dbw 16, FURY_SWIPES
	dbw 20, BUBBLEBEAM
	dbw 23, LEECH_SEED
	dbw 26, RAIN_DANCE
	dbw 30, KNOCK_OFF
	dbw 33, DIVE
	dbw 38, GIGA_DRAIN
	dbw 42, ENCORE
	dbw 48, ZEN_HEADBUTT
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STRUGGLE ; Relearner, Replace with Petal Dance when implemented
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, GROWL
	dbw 1, ABSORB
	dbw 7, WATER_GUN
	dbw 9, MIST
	dbw 13, MEGA_DRAIN
	dbw 16, FURY_SWIPES
	dbw 20, BUBBLEBEAM
	dbw 23, LEECH_SEED
	dbw 26, RAIN_DANCE
	dbw 30, KNOCK_OFF
	dbw 33, DIVE
	dbw 38, GIGA_DRAIN
	dbw 42, ENCORE
	dbw 48, ZEN_HEADBUTT
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

ApplinEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, FLAPPLE ; Replace with Tart Apple when implemented
	dbbw EVOLVE_ITEM, LEAF_STONE, APPLETUN ; Replace with Sweet Apple when implemented
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 8, BULLET_SEED
	dbw 14, ROLLOUT
	dbw 20, DEFENSE_CURL
	dbw 20, GROWTH
	db 0 ; no more level-up moves

FlappleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, GROWTH
	dbw 4, STRUGGLE ; Replace with Acid when implemented
	dbw 8, BULLET_SEED
	dbw 12, TWISTER
	dbw 16, WING_ATTACK
	dbw 20, RAZOR_LEAF
	dbw 24, PROTECT
	dbw 28, DRAGONBREATH
	dbw 32, AGILITY
	dbw 36, SEED_BOMB
	dbw 40, FLY
	dbw 44, DRAGON_RUSH
	dbw 48, DRAGON_DANCE
	dbw 52, LEAF_STORM
	db 0 ; no more level-up moves

AppletunEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, STRUGGLE ; Replace with Astonish when implemented
	dbw 1, DEFENSE_CURL
	dbw 4, STOMP
	dbw 8, BULLET_SEED
	dbw 12, TWISTER
	dbw 16, LEECH_SEED
	dbw 20, MEGA_DRAIN
	dbw 24, PROTECT
	dbw 28, DRAGONBREATH
	dbw 32, IRON_DEFENSE
	dbw 36, SEED_BOMB
	dbw 40, RECOVER
	dbw 44, DRAGON_PULSE
	dbw 48, CURSE
	dbw 52, SOLARBEAM
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, TACKLE
	dbw 5, STUN_SPORE
	dbw 8, LEECH_SEED
	dbw 12, MEGA_DRAIN
	dbw 15, HEADBUTT
	dbw 17, POISONPOWDER
	dbw 21, BULLET_SEED
	dbw 26, GROWTH
	dbw 30, GIGA_DRAIN
	dbw 33, TOXIC
	dbw 38, SEED_BOMB
	dbw 43, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, TACKLE
	dbw 1, STUN_SPORE
	dbw 1, LEECH_SEED
	dbw 12, MEGA_DRAIN
	dbw 15, HEADBUTT
	dbw 17, POISONPOWDER
	dbw 21, BULLET_SEED
	dbw 23, MACH_PUNCH
	dbw 26, COUNTER
	dbw 30, SUBMISSION
	dbw 33, FALSE_SWIPE
	dbw 38, SEED_BOMB
	dbw 43, MIND_READER
	dbw 49, DYNAMICPUNCH
	dbw 56, SPORE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 3, GROWTH
	dbw 6, TACKLE
	dbw 10, MEGA_DRAIN
	dbw 12, LEECH_SEED
	dbw 15, ENCORE
	dbw 18, RAZOR_LEAF
	dbw 22, TAKE_DOWN
	dbw 25, BULLET_SEED
	dbw 28, SYNTHESIS
	dbw 31, GIGA_DRAIN
	dbw 34, FLAIL
	dbw 38, SUNNY_DAY
	dbw 41, SEED_BOMB
	dbw 43, DOUBLE_EDGE
	dbw 47, SOLARBEAM
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, GROWTH
	dbw 1, EMBER
	dbw 1, MEGA_DRAIN
	dbw 12, LEECH_SEED
	dbw 15, ENCORE
	dbw 18, RAZOR_LEAF
	dbw 22, FLAME_WHEEL
	dbw 25, STRUGGLE ; Replace with Fire Spin when implemented
	dbw 28, SYNTHESIS
	dbw 31, STRUGGLE ; Relearner, Replace with Petal Dance when implemented
	dbw 34, LAVA_PLUME
	dbw 38, SUNNY_DAY
	dbw 41, SEED_BOMB
	dbw 43, FIRE_BLAST
	dbw 47, SOLARBEAM
	dbw 53, COSMIC_POWER
	dbw 60, LEAF_STORM
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 5, GROWTH
	dbw 7, WRAP
	dbw 10, ACID
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 23, SWEET_SCENT
	dbw 27, SLUDGE
	dbw 30, KNOCK_OFF
	dbw 34, LEAF_BLADE
	dbw 38, BODY_SLAM
	dbw 43, POISON_JAB
	dbw 49, LEAF_STORM
	dbw 56, TOXIC
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 1, WRAP
	dbw 10, ACID
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 23, SWEET_SCENT
	dbw 27, SLUDGE
	dbw 30, KNOCK_OFF
	dbw 34, LEAF_BLADE
	dbw 38, BODY_SLAM
	dbw 43, POISON_JAB
	dbw 49, LEAF_STORM
	dbw 56, TOXIC
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 1, WRAP
	dbw 1, ACID
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 23, SWEET_SCENT
	dbw 27, SLUDGE
	dbw 30, KNOCK_OFF
	dbw 34, LEAF_BLADE
	dbw 38, BODY_SLAM
	dbw 43, POISON_JAB
	dbw 49, LEAF_STORM
	dbw 56, TOXIC
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HYPNOSIS
	dbw 5, BULLET_SEED
	dbw 9, REFLECT
	dbw 12, LEECH_SEED
	dbw 15, CONFUSION
	dbw 19, STUN_SPORE
	dbw 21, POISONPOWDER
	dbw 23, SLEEP_POWDER
	dbw 27, PSYBEAM
	dbw 32, SEED_BOMB
	dbw 37, SYNTHESIS
	dbw 42, TRI_ATTACK
	dbw 48, PSYSHOCK
	dbw 54, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STOMP
	dbw 1, HYPNOSIS
	dbw 1, BULLET_SEED
	dbw 1, REFLECT
	dbw 12, LEECH_SEED
	dbw 15, CONFUSION
	dbw 19, STUN_SPORE
	dbw 21, POISONPOWDER
	dbw 23, SLEEP_POWDER
	dbw 27, PSYBEAM
	dbw 32, SEED_BOMB
	dbw 37, SYNTHESIS
	dbw 42, TRI_ATTACK
	dbw 48, PSYSHOCK
	dbw 54, LEAF_STORM
	db 0 ; no more level-up moves

CottoneeEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, WHIMSICOTT
	db 0 ; no more evolutions
	dbw 1, COTTON_SPORE
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 7, FAIRY_WIND
	dbw 9, LEECH_SEED
	dbw 11, STUN_SPORE
	dbw 14, MEGA_DRAIN
	dbw 16, POISONPOWDER
	dbw 19, CHARM
	dbw 22, RAZOR_LEAF
	dbw 26, SYNTHESIS
	dbw 29, FLATTER
	dbw 32, GIGA_DRAIN
	dbw 35, SUNNY_DAY
	dbw 39, COTTON_GUARD
	dbw 43, MOONBLAST
	dbw 47, SOLARBEAM
	db 0 ; no more level-up moves

WhimsicottEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COTTON_SPORE
	dbw 1, ABSORB
	dbw 1, GROWTH
	dbw 1, GUST
	dbw 7, FAIRY_WIND
	dbw 9, LEECH_SEED
	dbw 11, STUN_SPORE
	dbw 14, MEGA_DRAIN
	dbw 16, POISONPOWDER
	dbw 19, CHARM
	dbw 22, RAZOR_LEAF
	dbw 26, SYNTHESIS
	dbw 29, FLATTER
	dbw 32, GIGA_DRAIN
	dbw 35, SUNNY_DAY
	dbw 39, COTTON_GUARD
	dbw 43, MOONBLAST
	dbw 47, SOLARBEAM
	dbw 51, TAILWIND
	dbw 55, HURRICANE
	db 0 ; no more level-up moves

MaractusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, ABSORB
	dbw 3, SWEET_SCENT
	dbw 6, GROWTH
	dbw 10, PIN_MISSILE
	dbw 13, MEGA_DRAIN
	dbw 15, SYNTHESIS
	dbw 18, SPIKES
	dbw 22, COTTON_SPORE
	dbw 26, GIGA_DRAIN
	dbw 29, FAINT_ATTACK
	dbw 32, SPIKY_SHIELD
	dbw 36, STRUGGLE ; Relearner, Replace with Petal Dance when implemented
	dbw 40, EARTH_POWER
	dbw 43, SUNNY_DAY
	dbw 48, SOLARBEAM
	dbw 52, COTTON_GUARD
	dbw 57, HEAL_BELL
	db 0 ; no more level-up moves

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, VINE_WHIP
	dbw 9, LEECH_SEED
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 17, RAZOR_LEAF
	dbw 19, SWEET_SCENT
	dbw 23, SLUDGE
	dbw 26, TAKE_DOWN
	dbw 30, STRUGGLE ; Relearner, Replace with Petal Dance when implemented
	dbw 33, GROWTH
	dbw 37, SYNTHESIS
	dbw 42, SLUDGE_BOMB
	dbw 47, DOUBLE_EDGE
	dbw 53, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, VINE_WHIP
	dbw 9, LEECH_SEED
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 17, RAZOR_LEAF
	dbw 19, SWEET_SCENT
	dbw 23, SLUDGE
	dbw 26, TAKE_DOWN
	dbw 30, STRUGGLE ; Relearner, Replace with Petal Dance when implemented
	dbw 33, GROWTH
	dbw 37, SYNTHESIS
	dbw 42, SLUDGE_BOMB
	dbw 47, DOUBLE_EDGE
	dbw 53, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, VINE_WHIP
	dbw 1, LEECH_SEED
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 17, RAZOR_LEAF
	dbw 19, SWEET_SCENT
	dbw 23, SLUDGE
	dbw 26, TAKE_DOWN
	dbw 30, STRUGGLE ; Relearner, Replace with Petal Dance when implemented
	dbw 33, GROWTH
	dbw 37, SYNTHESIS
	dbw 42, SLUDGE_BOMB
	dbw 47, DOUBLE_EDGE
	dbw 53, SOLARBEAM
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, RAZOR_LEAF
	dbw 8, POISONPOWDER
	dbw 11, SYNTHESIS
	dbw 14, REFLECT
	dbw 18, MEGA_DRAIN
	dbw 21, LEECH_SEED
	dbw 24, LIGHT_SCREEN
	dbw 28, BODY_SLAM
	dbw 31, GIGA_DRAIN
	dbw 35, SAFEGUARD
	dbw 39, STUN_SPORE
	dbw 45, SOLARBEAM
	dbw 48, SUNNY_DAY
	dbw 52, PLAY_ROUGH
	dbw 56, ENCORE
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, RAZOR_LEAF
	dbw 8, POISONPOWDER
	dbw 11, SYNTHESIS
	dbw 14, REFLECT
	dbw 18, MEGA_DRAIN
	dbw 21, LEECH_SEED
	dbw 24, LIGHT_SCREEN
	dbw 28, BODY_SLAM
	dbw 31, GIGA_DRAIN
	dbw 35, SAFEGUARD
	dbw 39, STUN_SPORE
	dbw 45, SOLARBEAM
	dbw 48, SUNNY_DAY
	dbw 52, PLAY_ROUGH
	dbw 56, ENCORE
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, RAZOR_LEAF
	dbw 1, POISONPOWDER
	dbw 11, SYNTHESIS
	dbw 14, REFLECT
	dbw 18, MEGA_DRAIN
	dbw 21, LEECH_SEED
	dbw 24, LIGHT_SCREEN
	dbw 28, BODY_SLAM
	dbw 31, GIGA_DRAIN
	dbw 35, SAFEGUARD
	dbw 39, STUN_SPORE
	dbw 45, SOLARBEAM
	dbw 48, SUNNY_DAY
	dbw 52, PLAY_ROUGH
	dbw 56, ENCORE
	db 0 ; no more level-up moves

TreekoEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, GROVYLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 6, ABSORB
	dbw 9, QUICK_ATTACK
	dbw 13, PURSUIT
	dbw 18, MEGA_DRAIN
	dbw 21, STRUGGLE ; Replace with Detect when implemented
	dbw 24, AGILITY
	dbw 28, SLASH
	dbw 32, GIGA_DRAIN
	dbw 35, FLAIL
	dbw 40, SOLARBEAM
	dbw 44, SCREECH
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SCEPTILE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 9, QUICK_ATTACK
	dbw 13, PURSUIT
	dbw 16, FURY_CUTTER
	dbw 18, RAZOR_LEAF
	dbw 21, STRUGGLE ; Replace with Detect when implemented
	dbw 24, AGILITY
	dbw 28, SLASH
	dbw 32, LEAF_BLADE
	dbw 35, X_SCISSOR
	dbw 40, FALSE_SWIPE
	dbw 44, NIGHT_SLASH
	dbw 49, LEAF_STORM
	dbw 53, DRAGON_CLAW
	dbw 59, SWORDS_DANCE
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 1, ABSORB
	dbw 1, QUICK_ATTACK
	dbw 13, PURSUIT
	dbw 16, FURY_CUTTER
	dbw 18, RAZOR_LEAF
	dbw 21, STRUGGLE ; Replace with Detect when implemented
	dbw 24, AGILITY
	dbw 28, SLASH
	dbw 32, LEAF_BLADE
	dbw 35, X_SCISSOR
	dbw 40, FALSE_SWIPE
	dbw 44, NIGHT_SLASH
	dbw 49, LEAF_STORM
	dbw 53, DRAGON_CLAW
	dbw 59, SWORDS_DANCE
	db 0 ; no more level-up moves

PichuEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, THUNDERSHOCK
	dbw 3, CHARM
	dbw 6, THUNDER_WAVE
	dbw 10, SWEET_KISS
	dbw 15, SPARK
	dbw 21, NASTY_PLOT
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 4, TAIL_WHIP
	dbw 7, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 15, SPARK
	dbw 18, DOUBLE_TEAM
	dbw 20, NUZZLE
	dbw 23, HEADBUTT
	dbw 26, THUNDERBOLT
	dbw 29, AGILITY
	dbw 32, IRON_TAIL
	dbw 36, ENCORE
	dbw 40, THUNDER
	dbw 44, BODY_SLAM
	dbw 48, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 1, TAIL_WHIP
	dbw 1, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 15, SPARK
	dbw 18, DOUBLE_TEAM
	dbw 20, NUZZLE
	dbw 23, HEADBUTT
	dbw 26, THUNDERBOLT
	dbw 29, AGILITY
	dbw 32, IRON_TAIL
	dbw 36, ENCORE
	dbw 40, THUNDER
	dbw 44, BODY_SLAM
	dbw 48, LIGHT_SCREEN
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, LUXIO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, GROWL
	dbw 8, THUNDERSHOCK
	dbw 11, FURY_SWIPES
	dbw 14, BITE
	dbw 18, SPARK
	dbw 20, ROAR
	dbw 23, PURSUIT
	dbw 27, SWAGGER
	dbw 31, THUNDER_FANG
	dbw 35, HOWL
	dbw 38, VOLT_SWITCH
	dbw 42, CRUNCH
	dbw 47, THUNDER
	dbw 51, SCARY_FACE
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, GROWL
	dbw 8, THUNDERSHOCK
	dbw 11, FURY_SWIPES
	dbw 14, BITE
	dbw 18, SPARK
	dbw 20, ROAR
	dbw 23, PURSUIT
	dbw 27, SWAGGER
	dbw 31, THUNDER_FANG
	dbw 35, HOWL
	dbw 38, VOLT_SWITCH
	dbw 42, CRUNCH
	dbw 47, THUNDER
	dbw 51, SCARY_FACE
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG ; Relearner
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 11, FURY_SWIPES
	dbw 14, BITE
	dbw 18, SPARK
	dbw 20, ROAR
	dbw 23, PURSUIT
	dbw 27, SWAGGER
	dbw 31, THUNDER_FANG
	dbw 35, HOWL
	dbw 38, VOLT_SWITCH
	dbw 42, CRUNCH
	dbw 47, THUNDER
	dbw 51, SCARY_FACE
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves
