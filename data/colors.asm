; Every regular and skin color used by NPC and player sprites.
; In code both tables are indexed from 1, see constants/color_constants.asm.

RegularColors:
	table_width PAL_COLOR_SIZE, RegularColors
	RGB 31,  7,  1 ; red
	RGB 10,  9, 31 ; blue
	RGB  5, 18,  3 ; green
	RGB 31, 25,  5 ; yellow
	RGB 15, 10,  3 ; brown
	RGB 18,  8, 18 ; purple
	RGB 31, 14, 22 ; pink
	RGB 20, 20, 22 ; silver
	assert_table_length NUM_COLORS

SkinColors:
	table_width PAL_COLOR_SIZE, SkinColors
	RGB 31, 25, 20 ; tone 1, lightest
	RGB 31, 22, 15 ; tone 2
	RGB 31, 19, 10 ; tone 3
	RGB 26, 14,  7 ; tone 4
	RGB 19, 10,  5 ; tone 5
	RGB 11,  6,  3 ; tone 6, darkest
	RGB 31, 31, 31 ; pure white
	RGB  0,  0,  0 ; pure black
	assert_table_length NUM_SKINS

; Order in which free object palettes are given out; 5 is shared with emotes, so it goes last.
ColorSlotOrder:
	db PAL_OW_PINK, PAL_OW_BROWN, PAL_OW_GREEN, PAL_OW_BLUE, PAL_OW_RED, PAL_OW_EMOTE
	assert @ - ColorSlotOrder == NUM_COLOR_SLOTS
