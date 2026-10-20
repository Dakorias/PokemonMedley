TeachyTv:
	; Loads and prints the "MoveReminderWhichMonText" text.
	ld hl, MoveReminderWhichMonText
	call PrintText

	.choose_pokemon
	; Loads the party menu to select a Pokémon. Relative jump
	; to the shutdown text if the player leaves the party menu.
	farcall SelectMonFromPartyNoMapReturn
	push af
	farcall FadeOutToWhite
	pop af
	jr c, .cancel

	; Checks if the current selection is an egg. Relative jump to
	; the ".is_an_egg" local jump if so and continue if not.
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .is_an_egg

	; Checks if the current selection is not a Pokémon. Relative jump to
	; the ".not_a_pokemon" local jump if so and continue if not.
	; Prevents continuing if glitched Pokémon are selected.
	call IsAPokemon
	jr c, .not_a_pokemon

	; Checks for any moves that can be learned. Relative
	; jump to the ".no_moves_to_learn" local jump if
	; there are none and continue if there are.
	call GetRemindableMoves
	jr z, .no_moves_to_learn

	; Generates the Move Reminder's menu. Relative jump to the
	; party menu again if the player leaves without selecting.
	call ChooseMoveToLearn
	jr c, .choose_pokemon

	; If the player selects a move, load the move's name and copy
	; it for later. This is used for displaying the move's
	; name in some of the text boxes while learning a move.
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1

; Begins the process of learning a move.
	; The "LearnMove" label sets the value of the "b" register to "1"
	; when a move is successfully learned and sets it to "0" if
	; cancelled at any point in the move learning process.
	predef LearnMove

	; Relative jump to the ".move_learned" local jump if
	; a move has been learned and continue if not.
	ld a, b
	dec a
	jr z, .move_learned
	jr .choose_pokemon

; Loads and prints the "MoveReminderCancelText" text.
; This ends the dialogue.
.cancel
	ld a, 2
	ld [wItemEffectSucceeded], a
	ld hl, MoveReminderCancelText
	jp PrintText

; Loads and prints the "MoveReminderEggText" text.
; This ends the dialogue.
.is_an_egg
	ld hl, MoveReminderEggText
	call PrintText
	jr .choose_pokemon

; Loads and prints the "MoveReminderNotaMonText" text.
; This ends the dialogue.
.not_a_pokemon
	ld hl, MoveReminderNotaMonText
	call PrintText
	jr .choose_pokemon

; Loads and prints the "MoveReminderNoMovesText" text.
; This ends the dialogue.
.no_moves_to_learn
	ld hl, MoveReminderNoMovesText
	call PrintText
	jr .choose_pokemon

; Exits the menu and goes back to the map with a
; speech text box open and then loads and prints
; the "MoveReminderMoveLearnedText" text.
; This ends the dialogue.
.move_learned
	ld hl, MoveReminderMoveLearnedText
	call PrintText
	jr .choose_pokemon

; Checks for moves that can be learned and returns
; a zero flag if there are none.
GetRemindableMoves:

	; Store move records in dedicated WRAM instead of shared scratch space.
	ld hl, wTeachyTvMoveList
	xor a
	ld [hli], a
	ld [hl], $ff

	; Retrieves and stores the species of
	; the currently selected Pokémon.
	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartySpecies], a

	; Retrieves and stores the level of the
	; currently selected Pokémon.
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a

	; The "b" register will contain the number of
	; moves in the list and the records begin after its count byte.
	; Retrieves the currently selected Pokémon's evolution
	; and attack address from the "EvosAttacksPointers"
	; table that is located in another bank. This is the
	; list of evolutions and learnset of every Pokémon.
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ld b, a
	ldh [hTemp], a
	call SkipEvolutions
	ld b, 0
	ld de, wTeachyTvMoveList + 1
	push bc

; Loops through the move list until it reaches
; the end of the "EvosAttacksPointers" table
; for the currently selected Pokémon. This is
; "db 0 ; no more level-up moves".

; It then compares the currently selected Pokémon's
; level with the level the move is learned at and
; if the Pokémon's level is higher, it will
; attempt to add the move to the move list.
.loop_moves
	push de
	call GetNextEvoAttackByte
	and a
	jr nz, .got_move_level
	pop de
	jr .done
.got_move_level
	ld c, a
	ld a, [wCurPartyLevel]
	cp c
	push af
	call GetNextEvoAttackByte
	ld e, a
	call GetNextEvoAttackByte
	ld d, a
	pop af
	jr nc, .check_move
	pop de
	jr .loop_moves
