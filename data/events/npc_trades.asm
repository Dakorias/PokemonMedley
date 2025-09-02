MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1
	dw \2, \3
	db \4, \5, \6, \7
	shift
	dw \7
	db \8, \9
	db 0, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MACHOP,   "MUSCLE@@@@@", $37, $66, GOLD_BERRY,   37460, "MIKE@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, EKANS, 	    ONIX,     "ROCKY@@@@@@", $96, $66, BITTER_BERRY, 48926, "KYLE@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     CORPHISH,   EEVEE,    "LUNA@@@@@@@", $98, $88, BERRY, 	     29189, "DAVE@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,  EKANS,    "DORIS@@@@@@", $77, $66, SMOKE_BALL,   00283, "EMY@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    EKANS,    "PAUL@@@@@@@", $96, $86, MYSTERYBERRY, 15616, "CHRIS@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      EKANS,    	EKANS,    "AEROY@@@@@@", $96, $66, GOLD_BERRY,   26491, "KIM@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, EKANS,    	MAGNETON, "MAGGIE@@@@@", $96, $66, METAL_COAT,   50082, "FOREST@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
