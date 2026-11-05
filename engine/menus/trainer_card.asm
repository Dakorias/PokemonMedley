; TrainerCard.Jumptable indexes
	const_def
	const TRAINERCARDSTATE_PAGE1_LOADGFX ; 0
	const TRAINERCARDSTATE_PAGE1_JOYPAD  ; 1
	const TRAINERCARDSTATE_QUIT          ; 2

	DEF TRAINER_CARD_TILE_BASE EQU $29
	DEF TRAINER_CARD_TILE_BLANK EQU TRAINER_CARD_TILE_BASE
	DEF TRAINER_CARD_TILE_ACCENT EQU TRAINER_CARD_TILE_BASE + 1
	DEF TRAINER_CARD_TILE_SPECIAL_BOTTOM EQU TRAINER_CARD_TILE_BASE + 4
	DEF TRAINER_CARD_TILE_SPECIAL_TRANSITION EQU TRAINER_CARD_TILE_BASE + 5
	DEF TRAINER_CARD_TILE_SPECIAL_TOP EQU TRAINER_CARD_TILE_BASE + 6
	DEF TRAINER_CARD_TILE_SPECIAL_LEFT EQU TRAINER_CARD_TILE_BASE + 7
	DEF TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP EQU TRAINER_CARD_TILE_BASE + 9
	DEF TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM EQU TRAINER_CARD_TILE_BASE + 10
	DEF TRAINER_CARD_TILE_TOP_LEFT EQU TRAINER_CARD_TILE_BASE + 12
	DEF TRAINER_CARD_TILE_TOP_RIGHT EQU TRAINER_CARD_TILE_BASE + 13
	DEF TRAINER_CARD_TILE_BOTTOM_LEFT EQU TRAINER_CARD_TILE_BASE + 14
	DEF TRAINER_CARD_TILE_BOTTOM_RIGHT EQU TRAINER_CARD_TILE_BASE + 15
	DEF TRAINER_CARD_TILE_BADGE_TOP_LEFT EQU TRAINER_CARD_TILE_BASE + 16
	DEF TRAINER_CARD_TILE_BADGE_TOP_RIGHT EQU TRAINER_CARD_TILE_BASE + 17
	DEF TRAINER_CARD_TILE_BADGE_BOTTOM_LEFT EQU TRAINER_CARD_TILE_BASE + 18
	DEF TRAINER_CARD_TILE_BADGE_BOTTOM_RIGHT EQU TRAINER_CARD_TILE_BASE + 19
	DEF TRAINER_CARD_TILE_TOP_CONNECTOR EQU TRAINER_CARD_TILE_BASE + 20
	DEF TRAINER_CARD_TILE_BOTTOM_CONNECTOR EQU TRAINER_CARD_TILE_BASE + 21
	DEF TRAINER_CARD_TILE_LEFT_CONNECTOR EQU TRAINER_CARD_TILE_BASE + 23
	DEF TRAINER_CARD_TILE_RIGHT_CONNECTOR EQU TRAINER_CARD_TILE_BASE + 22
	DEF TRAINER_CARD_TILE_STAR EQU TRAINER_CARD_TILE_BASE + 32
	DEF TRAINER_CARD_TILE_BOTTOM_LINE EQU TRAINER_CARD_TILE_BASE + 33
	DEF TRAINER_CARD_TILE_POKEBALL EQU TRAINER_CARD_TILE_BASE + 8
	DEF TRAINER_CARD_TILE_TRIM EQU TRAINER_CARD_TILE_BASE + 9
	DEF TRAINER_CARD_TILE_DIVIDER EQU TRAINER_CARD_TILE_BASE + 11
	DEF TRAINER_CARD_TILE_POKEBALL_TOP_LEFT EQU TRAINER_CARD_TILE_BASE + 24
	DEF TRAINER_CARD_TILE_POKEBALL_TOP EQU TRAINER_CARD_TILE_BASE + 25
	DEF TRAINER_CARD_TILE_POKEBALL_TOP_RIGHT EQU TRAINER_CARD_TILE_BASE + 26
	DEF TRAINER_CARD_TILE_POKEBALL_LEFT EQU TRAINER_CARD_TILE_BASE + 27
	DEF TRAINER_CARD_TILE_POKEBALL_RIGHT EQU TRAINER_CARD_TILE_BASE + 28
	DEF TRAINER_CARD_TILE_POKEBALL_BOTTOM_LEFT EQU TRAINER_CARD_TILE_BASE + 29
	DEF TRAINER_CARD_TILE_POKEBALL_BOTTOM EQU TRAINER_CARD_TILE_BASE + 30
	DEF TRAINER_CARD_TILE_POKEBALL_BOTTOM_RIGHT EQU TRAINER_CARD_TILE_BASE + 31

	TrainerCard:
	ld a, [wStateFlags]
	push af
	xor a
	ld [wStateFlags], a
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call .InitRAM
.loop
	call UpdateTime
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit JUMPTABLE_EXIT_F, a
	jr nz, .quit
	ldh a, [hJoyLast]
	and B_BUTTON
	jr nz, .quit
	call .RunJumptable
	call DelayFrame
	jr .loop

