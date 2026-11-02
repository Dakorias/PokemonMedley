; overworld_sprite struct members (see data/sprites/sprites.asm)
rsreset
DEF SPRITEDATA_ADDR    rw ; 0
DEF SPRITEDATA_SIZE    rb ; 2
DEF SPRITEDATA_BANK    rb ; 3
DEF SPRITEDATA_TYPE    rb ; 4
DEF SPRITEDATA_COLOR   rb ; 5
DEF NUM_SPRITEDATA_FIELDS EQU _RS

; sprite types
	const_def 1
	const WALKING_SPRITE  ; 1
	const STANDING_SPRITE ; 2
	const STILL_SPRITE    ; 3

; sprite palettes
	const_def
	const PAL_OW_RED    ; 0
	const PAL_OW_BLUE   ; 1
	const PAL_OW_GREEN  ; 2
	const PAL_OW_BROWN  ; 3
	const PAL_OW_PINK   ; 4
	const PAL_OW_EMOTE  ; 5
	const PAL_OW_TREE   ; 6
	const PAL_OW_ROCK   ; 7
