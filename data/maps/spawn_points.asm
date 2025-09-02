MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4

	spawn HERALD_PORT,            		9,  7
	spawn HERALD_COVE,					19, 18
	spawn CRAGGY_COAST,					7, 16
	spawn RUGGED_CLIFF, 				11,  4
	spawn TREELINE_PORT,				21,  8
	spawn MONTANE_TOWN, 				9, 24
	spawn NONE,                         6,  2

	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
