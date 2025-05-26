TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EKANS
	dbbw  5, 10, EKANS
	dbbw  5, 10, EKANS
	db -1
; rare
	dbbw 50, 10, EKANS
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, EKANS
	dbbw  5, 10, EKANS
	dbbw  5, 10, EKANS
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EKANS
	dbbw  5, 10, EKANS
	dbbw  5, 10, EKANS
	db -1
; rare
	dbbw 50, 10, EKANS
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, EKANS
	dbbw  5, 10, EKANS
	dbbw  5, 10, EKANS
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, EKANS
	dbbw 15, 10, VENONAT
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 15, 10, EKANS
	dbbw 10, 10, EKANS
	dbbw  5, 10, BUTTERFREE
	dbbw  5, 10, EKANS
	db -1
; rare
	dbbw 50, 10, EKANS
	dbbw 15, 10, CATERPIE
	dbbw 15, 10, EKANS
	dbbw 10, 10, EKANS
	dbbw  5, 10, METAPOD
	dbbw  5, 10, EKANS
	db -1

TreeMonSet_Rock:
	dbbw 90, 15, KRABBY
	dbbw 10, 15, EKANS
	db -1
