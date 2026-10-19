BattleCommand_Defog:
	xor a
	ld [wBattleWeather], a
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, WeatherStoppedText
	jp StdBattleTextbox
