BattleCommand_KnockOff:
	farcall BattleCommand_KnockOffCore
	ret

PUSHS
SECTION "Knock Off Effect", ROMX

BattleCommand_KnockOffCore:
	ld a, [wAttackMissed]
	and a
	ret nz

	farcall CheckSubstituteOpp
	ret nz

	farcall GetOpponentItem
	ld a, [hl]
	and a
	ret z
	ld a, MON_ITEM
	call OpponentPartyAttr
	ld d, h
	ld e, l
	ldh a, [hBattleTurn]
	and a
	jr z, .save_enemy_item
	farcall SavePlayerBattleItem
	jr .clear_item
.save_enemy_item
	farcall SaveEnemyBattleItem
.clear_item
	farcall GetOpponentItem
	xor a
	ld [hl], a
	ld hl, KnockOffText
	farcall StdBattleTextbox
	ld a, MON_ITEM
	farcall OpponentPartyAttr
	ret z
	xor a
	ld [hl], a
	ret

POPS
