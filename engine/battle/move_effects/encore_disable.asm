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
	jr nz, .failed

	ld a, BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	call GetBattleVar
	and a
	jr z, .failed
	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	ld bc, STRUGGLE
	call CompareMove
	jr z, .failed

	; Don't allow encoring Encore
	cp b
	jr nz, .move_ok
	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	ld bc, ENCORE
	call CompareMove
	ret z
	jr z, .failed
.move_ok

	push hl
	push de
	push bc
	push af

	ld [wNamedObjectIndex], a
	call GetMoveName

	; Can't Disable/Encore moves with no PP left
	push bc
	ld bc, wBattleMonPP - wBattleMonMoves
	add hl, bc
	pop bc
	ld a, [hl]
	and $3f
	jr z, .failed

	; Get move effect text and duration
	ld a, b
	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	ld bc, DISABLE
	call CompareMove
	ret z
	ld hl, WasDisabledText
	ld a, 4
	jr z, .got_text_and_duration
	ld hl, GotAnEncoreText
	dec a

	; Force opponent to use encored move in case it moves second
	push hl
	push af
	ld a, BATTLE_VARS_LAST_MOVE_OPP
	call GetBattleVarAddr
	ld a, BATTLE_VARS_LAST_COUNTER_MOVE_OPP
	call GetBattleVar
	ld [hl], a
	pop af
	pop hl
.got_text_and_duration
	inc c
	swap c
	or c
	ld [de], a
	call AnimateCurrentMove
	call StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
