BattleCommand_BeatUp:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_RAGE, [hl]
	ret


BattleCommand_BeatUpFailText:
; BUG: Beat Up may trigger King's Rock even if it failed (see docs/bugs_and_glitches.md)
	ld a, [wBeatUpHitAtLeastOnce]
	and a
	ret nz

	jp PrintButItFailed

