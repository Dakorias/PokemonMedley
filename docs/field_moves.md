# Field Move Eligibility

Pokemon can use current field moves without having them in their four learned
move slots. Eligibility comes from TM/HM/tutor compatibility or the species'
level-up learnset, regardless of the level at which the move is learned.
The checks use this build's 16-bit species indices and move indices.

For moves available as TMs/HMs, the corresponding machine must be in the
TM/HM pocket before an unlearned move can be used. Already-known moves remain
usable without that item, including special Pokemon with otherwise incompatible
moves. Headbutt is tutor-only in this build and requires no machine item.

Existing badges, terrain, and movement restrictions still apply. Eggs cannot use
field moves. Party menus list eligible moves only in appropriate locations and
continue to suppress field moves during link play.

Current menu moves are Cut, Fly, Surf, Strength, Waterfall, Dig, Headbutt, and
Rock Smash. Whirlpool's overworld interaction uses the same eligibility check.
Moves previously absent from the party menu have not been added to it.

The shared helpers are `CanMonLearnFieldMove`, `CanMonUseFieldMove`, and
`CanUseFieldMoveHere` in `engine/events/overworld.asm`. The party menu iterates
`MonMenuOptions`, so its move definitions remain the menu's source of truth.