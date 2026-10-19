BattleCommand_Roost:
; Save the active types so they can be restored after this turn.
	farcall CheckFullHP
	ret z

	ldh a, [hBattleTurn]
	and a
	ld hl, wBattleMonType1
	ld de, wPlayerRoostType1
	jr z, .got_types
	ld hl, wEnemyMonType1
	ld de, wEnemyRoostType1
.got_types
	ld a, [hli]
	ld b, a
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	ld c, a
	ld a, b
	cp FLYING
	jr z, .primary_flying
	ld a, c
	cp FLYING
	ret nz
	xor a
	ld [hl], a
	jr .set_flag
.primary_flying
	ld a, c
	cp FLYING
	jr z, .pure_flying
	ld a, c
	ld [hli], a
	xor a
	ld [hl], a
	jr .set_flag
.pure_flying
	ld a, NORMAL
	ld [hli], a
	ld [hl], a
.set_flag
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_ROOST, [hl]
	ret
