MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                wPokecenter2FSceneID
	scene_var TRADE_CENTER,                 wTradeCenterSceneID
	scene_var COLOSSEUM,                    wColosseumSceneID
	scene_var TIME_CAPSULE,                 wTimeCapsuleSceneID

	scene_var BATTLE_TOWER_1F,              wBattleTower1FSceneID
	scene_var BATTLE_TOWER_ELEVATOR,        wBattleTowerElevatorSceneID
	scene_var BATTLE_TOWER_HALLWAY,         wBattleTowerHallwaySceneID
	scene_var BATTLE_TOWER_BATTLE_ROOM,     wBattleTowerBattleRoomSceneID

	scene_var PLAYERS_HOUSE_1F,             wPlayersHouse1FSceneID

	scene_var INDIGO_PLATEAU_POKECENTER_1F, wIndigoPlateauPokecenter1FSceneID
	scene_var WILLS_ROOM,                   wWillsRoomSceneID
	scene_var KOGAS_ROOM,                   wKogasRoomSceneID
	scene_var BRUNOS_ROOM,                  wBrunosRoomSceneID
	scene_var KARENS_ROOM,                  wKarensRoomSceneID
	scene_var LANCES_ROOM,                  wLancesRoomSceneID
	scene_var HALL_OF_FAME,                 wHallOfFameSceneID

	scene_var HERALD_PORT,									wHeraldPortSceneID
	scene_var HERALD_COVE,									wHeraldCoveSceneID
	scene_var HERALD_LAB, 					        wHeraldLabSceneID
	scene_var HERALD_ROUTE, 								wHeraldRouteSceneID
	scene_var CRAGGY_BEACH,									wBeachRouteSceneID
	scene_var FIRST_GYM_BEACH,							wFirstGymBeachSceneID
	scene_var MOUNTAIN_GYM,									wMountainGymSceneID
	scene_var MOUNTAIN_GYM_BREAK,									wMountainGymBreakSceneID
	scene_var MOUNTAIN_GYM_ARENA,									wMountainGymArenaSceneID

	db -1 ; end
