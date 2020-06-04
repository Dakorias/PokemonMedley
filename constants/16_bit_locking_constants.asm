; Pokémon locked ID table constants
	const_def
	const LOCKED_MON_ID_MAP_1
	const LOCKED_MON_ID_MAP_2
	const LOCKED_MON_ID_MAP_3
	const LOCKED_MON_ID_MAP_4
	const LOCKED_MON_ID_MAP_5
	const LOCKED_MON_ID_MAP_6
	const LOCKED_MON_ID_MAP_7
	const LOCKED_MON_ID_MAP_8
DEF NUM_MAP_LOCKED_MON_IDS EQU const_value + -LOCKED_MON_ID_MAP_1
	const LOCKED_MON_ID_DEX_SELECTED
	const LOCKED_MON_ID_TRADE_SEND
	const LOCKED_MON_ID_TRADE_RECEIVE
	const LOCKED_MON_ID_BATTLE_TOWER_1
	const LOCKED_MON_ID_BATTLE_TOWER_2
	const LOCKED_MON_ID_BATTLE_TOWER_3
	const LOCKED_MON_ID_CURRENT_MENU

if const_value > MON_TABLE_LOCKED_ENTRIES
	fail "Too many locked Pokémon IDs"
endc

; Move locked ID table constants
	const_def

if const_value > MOVE_TABLE_LOCKED_ENTRIES
	fail "Too many locked move IDs"
endc
