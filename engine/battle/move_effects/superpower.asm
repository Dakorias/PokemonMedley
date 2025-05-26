BattleCommand_SuperPower:
	ld a, [wAttackMissed]
	and a
	ret nz

	ld a, ATTACK
	call LowerStat
	call BattleCommand_SwitchTurn
	call BattleCommand_StatDownMessage
	call ResetMiss
	ld a, DEFENSE
	call LowerStat
	call BattleCommand_SwitchTurn
	call BattleCommand_StatDownMessage
	call ResetMiss
	jp BattleCommand_SwitchTurn
