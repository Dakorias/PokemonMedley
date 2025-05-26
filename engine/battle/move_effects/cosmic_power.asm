BattleCommand_CosmicPower:
	ld de, wBattleMonType1
	ld bc, wPlayerStatLevels
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
	ld bc, wEnemyStatLevels

.go

; If no stats can be increased, don't.

; Defence
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise

; SpDefense
	inc bc
	inc bc
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

.raise

; Raise SpAttack, SpDefense, and Speed.

	ld a, $1
	ld [wBattleAnimParam], a
	call AnimateCurrentMove
	call BattleCommand_DefenseUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialDefenseUp
	jp BattleCommand_StatUpMessage


.cantraise

; Can't raise either stat.

	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextbox
