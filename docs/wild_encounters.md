# Grass and Water Encounter Tables

Grass and surfing encounters use per-slot probabilities and inclusive level ranges:

```asm
	def_grass_wildmons HERALD_ROUTE
	db 10 percent, 10 percent, 10 percent ; encounter rates
	; Each morning/day/night table contains eight entries totaling 100.
	wildmon 30, PIDGEY, 2, 4
	; ...seven more entries, then the day and night tables...
	end_grass_wildmons
```

`wildmon chance, species, minimum, maximum` emits five bytes: a raw percentage
(0-100), a **16-bit** species index, and two level bytes. Slot chances must total
100 for each time-of-day table. Do not use the `percent` operator for slot
chances; it remains appropriate for the map's encounter-rate header.

Grass maps have eight slots for each of morning, day, and night. Evening uses
the night table. Water maps have four slots and one encounter-rate byte.
Use the same `wildmon` rows between `def_water_wildmons` and
`end_water_wildmons` when adding surfing encounters. Swarm tables use the same
formats as their corresponding grass/water tables.

Both level endpoints are included, and each level is equally likely. Set them
equal for a fixed-level slot. Assembly checks reject invalid species, reversed
or out-of-bounds levels, incorrect table lengths, and chances not totaling 100.

The initial conversion preserves the existing species, slot weights, and
Method 1 level bounds; edit individual rows to customize them independently.
Fishing, tree encounters, the Bug-Catching Contest, roaming Pokemon, and scripted
encounters retain their separate formats.