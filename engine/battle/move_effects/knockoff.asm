BattleCommand_KnockOff:
	ld a, [wAttackMissed]
	and a
	ret nz

	call CheckSubstituteOpp
	ret nz

	call GetOpponentItem
	xor a
	ld [hl], a
	call GetItemName
	ld hl, KnockOffText
	call StdBattleTextbox
	ld a, MON_ITEM
	call OpponentPartyAttr
	ret z
	xor a
	ld [hl], a
	ret
