BattleCommand_Encore:
	ldh a, [hBattleTurn]
	and a
	ld b, ENCORE
	ld de, wEnemyEncoreCount
	ld hl, wEnemyMonMoves
	jr z, DoEncoreDisable
	ld de, wPlayerEncoreCount
	ld hl, wBattleMonMoves
	jr DoEncoreDisable

BattleCommand_Disable:
	ldh a, [hBattleTurn]
	and a
	ld b, DISABLE
	ld de, wEnemyDisableCount
	ld hl, wEnemyMonMoves
	jr z, DoEncoreDisable
	ld de, wPlayerDisableCount
	ld hl, wBattleMonMoves

DoEncoreDisable:
	ld a, [de]
	and $f
	jp nz, .failed

	ld a, BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	call GetBattleVar
	and a
	jp z, .failed
	ld [wNamedObjectIndex], a

	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	ld bc, STRUGGLE
	call CompareMove
	jp z, .failed

	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	push bc
	ld bc, DISABLE
	call CompareMove
	pop bc
	jr nz, .check_encore_target
	ld a, [wNamedObjectIndex]
	push bc
	ld bc, DISABLE
	call CompareMove
	pop bc
	jp z, .failed
	jr .find_move

.check_encore_target
	ld a, [wNamedObjectIndex]
	push bc
	ld bc, ENCORE
	call CompareMove
	pop bc
	jr z, .failed

.find_move
	ld a, [wNamedObjectIndex]
	ld b, a
	push de
	ld c, $ff
	ld d, NUM_MOVES
.find_move_loop
	inc c
	ld a, [hli]
	cp b
	jr z, .found_move
	dec d
	jr nz, .find_move_loop
	pop de
	jr .failed

.found_move
	pop de
	dec hl
	push hl
	push bc
	ld bc, wBattleMonPP - wBattleMonMoves
	add hl, bc
	ld a, [hl]
	and PP_MASK
	pop bc
	pop hl
	jr z, .failed

	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	push bc
	ld bc, DISABLE
	call CompareMove
	pop bc
	jr nz, .encore

.disable_duration
	call BattleRandom
	and 7
	jr z, .disable_duration
	inc a
	jr .set_count

.encore
	ld a, 3
	push af
	ld a, BATTLE_VARS_LAST_MOVE_OPP
	call GetBattleVarAddr
	ld a, [wNamedObjectIndex]
	ld [hl], a
	pop af

.set_count
	inc c
	swap c
	or c
	ld [de], a
	call AnimateCurrentMove

	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	ld bc, DISABLE
	call CompareMove
	jr nz, .encore_success
	ld hl, wDisabledMove
	ldh a, [hBattleTurn]
	and a
	jr nz, .got_disabled_move_pointer
	inc hl
.got_disabled_move_pointer
	ld a, BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	call GetBattleVar
	ld [hl], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	ld hl, WasDisabledText
	jp StdBattleTextbox

.encore_success
	ld hl, GotAnEncoreText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
