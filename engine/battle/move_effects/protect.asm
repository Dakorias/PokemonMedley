BattleCommand_Protect:
	farcall BattleCommand_ProtectCore
	ret

PUSHS
SECTION "Protect Move Effects", ROMX

BattleCommand_ProtectCore:
	call ProtectChance
	ret c

	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	set SUBSTATUS_PROTECT, [hl]
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	res SUBSTATUS_BANEFUL_BUNKER, [hl]
	res SUBSTATUS_SPIKY_SHIELD, [hl]
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_BANEFULBUNKR
	jr z, .baneful_bunker
	cp EFFECT_SPIKY_SHIELD
	jr nz, .animate
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_SPIKY_SHIELD, [hl]
	jr .animate
.baneful_bunker
	ld a, BATTLE_VARS_SUBSTATUS2
	call GetBattleVarAddr
	set SUBSTATUS_BANEFUL_BUNKER, [hl]
.animate

	farcall AnimateCurrentMove

	ld hl, ProtectedItselfText
	call StdBattleTextbox

ProtectChance:
	ld de, wPlayerProtectCount
	ldh a, [hBattleTurn]
	and a
	jr z, .got_count
	ld de, wEnemyProtectCount
.got_count

	farcall CheckOpponentWentFirst
	jr nz, .failed

; Can't have a substitute.

	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVar
	bit SUBSTATUS_SUBSTITUTE, a
	jr nz, .failed

; Halve the chance of a successful Protect for each consecutive use.

	ld b, $ff
	ld a, [de]
	ld c, a
.loop
	ld a, c
	and a
	jr z, .done
	dec c

	srl b
	ld a, b
	and a
	jr nz, .loop
	jr .failed
.done

.rand
	farcall BattleRandom
	and a
	jr z, .rand

	dec a
	cp b
	jr nc, .failed

; Another consecutive Protect use.

	ld a, [de]
	inc a
	ld [de], a

	and a
	ret

.failed
	xor a
	ld [de], a
	farcall AnimateFailedMove
	farcall PrintButItFailed
	scf
	ret

ApplyProtectContactRetaliation:
	farcall CheckContactMove
	ret c
	ld a, BATTLE_VARS_SUBSTATUS2_OPP
	call GetBattleVar
	bit SUBSTATUS_SPIKY_SHIELD, a
	jr nz, .spiky_shield
	bit SUBSTATUS_BANEFUL_BUNKER, a
	ret z
	farcall GetUserItem
	ld a, b
	cp HELD_PREVENT_POISON
	ret z
	ldh a, [hBattleTurn]
	push af
	farcall SwitchTurnCore
	farcall SafeCheckSafeguard
	jr z, .no_safeguard
	pop af
	ldh [hBattleTurn], a
	ret
.no_safeguard
	pop af
	ldh [hBattleTurn], a
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	ld a, [hl]
	and ALL_STATUS
	ret nz
	ld de, wBattleMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .got_user_types
	ld de, wEnemyMonType1
.got_user_types
	ld a, [de]
	cp POISON
	ret z
	cp STEEL
	ret z
	inc de
	ld a, [de]
	cp POISON
	ret z
	cp STEEL
	ret z
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	set PSN, [hl]
	farcall UpdateUserInParty
	ld hl, WasPoisonedText
	call StdBattleTextbox
	farcall RefreshBattleHuds
	ret
.spiky_shield
	farcall GetEighthMaxHP
	farcall SubtractHPFromUser
	ret

POPS
