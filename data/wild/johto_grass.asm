; wildmon chance, species (16-bit), minimum level, maximum level
; Johto Pokémon in grass
; Max of 8 Pokemon per Area

JohtoGrassWildMons:

	def_grass_wildmons HERALD_ROUTE
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, PIDGEY          ,  2,  4
	wildmon 30, SENTRET         ,  2,  5
	wildmon 20, CATERPIE        ,  2,  4
	wildmon 10, FLETCHLING      ,  3,  5
	wildmon  4, KRABBY          ,  3,  4
	wildmon  3, PIDGEY          ,  3,  5
	wildmon  2, PIDGEY          ,  2,  5
	wildmon  1, COTTONEE        ,  3,  5

	; day
	wildmon 30, PIDGEY          ,  2,  4
	wildmon 30, SENTRET         ,  2,  5
	wildmon 20, CATERPIE        ,  2,  4
	wildmon 10, FLETCHLING      ,  3,  5
	wildmon  4, KRABBY          ,  3,  4
	wildmon  3, PIDGEY          ,  3,  5
	wildmon  2, PIDGEY          ,  2,  5
	wildmon  1, SHINX           ,  3,  5

	; nite
	wildmon 30, PIDGEY          ,  2,  4
	wildmon 30, SENTRET         ,  2,  5
	wildmon 20, CATERPIE        ,  2,  4
	wildmon 10, FLETCHLING      ,  3,  5
	wildmon  4, KRABBY          ,  3,  4
	wildmon  3, PIDGEY          ,  3,  5
	wildmon  2, PIDGEY          ,  2,  5
	wildmon  1, HOUNDOUR        ,  3,  5

	end_grass_wildmons

	def_grass_wildmons HERALD_BAY
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, PIDGEY          ,  3,  5
	wildmon 30, LOTAD           ,  3,  6
	wildmon 20, CATERPIE        ,  3,  5
	wildmon 10, FLETCHLING      ,  4,  6
	wildmon  4, KRABBY          ,  4,  5
	wildmon  3, BIDOOF          ,  2,  4
	wildmon  2, BIDOOF          ,  4,  7
	wildmon  1, COTTONEE        ,  4,  6

	; day
	wildmon 30, PIDGEY          ,  3,  5
	wildmon 30, LOTAD           ,  3,  6
	wildmon 20, CATERPIE        ,  3,  5
	wildmon 10, FLETCHLING      ,  4,  6
	wildmon  4, KRABBY          ,  4,  5
	wildmon  3, BIDOOF          ,  2,  4
	wildmon  2, BIDOOF          ,  4,  7
	wildmon  1, SHINX           ,  4,  6

	; nite
	wildmon 30, PIDGEY          ,  3,  5
	wildmon 30, LOTAD           ,  3,  6
	wildmon 20, CATERPIE        ,  3,  5
	wildmon 10, FLETCHLING      ,  4,  6
	wildmon  4, KRABBY          ,  4,  5
	wildmon  3, BIDOOF          ,  2,  4
	wildmon  2, BIDOOF          ,  4,  7
	wildmon  1, MURKROW         ,  4,  6

	end_grass_wildmons

	def_grass_wildmons CRAGGY_BEACH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, PIDGEY          ,  6,  8
	wildmon 30, BIDOOF          ,  6,  9
	wildmon 20, SURSKIT         ,  7,  9
	wildmon 10, KRABBY          ,  7,  9
	wildmon  4, CORPHISH        ,  6,  7
	wildmon  3, KRABBY          ,  7,  9
	wildmon  2, BIDOOF          ,  7, 10
	wildmon  1, CORPHISH        ,  9, 11

	; day
	wildmon 30, PIDGEY          ,  6,  8
	wildmon 30, BIDOOF          ,  6,  9
	wildmon 20, SURSKIT         ,  7,  9
	wildmon 10, KRABBY          ,  7,  9
	wildmon  4, CORPHISH        ,  6,  7
	wildmon  3, KRABBY          ,  7,  9
	wildmon  2, BIDOOF          ,  7, 10
	wildmon  1, CORPHISH        ,  9, 11

	; nite
	wildmon 30, PIDGEY          ,  6,  8
	wildmon 30, BIDOOF          ,  6,  9
	wildmon 20, SURSKIT         ,  7,  9
	wildmon 10, KRABBY          ,  7,  9
	wildmon  4, CORPHISH        ,  6,  7
	wildmon  3, KRABBY          ,  7,  9
	wildmon  2, BIDOOF          ,  7, 10
	wildmon  1, CORPHISH        ,  9, 11

	end_grass_wildmons

	def_grass_wildmons SCENIC_BLUFF
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, FLETCHLING      , 10, 12
	wildmon 30, MACHOP          ,  9, 12
	wildmon 20, BIDOOF          , 10, 12
	wildmon 10, MACHOP          , 11, 13
	wildmon  4, GLIGAR          , 10, 11
	wildmon  3, FLETCHLING      ,  9, 11
	wildmon  2, TYROGUE         , 10, 13
	wildmon  1, TYROGUE         , 11, 13

	; day
	wildmon 30, FLETCHLING      , 10, 12
	wildmon 30, MACHOP          ,  9, 12
	wildmon 20, BIDOOF          , 10, 12
	wildmon 10, MACHOP          , 11, 13
	wildmon  4, GLIGAR          , 10, 11
	wildmon  3, FLETCHLING      ,  9, 11
	wildmon  2, TYROGUE         , 10, 13
	wildmon  1, TYROGUE         , 11, 13

	; nite
	wildmon 30, FLETCHLING      , 10, 12
	wildmon 30, MACHOP          ,  9, 12
	wildmon 20, BIDOOF          , 10, 12
	wildmon 10, MACHOP          , 11, 13
	wildmon  4, GLIGAR          , 10, 11
	wildmon  3, FLETCHLING      ,  9, 11
	wildmon  2, TYROGUE         , 10, 13
	wildmon  1, TYROGUE         , 11, 13

	end_grass_wildmons

	def_grass_wildmons MT_MONEGO
	db 4 percent, 4 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, GEODUDE         , 10, 12
	wildmon 30, MACHOP          , 11, 14
	wildmon 20, ZUBAT           , 12, 14
	wildmon 10, TYROGUE         , 12, 14
	wildmon  4, MACHOP          , 11, 12
	wildmon  3, GEODUDE         , 12, 14
	wildmon  2, TYROGUE         , 12, 15
	wildmon  1, ZUBAT           , 11, 13

	; day
	wildmon 30, GEODUDE         , 10, 12
	wildmon 30, MACHOP          , 11, 14
	wildmon 20, ZUBAT           , 12, 14
	wildmon 10, TYROGUE         , 12, 14
	wildmon  4, MACHOP          , 11, 12
	wildmon  3, GEODUDE         , 12, 14
	wildmon  2, TYROGUE         , 12, 15
	wildmon  1, ZUBAT           , 11, 13

	; nite
	wildmon 30, GEODUDE         , 10, 12
	wildmon 30, MACHOP          , 11, 14
	wildmon 20, ZUBAT           , 12, 14
	wildmon 10, TYROGUE         , 12, 14
	wildmon  4, MACHOP          , 11, 12
	wildmon  3, GEODUDE         , 12, 14
	wildmon  2, TYROGUE         , 12, 15
	wildmon  1, ZUBAT           , 11, 13

	end_grass_wildmons

	def_grass_wildmons MT_MONEGO_B1F
	db 4 percent, 4 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, GEODUDE         , 10, 12
	wildmon 30, MACHOP          , 11, 14
	wildmon 20, ZUBAT           , 12, 14
	wildmon 10, ONIX            , 12, 14
	wildmon  4, MACHOP          , 11, 12
	wildmon  3, GEODUDE         , 12, 14
	wildmon  2, LARVITAR        , 12, 15
	wildmon  1, ZUBAT           , 11, 13

	; day
	wildmon 30, GEODUDE         , 10, 12
	wildmon 30, MACHOP          , 11, 14
	wildmon 20, ZUBAT           , 12, 14
	wildmon 10, ONIX            , 12, 14
	wildmon  4, MACHOP          , 11, 12
	wildmon  3, GEODUDE         , 12, 14
	wildmon  2, LARVITAR        , 12, 15
	wildmon  1, ZUBAT           , 11, 13

	; nite
	wildmon 30, GEODUDE         , 10, 12
	wildmon 30, MACHOP          , 11, 14
	wildmon 20, ZUBAT           , 12, 14
	wildmon 10, ONIX            , 12, 14
	wildmon  4, MACHOP          , 11, 12
	wildmon  3, GEODUDE         , 12, 14
	wildmon  2, LARVITAR        , 12, 15
	wildmon  1, ZUBAT           , 11, 13

	end_grass_wildmons

	def_grass_wildmons RUGGED_CLIFF
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, PIDGEY          , 12, 14
	wildmon 30, ROCKRUFF        , 11, 14
	wildmon 20, SENTRET         , 11, 13
	wildmon 10, GLIGAR          , 12, 14
	wildmon  4, EXEGGCUTE       , 12, 13
	wildmon  3, SENTRET         , 13, 15
	wildmon  2, PIDGEOTTO       , 14, 17
	wildmon  1, GLIGAR          , 13, 15

	; day
	wildmon 30, PIDGEY          , 12, 14
	wildmon 30, ROCKRUFF        , 11, 14
	wildmon 20, SENTRET         , 11, 13
	wildmon 10, GLIGAR          , 12, 14
	wildmon  4, EXEGGCUTE       , 12, 13
	wildmon  3, SENTRET         , 13, 15
	wildmon  2, PIDGEOTTO       , 14, 17
	wildmon  1, GLIGAR          , 13, 15

	; nite
	wildmon 30, PIDGEY          , 12, 14
	wildmon 30, ROCKRUFF        , 11, 14
	wildmon 20, SENTRET         , 11, 13
	wildmon 10, GLIGAR          , 12, 14
	wildmon  4, EXEGGCUTE       , 12, 13
	wildmon  3, SENTRET         , 13, 15
	wildmon  2, PIDGEOTTO       , 14, 17
	wildmon  1, GLIGAR          , 13, 15

	end_grass_wildmons

	def_grass_wildmons RUGGED_CLIFF_GROTTO
		db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
		; morn
		; Chance, Species, Minimum, Maximum
		wildmon 30, PIDGEY          , 12, 14
		wildmon 30, ROCKRUFF        , 11, 14
		wildmon 20, SENTRET         , 11, 13
		wildmon 10, GLIGAR          , 12, 14
		wildmon  4, EXEGGCUTE       , 12, 13
		wildmon  3, SENTRET         , 13, 15
		wildmon  2, PIDGEOTTO       , 14, 17
		wildmon  1, GLIGAR          , 13, 15

		; day
		wildmon 30, PIDGEY          , 12, 14
		wildmon 30, ROCKRUFF        , 11, 14
		wildmon 20, SENTRET         , 11, 13
		wildmon 10, GLIGAR          , 12, 14
		wildmon  4, EXEGGCUTE       , 12, 13
		wildmon  3, SENTRET         , 13, 15
		wildmon  2, PIDGEOTTO       , 14, 17
		wildmon  1, GLIGAR          , 13, 15

		; nite
		wildmon 30, PIDGEY          , 12, 14
		wildmon 30, ROCKRUFF        , 11, 14
		wildmon 20, SENTRET         , 11, 13
		wildmon 10, GLIGAR          , 12, 14
		wildmon  4, EXEGGCUTE       , 12, 13
		wildmon  3, SENTRET         , 13, 15
		wildmon  2, PIDGEOTTO       , 14, 17
		wildmon  1, GLIGAR          , 13, 15

		end_grass_wildmons

	def_grass_wildmons BERRY_FOREST
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	; Chance, Species, Minimum, Maximum
	wildmon 30, HOPPIP          , 14, 16
	wildmon 30, ABRA            , 13, 16
	wildmon 20, SHROOMISH       , 13, 15
	wildmon 10, SUNKERN         , 13, 15
	wildmon  4, APPLIN          , 13, 14
	wildmon  3, SKIPLOOM        , 16, 18
	wildmon  2, CHIKORITA       , 11, 14
	wildmon  1, CHIKORITA       , 11, 13

	; day
	wildmon 30, HOPPIP          , 14, 16
	wildmon 30, ABRA            , 13, 16
	wildmon 20, SHROOMISH       , 13, 15
	wildmon 10, SUNKERN         , 13, 15
	wildmon  4, APPLIN          , 13, 14
	wildmon  3, SKIPLOOM        , 16, 18
	wildmon  2, CHIKORITA       , 11, 14
	wildmon  1, CHIKORITA       , 11, 13

	; nite
	wildmon 30, HOPPIP          , 14, 16
	wildmon 30, ABRA            , 13, 16
	wildmon 20, SHROOMISH       , 13, 15
	wildmon 10, SUNKERN         , 13, 15
	wildmon  4, APPLIN          , 13, 14
	wildmon  3, SKIPLOOM        , 16, 18
	wildmon  2, CHIKORITA       , 11, 14
	wildmon  1, CHIKORITA       , 11, 13

	end_grass_wildmons
	db -1 ; end
