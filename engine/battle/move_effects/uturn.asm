BattleCommand_Uturn:
	ld a, [wAttackMissed]
	and a
	ret nz
	ldh a, [hBattleTurn]
	and a
	jp nz, .EnemyUturn

; Need something to switch to
	call CheckAnyOtherAlivePartyMons
	jp z, FailedUturn

	call UpdateBattleMonInParty

	ld c, 50
	call DelayFrames

; Transition into switchmon menu
	call LoadStandardMenuHeader
	farcall SetUpBattlePartyMenu
	farcall ForcePickSwitchMonInBattle

; Return to battle scene
	call ClearPalettes
	farcall _LoadBattleFontsHPBar
	call CloseWindow
	call ClearSprites
	hlcoord 1, 0
	lb bc, 4, 10
	call ClearBox
	ld b, SCGB_BATTLE_COLORS
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	ret

	.EnemyUturn
	; Wildmons don't have anything to switch to
		ld a, [wBattleMode]
		dec a ; WILDMON
		jp z, FailedUturn

		call CheckAnyOtherAliveEnemyMons
		jp z, FailedUturn

		call UpdateEnemyMonInParty

	; Mobile link battles handle entrances differently
		farcall CheckMobileBattleError
		jp c, EndMoveEffect

	; Passed enemy PartyMon entrance
		xor a
		ld [wEnemySwitchMonIndex], a
		ld hl, EnemySwitch_SetMode
		call CallBattleCore
		ld hl, ResetBattleParticipants
		call CallBattleCore
		ld a, TRUE
		ld hl, SpikesDamage
		call CallBattleCore
		ret

FailedUturn:
	ret z