.quit
	pop af
	ld [wOptions], a
	pop af
	ld [wStateFlags], a
	ret

.InitRAM:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD

	farcall GetCardPic

	ld hl, TrainerCardFrameGFX
	ld de, vTiles2 tile TRAINER_CARD_TILE_BASE
	ld bc, 32 tiles
	ld a, BANK(TrainerCardFrameGFX)
	call FarCopyBytes
	ld hl, TrainerCardStarGFX
	ld de, vTiles2 tile TRAINER_CARD_TILE_STAR
	ld bc, 1 tiles
	ld a, BANK(TrainerCardStarGFX)
	call FarCopyBytes
	ld hl, TrainerCardDividerGFX
	ld de, vTiles2 tile TRAINER_CARD_TILE_BOTTOM_LINE
	ld bc, 1 tiles
	ld a, BANK(TrainerCardDividerGFX)
	call FarCopyBytes

	call TrainerCard_GetStars
	call TrainerCard_PrintTopHalfOfCard

	call EnableLCD
	call WaitBGMap
	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	call WaitBGMap
	ld hl, wJumptableIndex
	xor a ; TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTrainerCardBadgeFrameCounter
	ld [hl], a ; clear wTrainerCardBadgeTileID
	ret

.RunJumptable:
	jumptable .Jumptable, wJumptableIndex

.Jumptable:
; entries correspond to TRAINERCARDSTATE_* constants
	dw TrainerCard_Page1_LoadGFX
	dw TrainerCard_Page1_Joypad
	dw TrainerCard_Quit

TrainerCard_IncrementJumptable:
	ld hl, wJumptableIndex
	inc [hl]
	ret

TrainerCard_Quit:
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	ret

TrainerCard_Page1_LoadGFX:
	call ClearSprites
	call WaitBGMap
	ld de, BadgeGFX
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFX), 44
	call Request2bpp
	ld hl, TrainerCard_JohtoBadgesOAM
	call TrainerCard_Page2_3_OAMUpdate
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page1_Joypad:
	ld hl, TrainerCard_JohtoBadgesOAM
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and A_BUTTON
	jr nz, .quit
	ret

.quit
	ld a, TRAINERCARDSTATE_QUIT
	ld [wJumptableIndex], a
	ret

TrainerCard_PrintTopHalfOfCard:
	hlcoord 0, 0
	ld de, TrainerCardFrameTilemap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
.copy_tilemap
	ld a, [de]
	ld [hli], a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, .copy_tilemap

	call TrainerCard_PrintStars
	call TrainerCard_PrintLeagueTitle
	call TrainerCard_PrintPokeball

	hlcoord 1, 2
	ld de, .Name
	call PlaceString
	hlcoord 6, 2
	ld de, wPlayerName
	call PlaceString
	hlcoord 1, 4
	ld de, .ID_No
	call PlaceString
	hlcoord 8, 4
	ld de, wPlayerID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 1, 6
	ld de, .Pokemon
	call PlaceString
	call TrainerCard_PrintPokemonCount
	hlcoord 12, 8
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 6
	call PrintNum
	hlcoord 1, 8
	ld de, .Time
	call PlaceString
	hlcoord 6, 8
	ld de, wGameTimeHours
	lb bc, 2, 3
	call PrintNum
	ld [hl], "<COLON>"
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	hlcoord 14, 2
	lb bc, 5, 4
	xor a
	ldh [hGraphicStartTile], a
	predef PlaceGraphic
	ret

