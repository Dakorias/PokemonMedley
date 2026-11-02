; Skin and color of individual NPCs, set per map, on top of the color in their object_event.
; Objects not listed here have skin SKIN_TONE_3 and the color of their object_event.

MACRO object_colors
;\1: map, as in map_id
;\2: which object_event, counting the first one on the map as 1
;\3: skin (SKIN_*), or SKIN_DEFAULT to keep the sprite's
;\4: color (COLOR_*), or COLOR_DEFAULT to keep the sprite's
	map_id \1
	db \2
	dn \3, \4
ENDM

ObjectColorOverrides:
; e.g. object_colors PLAYERS_HOUSE_1F, 1, SKIN_TONE_2, COLOR_PINK
	db -1
