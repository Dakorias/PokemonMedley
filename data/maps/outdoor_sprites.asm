; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2
	dw CableClubGroupSprites
	dw BattleTowerGroupSprites
	dw NewBarkGroupSprites
	dw IndigoGroupSprites
	dw HeraldCoveGroupSprites
	dw CraggyCoastGroupSprites
	dw BerryForestGroupSprites
	dw SecondIslandGroupSprites
	assert_table_length NUM_MAP_GROUPS

CableClubGroupSprites:
	; (no outdoor maps)
		; 0 of max 9 walking sprites
		db 0 ; end

BattleTowerGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end

NewBarkGroupSprites:
	; NewBarkTown
		db SPRITE_RIVAL
		db SPRITE_TEACHER
		db SPRITE_FISHER
		db SPRITE_COOLTRAINER_M
		db SPRITE_YOUNGSTER
		db SPRITE_MONSTER
		db SPRITE_GRAMPS
		db SPRITE_BUG_CATCHER
		db SPRITE_COOLTRAINER_F
		; max 9 of 9 walking sprites
		db SPRITE_POKE_BALL
		db SPRITE_FRUIT_TREE
		db 0 ; end

IndigoGroupSprites:
	; (no outdoor maps)
		; 0 of max 9 walking sprites
		db 0 ; end

HeraldCoveGroupSprites:
	; HeraldCove, HeraldRoute, HeraldBay, RuggedCliffGrotto
		db SPRITE_COOLTRAINER_F
		db SPRITE_LASS
		db SPRITE_ROCKET
		db SPRITE_OAK
		db SPRITE_YOUNGSTER
		db SPRITE_EDWARD
		db SPRITE_GIOVANNI_HAT
		db SPRITE_GOOD_RIVAL
		db SPRITE_BAD_RIVAL
		; 9 of 9 walking sprites
		db SPRITE_NURSE
		db SPRITE_POKE_BALL
		db SPRITE_COTTONEE
		db SPRITE_SHINX
		db SPRITE_MURKROW
		db SPRITE_FISHER
		db SPRITE_SAILOR
		db SPRITE_GRAMPS
		db SPRITE_GRANNY
		db SPRITE_BUTTERFREE
		db SPRITE_FRUIT_TREE
		db 0 ; end

CraggyCoastGroupSprites:
	; CraggyBeach, CraggyCoast, ScenicBluff, RuggedCliff, Mt. Monego
		db SPRITE_TEACHER
		db SPRITE_LASS
		db SPRITE_KENJI
		db SPRITE_HARRISON
		db SPRITE_YOUNGSTER
		db SPRITE_BLACK_BELT
		db SPRITE_POKEFAN_M
		db SPRITE_GOOD_RIVAL
		db SPRITE_BAD_RIVAL
		; 9 of 9 walking sprites
		db SPRITE_CLERK
		db SPRITE_NURSE
		db SPRITE_POKE_BALL
		db SPRITE_FISHING_GURU
		db SPRITE_SAILOR
		db SPRITE_GRAMPS
		db SPRITE_GRANNY
		db SPRITE_BLUE
		db SPRITE_GIOVANNI_HAT
		db SPRITE_FRUIT_TREE
		db 0 ; end

BerryForestGroupSprites:
	; BerryForest
		db SPRITE_TEACHER
		db SPRITE_LASS
		db SPRITE_KENJI
		db SPRITE_HARRISON
		db SPRITE_YOUNGSTER
		db SPRITE_BLACK_BELT
		db SPRITE_POKEFAN_M
		db SPRITE_GOOD_RIVAL
		db SPRITE_BAD_RIVAL
		; 9 of 9 walking sprites
		db SPRITE_CLERK
		db SPRITE_NURSE
		db SPRITE_POKE_BALL
		db SPRITE_FISHING_GURU
		db SPRITE_SAILOR
		db SPRITE_GRAMPS
		db SPRITE_GRANNY
		db SPRITE_BLUE
		db SPRITE_FRUIT_TREE
		db 0 ; end

SecondIslandGroupSprites:
	; SecondIsland
		db SPRITE_TEACHER
		db SPRITE_LASS
		db SPRITE_KENJI
		db SPRITE_HARRISON
		db SPRITE_YOUNGSTER
		db SPRITE_BLACK_BELT
		db SPRITE_POKEFAN_M
		db SPRITE_GOOD_RIVAL
		db SPRITE_BAD_RIVAL
		; 9 of 9 walking sprites
		db SPRITE_CLERK
		db SPRITE_NURSE
		db SPRITE_POKE_BALL
		db SPRITE_FISHING_GURU
		db SPRITE_SAILOR
		db SPRITE_GRAMPS
		db SPRITE_GRANNY
		db SPRITE_BLUE
		db SPRITE_FRUIT_TREE
		db 0 ; end
