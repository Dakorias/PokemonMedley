; Crystal does not support SGB, so this is unused.

MapGroupRoofSGBPalInds:
; entries correspond to map groups
	table_width 1, MapGroupRoofSGBPalInds
	db PREDEFPAL_ROUTES
	db PREDEFPAL_FUCHSIA
	db PREDEFPAL_CIANWOOD
	db PREDEFPAL_NEW_BARK
	db PREDEFPAL_INDIGO
	db PREDEFPAL_HERALD_COVE
	db PREDEFPAL_CRAGGY_COAST
	db PREDEFPAL_BERRY_FOREST
	db PREDEFPAL_SECOND_ISLAND
	assert_table_length NUM_MAP_GROUPS + 1
