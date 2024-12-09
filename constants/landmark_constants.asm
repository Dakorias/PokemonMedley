; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const LANDMARK_SPECIAL           ; 00
; Johto landmarks
	const LANDMARK_HERALD_COVE		 ; 60
	const LANDMARK_HERALD_ROUTE		 ; 61
	const LANDMARK_HERALD_BAY
	const LANDMARK_CRAGGY_BEACH		 ; 62
	const LANDMARK_CRAGGY_COAST		 ; 63
	const LANDMARK_SCENIC_BLUFF  	 ; 64
	const LANDMARK_MT_MONEGO    	 ; 65
	const LANDMARK_BERRY_FOREST    ; 66
	const LANDMARK_RUGGED_CLIFF
	const LANDMARK_TREELINE_PORT
	const LANDMARK_FOREST_PARK
	const LANDMARK_NORTH_FOREST_PATH
	const LANDMARK_WEST_FOREST_PATH
	const LANDMARK_MONTANE_TOWN

DEF KANTO_LANDMARK EQU const_value
	const LANDMARK_PALLET_TOWN       ; 2f
	const LANDMARK_ROUTE_1           ; 30
	const LANDMARK_VIRIDIAN_CITY     ; 31
	const LANDMARK_ROUTE_2           ; 32
	const LANDMARK_PEWTER_CITY       ; 33
	const LANDMARK_ROUTE_3           ; 34
	const LANDMARK_MT_MOON           ; 35
	const LANDMARK_ROUTE_4           ; 36
	const LANDMARK_CERULEAN_CITY     ; 37
	const LANDMARK_ROUTE_24          ; 38
	const LANDMARK_ROUTE_25          ; 39
	const LANDMARK_ROUTE_5           ; 3a
	const LANDMARK_UNDERGROUND_PATH  ; 3b
	const LANDMARK_ROUTE_6           ; 3c
	const LANDMARK_VERMILION_CITY    ; 3d
	const LANDMARK_DIGLETTS_CAVE     ; 3e
	const LANDMARK_ROUTE_7           ; 3f
	const LANDMARK_ROUTE_8           ; 40
	const LANDMARK_ROUTE_9           ; 41
	const LANDMARK_ROCK_TUNNEL       ; 42
	const LANDMARK_ROUTE_10          ; 43
	const LANDMARK_POWER_PLANT       ; 44
	const LANDMARK_LAVENDER_TOWN     ; 45
	const LANDMARK_LAV_RADIO_TOWER   ; 46
	const LANDMARK_CELADON_CITY      ; 47
	const LANDMARK_SAFFRON_CITY      ; 48
	const LANDMARK_ROUTE_11          ; 49
	const LANDMARK_ROUTE_12          ; 4a
	const LANDMARK_ROUTE_13          ; 4b
	const LANDMARK_ROUTE_14          ; 4c
	const LANDMARK_ROUTE_15          ; 4d
	const LANDMARK_ROUTE_16          ; 4e
	const LANDMARK_ROUTE_17          ; 4f
	const LANDMARK_ROUTE_18          ; 50
	const LANDMARK_FUCHSIA_CITY      ; 51
	const LANDMARK_ROUTE_19          ; 52
	const LANDMARK_ROUTE_20          ; 53
	const LANDMARK_SEAFOAM_ISLANDS   ; 54
	const LANDMARK_CINNABAR_ISLAND   ; 55
	const LANDMARK_ROUTE_21          ; 56
	const LANDMARK_ROUTE_22          ; 57
	const LANDMARK_VICTORY_ROAD      ; 58
	const LANDMARK_ROUTE_23          ; 59
	const LANDMARK_INDIGO_PLATEAU    ; 5a
	const LANDMARK_ROUTE_26          ; 5b
	const LANDMARK_ROUTE_27          ; 5c
	const LANDMARK_TOHJO_FALLS       ; 5d
	const LANDMARK_ROUTE_28          ; 5e
	const LANDMARK_FAST_SHIP         ; 5f
DEF NUM_LANDMARKS EQU const_value

; used in CaughtData
	const_def $7f, -1
	const LANDMARK_EVENT             ; $7f
	const LANDMARK_GIFT              ; $7e

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
DEF NUM_REGIONS EQU const_value