.Name:
	db "NAME@"

.ID_No:
	db "ID NO.@"

.Pokemon:
	db "POKéMON@"

.Time:
	db "TIME@"

TrainerCard_PrintLeagueTitle:
	hlcoord 3, 10
	ld de, .LeagueTitle
	call PlaceString
	ret

.LeagueTitle:
	db "MONEGO LEAGUE@"

TrainerCard_PrintPokeball:
	hlcoord 1, 13
	ld a, TRAINER_CARD_TILE_POKEBALL_TOP_LEFT
	ld [hli], a
	ld a, TRAINER_CARD_TILE_POKEBALL_TOP
	ld [hli], a
	ld a, TRAINER_CARD_TILE_POKEBALL_TOP_RIGHT
	ld [hl], a
	hlcoord 1, 14
	ld a, TRAINER_CARD_TILE_POKEBALL_LEFT
	ld [hli], a
	ld a, TRAINER_CARD_TILE_POKEBALL
	ld [hli], a
	ld a, TRAINER_CARD_TILE_POKEBALL_RIGHT
	ld [hl], a
	hlcoord 1, 15
	ld a, TRAINER_CARD_TILE_POKEBALL_BOTTOM_LEFT
	ld [hli], a
	ld a, TRAINER_CARD_TILE_POKEBALL_BOTTOM
	ld [hli], a
	ld a, TRAINER_CARD_TILE_POKEBALL_BOTTOM_RIGHT
	ld [hl], a
	ret

TrainerCard_PrintPokemonCount:
	ld hl, wPokedexCaught
	ld bc, wEndPokedexCaught - wPokedexCaught
	call CountSetBits16
	ld a, c
	ld c, b
	ld b, a
	push bc
	ld hl, sp + 0
	ld d, h
	ld e, l
	hlcoord 10, 6
	lb bc, 2, 3
	call PrintNum
	pop bc
	ret

TrainerCard_PrintStars:
	hlcoord 14, 1
	ld a, [wTrainerCardBadgeTileID]
	ld b, a
	and a
	ret z
	ld a, TRAINER_CARD_TILE_STAR
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

MACRO trainer_card_frame_body
	db TRAINER_CARD_TILE_LEFT_CONNECTOR
	rept SCREEN_WIDTH - 2
		db \1
	endr
	db TRAINER_CARD_TILE_RIGHT_CONNECTOR
ENDM

MACRO trainer_card_top_border_row
	db TRAINER_CARD_TILE_TOP_LEFT
	rept 9
		db TRAINER_CARD_TILE_SPECIAL_TOP
	endr
	rept SCREEN_WIDTH - 11
		db TRAINER_CARD_TILE_TOP_CONNECTOR
	endr
	db TRAINER_CARD_TILE_TOP_RIGHT
ENDM

MACRO trainer_card_badge_row
	db TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT
	db TRAINER_CARD_TILE_BADGE_TOP_LEFT, TRAINER_CARD_TILE_BADGE_TOP_RIGHT
	db TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP, TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP
	db TRAINER_CARD_TILE_BADGE_TOP_LEFT, TRAINER_CARD_TILE_BADGE_TOP_RIGHT
	db TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP, TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP
	db TRAINER_CARD_TILE_BADGE_TOP_LEFT, TRAINER_CARD_TILE_BADGE_TOP_RIGHT
	db TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP, TRAINER_CARD_TILE_BADGE_SEPARATOR_TOP
	db TRAINER_CARD_TILE_BADGE_TOP_LEFT, TRAINER_CARD_TILE_BADGE_TOP_RIGHT
	db TRAINER_CARD_TILE_ACCENT
ENDM

