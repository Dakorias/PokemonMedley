BattleCommand_Thief:
	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

; The player needs to be able to steal an item.

	call .playeritem
	ld a, [hl]
	and a
	ret nz

; The enemy needs to have an item to steal.

	call .enemyitem
	ld a, [hl]
	and a
	ret z

; Can't steal mail.

	ld [wNamedObjectIndex], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wEffectFailed]
	and a
	ret nz

	ld a, [wLinkMode]
	and a
	jr z, .stealenemyitem

	ld a, [wBattleMode]
	dec a
	ret z

.stealenemyitem
	call .enemyitem
	farcall SaveEnemyBattleItem
	call .enemyitem
	xor a
	ld [hl], a
	ld [de], a

	call .playeritem
	farcall SavePlayerBattleItem
	call .playeritem
	ld a, [wNamedObjectIndex]
	ld [hl], a
	ld [de], a
	jr .stole

.enemy

; The enemy can't already have an item.

	call .enemyitem
	ld a, [hl]
	and a
	ret nz

; The player must have an item to steal.

	call .playeritem
	ld a, [hl]
	and a
	ret z

; Can't steal mail!

	ld [wNamedObjectIndex], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wEffectFailed]
	and a
	ret nz

; If the enemy steals your item,
; it's gone for good if you don't get it back.

	call .playeritem
	farcall SavePlayerBattleItem
	call .playeritem
	xor a
	ld [hl], a
	ld [de], a

	call .enemyitem
	farcall SaveEnemyBattleItem
	call .enemyitem
	ld a, [wNamedObjectIndex]
	ld [hl], a
	ld [de], a

.stole
	call GetItemName
	ld hl, StoleText
	jp StdBattleTextbox

.playeritem
	ld a, MON_ITEM
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	ret

.enemyitem
	ld a, MON_ITEM
	call OTPartyAttr
	ld d, h
	ld e, l
	ld hl, wEnemyMonItem
	ret

PUSHS
SECTION "Battle Item Ledger", ROMX

SavePlayerBattleItem:
	ld a, [wCurBattleMon]
	ld c, a
	ld b, 0
	ld hl, wPlayerBattleItemRestoreFlags
	add hl, bc
	ld a, [hl]
	and a
	ret nz
	inc [hl]
	ld a, [de]
	push af
	ld hl, wPlayerBattleItemBackup
	add hl, bc
	pop af
	ld [hl], a
	ret

SaveEnemyBattleItem:
	ld a, [wBattleMode]
	cp TRAINER_BATTLE
	ret nz
	ld a, [wCurOTMon]
	ld c, a
	ld b, 0
	ld hl, wEnemyBattleItemRestoreFlags
	add hl, bc
	ld a, [hl]
	and a
	ret nz
	inc [hl]
	ld a, [de]
	push af
	ld hl, wEnemyBattleItemBackup
	add hl, bc
	pop af
	ld [hl], a
	ret

RestoreBattleItems:
	ld c, 0
.restore_player
	ld b, 0
	ld hl, wPlayerBattleItemRestoreFlags
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_player
	push bc
	ld hl, wPartyMons
	ld a, c
	farcall GetPartyLocation
	ld de, MON_ITEM
	add hl, de
	pop bc
	push hl
	ld b, 0
	ld hl, wPlayerBattleItemBackup
	add hl, bc
	ld a, [hl]
	pop hl
	ld [hl], a
.next_player
	inc c
	ld a, c
	cp PARTY_LENGTH
	jr c, .restore_player
	ld a, [wBattleMode]
	cp TRAINER_BATTLE
	ret nz
	ld c, 0
.restore_enemy
	ld b, 0
	ld hl, wEnemyBattleItemRestoreFlags
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_enemy
	push bc
	ld hl, wOTPartyMon1Species
	ld a, c
	farcall GetPartyLocation
	ld de, MON_ITEM
	add hl, de
	pop bc
	push hl
	ld b, 0
	ld hl, wEnemyBattleItemBackup
	add hl, bc
	ld a, [hl]
	pop hl
	ld [hl], a
.next_enemy
	inc c
	ld a, c
	cp PARTY_LENGTH
	jr c, .restore_enemy
	ret

POPS
