	db 0 ; 078

	db  150,  80,  45,  80,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FLYING ; type
	db 60 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/drifblim/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLIGHTLY_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE
	; end