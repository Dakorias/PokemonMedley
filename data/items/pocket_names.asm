ItemPocketNames:
; entries correspond to item type constants
	table_width 2
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	dw .Medicine
	dw .Berries
	assert_table_length NUM_ITEM_TYPES

.Item: db "ITEM POCKET@"
.Key:  db "KEY POCKET@"
.Ball: db "BALL POCKET@"
.TM:   db "TM POCKET@"
.Medicine: db "MEDS POCKET@"
.Berries: db "BERRY POCKET@"