.check_move
	push hl
	push bc
	push de
	ld h, d
	ld l, e
	call GetMoveIDFromIndex
	pop de
	pop bc
	pop hl

	; Checks if the move is already in the
	; move list or already learned by the
	; Pokémon. If both are false, then the
	; move will be added to the move list.
	ld c, a
	call CheckAlreadyInList
	jr c, .skip_move
	call CheckPokemonAlreadyKnowsMove
	jr c, .skip_move
	ld a, b
	cp 239
	jr nc, .skip_move
	pop de
	ld a, c
	ld [de], a
	inc de
	ld a, $ff
	ld [de], a
	pop bc
	inc b
	push bc
	jr .loop_moves
.skip_move
	pop de
	jr .loop_moves

; Adds all the possible moves the currently
; selected Pokémon can learn into the dedicated move list.
; Which is the move list.
.done
	pop bc
	ld a, b
	ld [wTeachyTvMoveList], a
	and a
	ret

; Checks if there is a move already placed
; in the move list. This prevents
; duplicate entries in the move list.
CheckAlreadyInList:
	push hl
	ld hl, wTeachyTvMoveList + 1
.loop
	ld a, [hli]
	cp -1
	jr z, .nope
	cp c
	jr z, .found
	jr .loop
.found
	pop hl
	scf
	ret
.nope
	pop hl
	and a
	ret

; Checks if a Pokémon already knows a move. This
; prevents the player teaching the currently
; selected Pokémon a move it already knows.
CheckPokemonAlreadyKnowsMove:
	push hl
	push bc
	ld a, MON_MOVES
	call GetPartyParamLocation
	ld b, 4
.loop
	ld a, [hli]
	cp c
	jr z, .yes
	dec b
	jr nz, .loop
	pop bc
	pop hl
	and a
	ret
.yes
	pop bc
	pop hl
	scf
	ret

; Creates a scrolling menu and sets up the menu gui.
; The number of items is stored in "wd002"
; The list of items is stored in "wd002 + 1"
ChooseMoveToLearn:
	ld hl, .MenuHeader
	call CopyMenuHeader
	xor a
	ld [wMenuCursorPosition], a
	ld [wMenuScrollPosition], a

	; This creates a border around the move list.
	; "hlcoord" configures the position.
	; "lb bc" configures the size.
	hlcoord 0,  1
	lb bc, 9, 18
	call TextboxBorder

	; This replaces the tile using the identifier
	; of "$6e" with the fourteenth tile of the
	; "FontBattleExtra gfx" font. Also, only 1
	; tile will be loaded as loading the entire
	; "FontBattleExtra gfx" font will overwrite
	; the "UP" arrow in the menu.
	ld de, FontBattleExtra + 14 tiles
	ld hl, vTiles2 tile $6e
	lb bc, BANK(FontBattleExtra), 1
	call Get2bppViaHDMA

	; This is used for displaying the symbol that
	; appears before the Pokémon's level. Without
	; it, an incorrect symbol will appear.
	farcall LoadStatsScreenPageTilesGFX

	; This displays the Pokémon's species
	; name (not nickname) at the
	; coordinates defined at "hlcoord".
	; In this case that is the
	; top left of the screen.
	xor a
	ld [wMonType], a
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	hlcoord  5, 1
	call PlaceString

	; This displays the Pokémon's level
	; right after the Pokémon's name.
	push bc
	farcall CopyMonToTempMon
	pop hl
	call PrintLevel

	; Creates the menu, sets the "B_BUTTON"
	; to cancel and sets up each entry
	; to behave like a tm/hm.
	call ScrollingMenu
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .carry
	ld a, [wMenuSelection]
	ld [wPutativeTMHMMove], a
	and a
	ret

; Sets the carry flag and returns from
; this subroutine. Setting the carry
; flag being set will cause the
; menu to exit after returning.
.carry
	scf
	ret

; The menu header defines the menu's position and
; what will be included. The last two values
; of "menu_coords" will determine where the
; vertical scroll arrows will be located.
.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 1, 2, SCREEN_WIDTH - 2, 10
	dw .MenuData
	db 1

; This sets up the menu's contents, including the amount
; of entries displayed before scrolling is required.

; Vertical scroll arrows and the move's
; details will be displayed.

; This menu is populated with an item and three functions.
	; The item list is stored in wTeachyTvMoveList.
; Function 1 is the ".print_move_name" local jump.
; Function 2 is the ".print_pp" local jump.
; Function 3 is the ".print_move_details" local jump.
.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS | SCROLLINGMENU_ENABLE_FUNCTION3
	db 4, SCREEN_WIDTH + 2
	db SCROLLINGMENU_ITEMS_NORMAL
	dbw 0, wTeachyTvMoveList
	dba .print_move_name
	dba .print_pp
	dba .print_move_details

; This prints the move's name in the menu.
; This is purely visual as the actual
	; entry is stored in wTeachyTvMoveList.
.print_move_name
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetMoveName
	pop hl
	jp PlaceString

