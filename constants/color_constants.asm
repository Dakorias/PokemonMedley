; Regular colors for NPCs and the player (see data/colors.asm).
; 0 means "keep the sprite's own color".
	const_def
	const COLOR_DEFAULT ; 0
	const COLOR_RED     ; 1
	const COLOR_BLUE    ; 2
	const COLOR_GREEN   ; 3
	const COLOR_YELLOW  ; 4
	const COLOR_BROWN   ; 5
	const COLOR_PURPLE  ; 6
	const COLOR_PINK    ; 7
	const COLOR_SILVER  ; 8
DEF NUM_COLORS EQU const_value - 1

; Objects that keep a fixed object palette instead of a skin and color.
	const FIXED_COLOR_TREE ; 9
	const FIXED_COLOR_ROCK ; 10

; Skin colors, light to dark, then pure white and pure black.
; 0 means "keep the sprite's own skin".
	const_def
	const SKIN_DEFAULT ; 0
	const SKIN_TONE_1  ; 1
	const SKIN_TONE_2  ; 2
	const SKIN_TONE_3  ; 3, the skin NPC sprites were drawn with
	const SKIN_TONE_4  ; 4
	const SKIN_TONE_5  ; 5
	const SKIN_TONE_6  ; 6
	const SKIN_WHITE   ; 7
	const SKIN_BLACK   ; 8
DEF NUM_SKINS EQU const_value - 1

; A skin and a color share one byte: skin in the high nybble, color in the low one.
; Used by object_event, wPlayerColor and the trainer color table.
DEF DEFAULT_PLAYER_COLORS EQU (SKIN_TONE_3 << 4) | COLOR_RED

; Object palette that every player icon in a menu is drawn with.
DEF PAL_PLAYER_UI EQU PAL_OW_PINK

; Object palettes available for skin/color combinations; the other two keep their fixed colors.
DEF NUM_COLOR_SLOTS EQU 6