MACRO trainer_card_badge_bottom_row
	db TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT, TRAINER_CARD_TILE_ACCENT
	db TRAINER_CARD_TILE_BADGE_BOTTOM_LEFT, TRAINER_CARD_TILE_BADGE_BOTTOM_RIGHT
	db TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM, TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM
	db TRAINER_CARD_TILE_BADGE_BOTTOM_LEFT, TRAINER_CARD_TILE_BADGE_BOTTOM_RIGHT
	db TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM, TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM
	db TRAINER_CARD_TILE_BADGE_BOTTOM_LEFT, TRAINER_CARD_TILE_BADGE_BOTTOM_RIGHT
	db TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM, TRAINER_CARD_TILE_BADGE_SEPARATOR_BOTTOM
	db TRAINER_CARD_TILE_BADGE_BOTTOM_LEFT, TRAINER_CARD_TILE_BADGE_BOTTOM_RIGHT
	db TRAINER_CARD_TILE_ACCENT
ENDM

TrainerCardFrameTilemap:
	trainer_card_top_border_row
	db TRAINER_CARD_TILE_SPECIAL_LEFT
	rept 8
		db TRAINER_CARD_TILE_SPECIAL_BOTTOM
	endr
	db TRAINER_CARD_TILE_SPECIAL_TRANSITION
	rept SCREEN_WIDTH - 11
		db TRAINER_CARD_TILE_BLANK
	endr
	db TRAINER_CARD_TILE_RIGHT_CONNECTOR
	REPT 7
		trainer_card_frame_body TRAINER_CARD_TILE_BLANK
	ENDR
	db TRAINER_CARD_TILE_BOTTOM_LEFT
	rept SCREEN_WIDTH - 2
		db TRAINER_CARD_TILE_BOTTOM_CONNECTOR
	endr
	db TRAINER_CARD_TILE_BOTTOM_RIGHT
	rept SCREEN_WIDTH
		db TRAINER_CARD_TILE_BOTTOM_LINE
	endr
	rept SCREEN_WIDTH
		db TRAINER_CARD_TILE_ACCENT
	endr
	trainer_card_badge_row
	trainer_card_badge_bottom_row
	rept SCREEN_WIDTH
		db TRAINER_CARD_TILE_ACCENT
	endr
	trainer_card_badge_row
	trainer_card_badge_bottom_row
	rept SCREEN_WIDTH
		db TRAINER_CARD_TILE_ACCENT
	endr
TrainerCardFrameTilemapEnd:
	assert TrainerCardFrameTilemapEnd - TrainerCardFrameTilemap == SCREEN_WIDTH * SCREEN_HEIGHT

TrainerCard_GetStars:
	ld de, EVENT_TRAINER_CARD_STAR_5
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .five
	ld de, EVENT_TRAINER_CARD_STAR_4
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .four
	ld de, EVENT_TRAINER_CARD_STAR_3
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .three
	ld de, EVENT_TRAINER_CARD_STAR_2
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .two
	ld de, EVENT_TRAINER_CARD_STAR_1
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .one
	xor a
	jr .store
.one
	ld a, 1
	jr .store
.two
	ld a, 2
	jr .store
.three
	ld a, 3
	jr .store
.four
	ld a, 4
	jr .store
.five
	ld a, 5
.store
	ld [wTrainerCardBadgeTileID], a
	ret

TrainerCardSetup_PlaceTilemapString:
.loop
	ld a, [de]
	cp -1
	ret z
	ld [hli], a
	inc de
	jr .loop

TrainerCard_Page2_3_AnimateBadges:
	ldh a, [hVBlankCounter]
	and %111
	ret nz
	ld a, [wTrainerCardBadgeFrameCounter]
	inc a
	and %111
	ld [wTrainerCardBadgeFrameCounter], a
	jr TrainerCard_Page2_3_OAMUpdate

TrainerCard_Page2_3_OAMUpdate:
; copy flag array pointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
; get flag array
	ld d, a
	ld a, [de]
	ld c, a
	ld de, wShadowOAMSprite00
	ld b, NUM_JOHTO_BADGES
