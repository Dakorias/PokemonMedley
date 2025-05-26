BugContestantPointers:
	table_width 2
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dw 1st-place mon, score
;   dw 2nd-place mon, score
;   dw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BLAINE, BLAINE1
	dbw CATERPIE,     300
	dbw METAPOD,    285
	dbw CATERPIE,   226

BugContestant_BugCatcherEd:
	db BLAINE, BLAINE1
	dbw BUTTERFREE, 286
	dbw BUTTERFREE, 251
	dbw CATERPIE,   237

BugContestant_CooltrainerMNick:
	db BLAINE, BLAINE1
	dbw SCYTHER,    357
	dbw BUTTERFREE, 349
	dbw CATERPIE,     368

BugContestant_PokefanMWilliam:
	db BLAINE, BLAINE1
	dbw CATERPIE,     332
	dbw BUTTERFREE, 324
	dbw VENONAT,    321

BugContestant_BugCatcherBenny:
	db BLAINE, BLAINE1
	dbw BUTTERFREE, 318
	dbw CATERPIE,     295
	dbw CATERPIE,   285

BugContestant_CamperBarry:
	db BLAINE, BLAINE1
	dbw CATERPIE,     366
	dbw VENONAT,    329
	dbw CATERPIE,     314

BugContestant_PicnickerCindy:
	db BLAINE, BLAINE1
	dbw BUTTERFREE, 341
	dbw METAPOD,    301
	dbw CATERPIE,   264

BugContestant_BugCatcherJosh:
	db BLAINE, BLAINE1
	dbw SCYTHER,    326
	dbw BUTTERFREE, 292
	dbw METAPOD,    282

BugContestant_YoungsterSamuel:
	db BLAINE, BLAINE1
	dbw CATERPIE,     270
	dbw CATERPIE,     282
	dbw CATERPIE,   251

BugContestant_SchoolboyKipp:
	db BLAINE, BLAINE1
	dbw VENONAT,    267
	dbw CATERPIE,      254
	dbw CATERPIE,     259
