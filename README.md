# Pokemon Medley (Unfinished)
A brand new pokemon adventure! Set five years after the events of Pokemon Crystal, Professor Oak has gathered a band of trainers from neighboring regions to help explore and document a new region! This hack aims to be a fresh experience that still feels like Generation 2. A mixed cast of pokemon up to gen 9, fully reworked and rebalanced, is waiting for you to find them! Will feature tons of QOL, new pokedex, new regional forms, and exciting twists on the normal formula. This romhack uses the 16-bit index expansion created by AX6 below.

# 16-bit index expansion for Crystal

This repository is a modernized and rebased version of [AX6](https://github.com/aaaaaa123456789)'s work found at https://github.com/aaaaaa123456789/pokecrystal16.
It includes additional features such as the new `expand-item-ID` branch and the `newbox`/`item-newbox` branches.

This repository contains a modified Pokémon Crystal game, updated to handle 16-bit indexes. The main goal of this
project is to create a reusable system that ROM hacks can use to bring 16-bit indexes into their games.  
It is *not* within scope to create a new game, or to add additional features beyond 16-bit indexes.

The `master` branch of this repository is intended to perform identically to the original Pokémon Crystal, with
minimal changes to support further development on it. Other branches will implement more features on top of it; the
intention is that the necessary changes can be readily seen by comparing said branches to `master` (or between each
other). Therefore, these other branches will never be merged into `master`, even though they will always be directly
descended from it (i.e., in Git terminology, a merge would be a fast-forward).

Since this repository is intended to be used as a reference, the commit history is intentionally kept clean to make
changes clearly visible. Therefore, modifications (such as bug fixes) will often be merged into whichever commit is
more suitable for them, with the remainder of the commit tree rebased on top of the updated commit. **Please do not
fork this repository to build a new game on top** (unless you intend to contribute to it), as the publicly-visible
history will be repeatedly rewritten, making merges impossible. If you do want to contribute to the repository, let
me know in advance so I can notify you of history rewrites.

For update notifications, discussions, bug reports, and feedback, join our Discord server: [Fellowship of the Roms (Public)](https://discord.gg/dvpf6wcqMn). 
Once there, navigate to the `#reaction-roles` channel and react to pokecrystal16 to gain access to the `#pokecrystal16` channels.

For further documentation, check out the [wiki].

[compare]: https://github.com/vulcandth/pokecrystal16/compare
[pokecrystal]: https://github.com/pret/pokecrystal/
[wiki]: https://github.com/vulcandth/pokecrystal16/wiki