.loop
	srl c
	push bc
	jr nc, .skip_badge
	push hl
	ld a, [hli] ; y
	ld b, a
	ld a, [hli] ; x
	ld c, a
	ld a, [hli] ; pal
	ld [wTrainerCardBadgeAttributes], a
	ld a, [wTrainerCardBadgeFrameCounter]
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]
	ld [wTrainerCardBadgeTileID], a
	call .PrepOAM
	pop hl
.skip_badge
	ld bc, $b ; 3 + 2 * 4
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrepOAM:
	ld a, [wTrainerCardBadgeTileID]
	and 1 << 7
	jr nz, .xflip
	ld hl, .facing1
	jr .loop2

.xflip
	ld hl, .facing2
.loop2
	ld a, [hli]
	cp -1
	ret z
	add b
	ld [de], a ; y
	inc de

	ld a, [hli]
	add c
	ld [de], a ; x
	inc de

	ld a, [wTrainerCardBadgeTileID]
	and ~(1 << 7)
	add [hl]
	ld [de], a ; tile id
	inc hl
	inc de

	ld a, [wTrainerCardBadgeAttributes]
	add [hl]
	ld [de], a ; attributes
	inc hl
	inc de
	jr .loop2

.facing1
	dbsprite  0,  0,  0,  0, $00, 0
	dbsprite  1,  0,  0,  0, $01, 0
	dbsprite  0,  1,  0,  0, $02, 0
	dbsprite  1,  1,  0,  0, $03, 0
	db -1

.facing2
	dbsprite  0,  0,  0,  0, $01, 0 | X_FLIP
	dbsprite  1,  0,  0,  0, $00, 0 | X_FLIP
	dbsprite  0,  1,  0,  0, $03, 0 | X_FLIP
	dbsprite  1,  1,  0,  0, $02, 0 | X_FLIP
	db -1

TrainerCard_JohtoBadgesOAM:
; Template OAM data for each badge on the trainer card.
; Format:
	; y, x, palette
	; cycle 1: face tile, in1 tile, in2 tile, in3 tile
	; cycle 2: face tile, in1 tile, in2 tile, in3 tile

	dw wJohtoBadges

	; Zephyrbadge
	db $6c, $2c, 0
	db $00, $20, $24, $20 | (1 << 7)
	db $00, $20, $24, $20 | (1 << 7)

	; Hivebadge
	db $6c, $4c, 0
	db $04, $20, $24, $20 | (1 << 7)
	db $04, $20, $24, $20 | (1 << 7)

	; Plainbadge
	db $6c, $6c, 0
	db $08, $20, $24, $20 | (1 << 7)
	db $08, $20, $24, $20 | (1 << 7)

	; Fogbadge
	db $6c, $8c, 0
	db $0c, $20, $24, $20 | (1 << 7)
	db $0c, $20, $24, $20 | (1 << 7)

	; Mineralbadge
	db $8c, $2c, 0
	db $10, $20, $24, $20 | (1 << 7)
	db $10, $20, $24, $20 | (1 << 7)

	; Stormbadge
	db $8c, $4c, 0
	db $14, $20, $24, $20 | (1 << 7)
	db $14, $20, $24, $20 | (1 << 7)

	; Glacierbadge
	db $8c, $6c, 0
	db $18, $20, $24, $20 | (1 << 7)
	db $18, $20, $24, $20 | (1 << 7)

	; Risingbadge
	; X-flips on alternate cycles.
	db $8c, $8c, 0
	db $1c,            $20, $24, $20 | (1 << 7)
	db $1c | (1 << 7), $20, $24, $20 | (1 << 7)

TrainerCardFrameGFX: INCBIN "gfx/trainer_card/card_frame.2bpp"
TrainerCardStarGFX:
	db %00010000, %00000000
	db %00111000, %00000000
	db %11111110, %00000000
	db %01111100, %00000000
	db %00111000, %00000000
	db %01111100, %00000000
	db %01101100, %00000000
	db %11000110, %00000000
TrainerCardDividerGFX: INCBIN "gfx/trainer_card/card_right_corner.2bpp"
BadgeGFX: INCBIN "gfx/trainer_card/badges.2bpp"