; This prints the move's pp offset by one
; line with some spacing from the left.
.print_pp
	ld hl, wStringBuffer1
	ld bc, wStringBuffer2 - wStringBuffer1
	ld a, " "
	call ByteFill
	ld a, [wMenuSelection]
	inc a
	ret z
	push de
	ld a, [wMenuSelection]
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	ld [wBuffer1], a
	ld hl, wStringBuffer1 + 9
	ld de, wBuffer1
	lb bc, 1, 2
	call PrintNum
	ld hl, wStringBuffer1 + 11
	ld [hl], "/"
	ld hl, wStringBuffer1 + 12
	call PrintNum

	ld hl, wStringBuffer1 + 14
	ld [hl], "@"

	pop hl
	ld de, wStringBuffer1
	call PlaceString

	; This prints the pp gfx before the move's pp.
	ld bc, 6
	add hl, bc
	ld a, $3e
	ld [hli], a
	ld [hl], a
	ret

; This adds a text box border line to the description
; box that replaces a leftover piece of the notch
; that remains when the cancel option is highlighted.
.cancel_border_fix
	hlcoord 0, 10
	ld [hl], "│"
	inc hl
	ret

; This begins the printing of all of the move's details,
; including the border around the description.
.print_move_details

	; This creates a border around the description.
	hlcoord 0, 11
	lb bc, 5, 18
	call TextboxBorder

	; This code will relative jump to the
	; ".cancel_border_fix" local jump if
	; the cancel entry is highlighted.
	ld a, [wMenuSelection]
	cp -1
	jr z, .cancel_border_fix
; This code falls through into the ".print_move_desc" local jump.

; This prints the moves description.
.print_move_desc
	push de
	ld a, [wMenuSelection]
	inc a
	pop de
	ret z
	dec a
	ld [wCurSpecies], a
	hlcoord 1, 14
	predef PrintMoveDescription
; This code falls through into the ".print_move_type" local jump.

; This prints the move's type.
.print_move_type
	ld a, [wCurSpecies]
	ld b, a
	hlcoord 2, 12
	predef PrintMoveType
; This code falls through into the ".print_move_stat_strings" local jump.

; This prints the notch in the description text box border
; and the "TYPE/" and "ATK/" strings.
.print_move_stat_strings
	hlcoord 0, 10
	ld de, MoveTypeTopString
	call PlaceString
	hlcoord 0, 11
	ld de, MoveTypeString
	call PlaceString
	hlcoord 12, 12
	ld de, MoveAttackString
	call PlaceString
; This code falls through into the ".print_move_attack" local jump.

; This prints the move's attack number.
.print_move_attack
	ld a, [wMenuSelection]
	ld l, a
	ld a, MOVE_POWER
	call GetMoveAttribute
	cp 2
	jr c, .print_move_null_attack
	ld [wBuffer1], a
	ld de, wBuffer1
	lb bc, 1, 3
	hlcoord 16, 12
	jp PrintNum

; This prints "---" if the move has an attack of "0".
; This means that the move does not initially cause
; damage or is a one hit knockout move.
.print_move_null_attack
	hlcoord 16, 12
	ld de, MoveNullValueString
	ld bc, 3
	jp PlaceString

; This is a notch that will be placed on
; the top left of the description box.
MoveTypeTopString:
	db "┌─────┐@"

; This is the string that displays
; above the move's type.
MoveTypeString:
	db "│TYPE/└@"

; This is the string that precedes
; the move's attack number.
MoveAttackString:
	db "ATK/@"

; This displays when a move has
; a metric with a null value.
MoveNullValueString:
	db "---@"

; This is the text that displays just
; before the party menu opens.
MoveReminderWhichMonText:
	text "<PLAYER> turned on"
	line "the TEACHY TV."

	para "Which #MON"
	line "should remember"
	cont "a move?"
	prompt

; This is the text that displays after
; a Pokémon has been selected.
MoveReminderWhichMoveText:
	text "Which move should"
	line "it remember, then?"
	prompt

; This is the text that displays just before
; the player ends the dialogue
; with the move reminder.
MoveReminderCancelText:
	text "<PLAYER> turned off"
	line "the TEACHY TV."
	done

; This is the text that displays if the player
; selects an egg in the party menu.
MoveReminderEggText:
	text "EGGs don't learn"
	line "any moves!"
	done

; This is the text that displays if the player
; selects an entry in the party menu that
; is neither a Pokémon or an egg.
MoveReminderNotaMonText:
	text "Only #MON can"
	line "learn moves."
	done

; This is the text that displays if the player
; selects a Pokémon in the party menu that
; has no moves that can be learned.
MoveReminderNoMovesText:
	text "There are no moves"
	line "for this #MON"
	cont "to learn."
	done

; This is the text that displays after a
; Pokémon successfully learns a move.
MoveReminderMoveLearnedText:
	text "Done! Your #MON"
	line "remembered the"
	cont "move."
	done
