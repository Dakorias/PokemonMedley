DEF TIME_GROUP EQU 0 ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	dbbw  40 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, KRABBY
	dbbw 100 percent,     10, CORPHISH
.Shore_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, KRABBY
	dbbw  90 percent + 1, 20, KRABBY
	dbbw 100 percent,     0, TIME_GROUP
.Shore_Super:
	dbbw  40 percent,     40, KRABBY
	dbbw  70 percent,     1, TIME_GROUP
	dbbw  90 percent + 1, 40, KRABBY
	dbbw 100 percent,     40, KINGLER

.Ocean_Old:
	dbbw  40 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, KRABBY
	dbbw 100 percent,     10, CORPHISH
.Ocean_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, WOOPER
	dbbw  90 percent + 1, 20, CHINCHOU
	dbbw 100 percent,     2, TIME_GROUP
.Ocean_Super:
	dbbw  40 percent,     40, CHINCHOU
	dbbw  70 percent,     3, TIME_GROUP
	dbbw  90 percent + 1, 40, WOOPER
	dbbw 100 percent,     40, LANTURN

.Lake_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, WOOPER
.Lake_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, WOOPER
	dbbw  90 percent + 1, 20, WOOPER
	dbbw 100 percent,     4, TIME_GROUP
.Lake_Super:
	dbbw  40 percent,     40, WOOPER
	dbbw  70 percent,     5, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, WOOPER

.Pond_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, WOOPER
.Pond_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, WOOPER
	dbbw  90 percent + 1, 20, WOOPER
	dbbw 100 percent,     6, TIME_GROUP
.Pond_Super:
	dbbw  40 percent,     40, WOOPER
	dbbw  70 percent,     7, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, WOOPER

.Dratini_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Dratini_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, MAGIKARP
	dbbw  90 percent + 1, 20, MAGIKARP
	dbbw 100 percent,     8, TIME_GROUP
.Dratini_Super:
	dbbw  40 percent,     40, MAGIKARP
	dbbw  70 percent,     9, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, DRAGONAIR

.Gyarados_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Gyarados_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, MAGIKARP
	dbbw  90 percent + 1, 20, MAGIKARP
	dbbw 100 percent,     14, TIME_GROUP
.Gyarados_Super:
	dbbw  40 percent,     40, MAGIKARP
	dbbw  70 percent,     15, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, MAGIKARP

.Dratini_2_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Dratini_2_Good:
	dbbw  35 percent,     10, MAGIKARP
	dbbw  70 percent,     10, MAGIKARP
	dbbw  90 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     16, TIME_GROUP
.Dratini_2_Super:
	dbbw  40 percent,     10, MAGIKARP
	dbbw  70 percent,     17, TIME_GROUP
	dbbw  90 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, DRAGONAIR

.WhirlIslands_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, KRABBY
.WhirlIslands_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, KRABBY
	dbbw  90 percent + 1, 20, KRABBY
	dbbw 100 percent,     18, TIME_GROUP
.WhirlIslands_Super:
	dbbw  40 percent,     40, KRABBY
	dbbw  70 percent,     19, TIME_GROUP
	dbbw  90 percent + 1, 40, KINGLER
	dbbw 100 percent,     40, SEADRA

TimeFishGroups:
	;     day             nite
	dbwbw 20, CORSOLA,    20, STARYU     ; 0
	dbwbw 40, CORSOLA,    40, STARYU     ; 1
	dbwbw 20, WOOPER,   20, WOOPER   ; 2
	dbwbw 40, WOOPER,   40, WOOPER   ; 3
	dbwbw 20, WOOPER,    20, WOOPER    ; 4
	dbwbw 40, WOOPER,    40, WOOPER    ; 5
	dbwbw 20, WOOPER,    20, WOOPER    ; 6
	dbwbw 40, WOOPER,    40, WOOPER    ; 7
	dbwbw 20, DRATINI,    20, DRATINI    ; 8
	dbwbw 40, DRATINI,    40, DRATINI    ; 9
	dbwbw 20, WOOPER,   20, WOOPER   ; 10
	dbwbw 40, WOOPER,   40, WOOPER   ; 11
	dbwbw 20, WOOPER,   20, WOOPER   ; 12
	dbwbw 40, WOOPER,   40, WOOPER   ; 13
	dbwbw 20, GYARADOS,   20, GYARADOS   ; 14
	dbwbw 40, GYARADOS,   40, GYARADOS   ; 15
	dbwbw 10, DRATINI,    10, DRATINI    ; 16
	dbwbw 10, DRATINI,    10, DRATINI    ; 17
	dbwbw 20, HORSEA,     20, HORSEA     ; 18
	dbwbw 40, HORSEA,     40, HORSEA     ; 19
	dbwbw 20, WOOPER,  20, WOOPER  ; 20
	dbwbw 40, WOOPER,  40, WOOPER  ; 21
