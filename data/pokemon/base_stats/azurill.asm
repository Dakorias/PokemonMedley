	db 0 ; 183

	db  50,  20,  40,  20,  20,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 150 ; catch rate
	db 38 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/azurill/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm
	; end