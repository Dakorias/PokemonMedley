MACRO map_attributes
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
MACRO connection
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

	; LEGACY: Support for old connection macro
	if _NARG == 6
		connection \1, \2, \3, (\4) - (\5)
	else

		; Calculate tile offsets for source (current) and target maps
		DEF _src = 0
		DEF _tgt = (\4) + 3
		if _tgt < 0
			DEF _src = -_tgt
			DEF _tgt = 0
		endc

		if !STRCMP("\1", "north")
			DEF _blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
			DEF _map = _tgt
			DEF _win = (\3_WIDTH + 6) * \3_HEIGHT + 1
			DEF _y = \3_HEIGHT * 2 - 1
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "south")
			DEF _blk = _src
			DEF _map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
			DEF _win = \3_WIDTH + 7
			DEF _y = 0
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "west")
			DEF _blk = (\3_WIDTH * _src) + \3_WIDTH - 3
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt
			DEF _win = (\3_WIDTH + 6) * 2 - 6
			DEF _y = (\4) * -2
			DEF _x = \3_WIDTH * 2 - 1
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		elif !STRCMP("\1", "east")
			DEF _blk = (\3_WIDTH * _src)
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
			DEF _win = \3_WIDTH + 7
			DEF _y = (\4) * -2
			DEF _x = 0
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		else
			fail "Invalid direction for 'connection'."
		endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win

	endc
ENDM

	map_attributes NewBarkTown, NEW_BARK_TOWN, $05, 0

	map_attributes HeraldCove, HERALD_COVE, $35, WEST | EAST
	connection west, HeraldRoute, HERALD_ROUTE, -3
	connection east, HeraldCoveOcean, HERALD_COVE_OCEAN, -3

	map_attributes HeraldRoute, HERALD_ROUTE, $35, NORTH | SOUTH | EAST
	connection north, CraggyBeach, CRAGGY_BEACH, 13
	connection south, HeraldBay, HERALD_BAY, 0
	connection east, HeraldCove, HERALD_COVE, 3

	map_attributes HeraldBay, HERALD_BAY, $35, NORTH | EAST
	connection north, HeraldRoute, HERALD_ROUTE, 0
	connection east, HeraldBayOcean, HERALD_BAY_OCEAN, 0

	map_attributes HeraldBayOcean, HERALD_BAY_OCEAN, $35, WEST | SOUTH
	connection west, HeraldBay, HERALD_BAY, 0
	connection south, ScorchTrail, SCORCH_TRAIL, 0

	map_attributes HeraldCoveOcean, HERALD_COVE_OCEAN, $35, WEST | EAST
	connection west, HeraldCove, HERALD_COVE, 3
	connection east, TreelinePort, TREELINE_PORT, 0

	map_attributes CraggyBeach, CRAGGY_BEACH, $35, NORTH | SOUTH
	connection north, CraggyCoast, CRAGGY_COAST, 2
	connection south, HeraldRoute, HERALD_ROUTE, -13
	map_attributes FirstGymBeach, FIRST_GYM_BEACH, $35, 0

	map_attributes CraggyCoast, CRAGGY_COAST, $35, NORTH | SOUTH
	connection north, ScenicBluff, SCENIC_BLUFF, 5
	connection south, CraggyBeach, CRAGGY_BEACH, -2

	map_attributes NSGate, NS_GATE, $00, 0

	map_attributes ScenicBluff, SCENIC_BLUFF, $35, SOUTH
	connection south, CraggyCoast, CRAGGY_COAST, -5

	map_attributes TreelinePort, TREELINE_PORT, $35, WEST | EAST
	connection west, HeraldCoveOcean, HERALD_COVE_OCEAN, 0
	connection east, ForestPark, FOREST_PARK, -6
	map_attributes TreelinePortInside, TREELINE_PORT_INSIDE, $00, 0
	map_attributes ForestPark, FOREST_PARK, $05, NORTH | WEST | EAST
	connection north, NorthForestPath, NORTH_FOREST_PATH, -2
	connection west, TreelinePort, TREELINE_PORT, 6
	connection east, EastForestPath, EAST_FOREST_PATH, 0
	map_attributes NorthForestPath, NORTH_FOREST_PATH, $05, SOUTH | EAST
	connection south, ForestPark, FOREST_PARK, 2
	connection east, MontaneNorthPath, MONTANE_NORTH_PATH, 5
	map_attributes EastForestPath, EAST_FOREST_PATH, $35, NORTH | WEST
	connection north, MontaneTown, MONTANE_TOWN, 0
	connection west, ForestPark, FOREST_PARK, 0
	map_attributes MontaneTown, MONTANE_TOWN, $05, NORTH | SOUTH | WEST
	connection north, MontaneNorthPath, MONTANE_NORTH_PATH, 0
	connection south, EastForestPath, EAST_FOREST_PATH, 0
	connection west, MontaneWestPath, MONTANE_WEST_PATH, 1

	map_attributes AshenPeak, ASHEN_PEAK, $05, SOUTH | WEST
	connection south, MontaneNorthPath, MONTANE_NORTH_PATH, 0
	connection west, CinderTrail, CINDER_TRAIL, 4
	map_attributes AshenPeakPokecenter, ASHEN_PEAK_POKECENTER, $00, 0
	map_attributes AshenPeakHouse1, ASHEN_PEAK_HOUSE1, $00, 0
	map_attributes AshenPeakHouse2, ASHEN_PEAK_HOUSE2, $00, 0

	map_attributes CinderTrail, CINDER_TRAIL, $05, EAST | SOUTH
	connection east, AshenPeak, ASHEN_PEAK, -4
	connection south, CinderSouthPath, CINDER_SOUTH_PATH, 0
	map_attributes MontaneNorthPath, MONTANE_NORTH_PATH, $05, NORTH | SOUTH | WEST
	connection north, AshenPeak, ASHEN_PEAK, 0
	connection south, MontaneTown, MONTANE_TOWN, 0
	connection west, NorthForestPath, NORTH_FOREST_PATH, -5
	map_attributes CinderSouthPath, CINDER_SOUTH_PATH, $05, NORTH | SOUTH
	connection north, CinderTrail, CINDER_TRAIL, 0
	connection south, MontaneWestPath, MONTANE_WEST_PATH, 0
	map_attributes MontaneWestPath, MONTANE_WEST_PATH, $05, NORTH | EAST
	connection north, CinderSouthPath, CINDER_SOUTH_PATH, 0
	connection east, MontaneTown, MONTANE_TOWN, -1

	map_attributes Sandhaven, SANDHAVEN, $05, WEST | EAST
	connection west, ScorchTrail, SCORCH_TRAIL, 0
	connection east, DryWash, DRY_WASH, 5
	map_attributes SandhavenPokecenter, SANDHAVEN_POKECENTER, $00, 0
	map_attributes SandhavenHouse1, SANDHAVEN_HOUSE1, $00, 0
	map_attributes SandhavenHouse2, SANDHAVEN_HOUSE2, $00, 0

	map_attributes DryWash, DRY_WASH, $05, WEST | EAST
	connection west, Sandhaven, SANDHAVEN, -5
	connection east, OasisTown, OASIS_TOWN, -5

	map_attributes OasisTown, OASIS_TOWN, $05, NORTH | WEST
	connection north, DuneCrossing, DUNE_CROSSING, 6
	connection west, DryWash, DRY_WASH, 5
	map_attributes OasisTownPokecenter, OASIS_TOWN_POKECENTER, $00, 0
	map_attributes OasisTownHouse1, OASIS_TOWN_HOUSE1, $00, 0
	map_attributes OasisTownHouse2, OASIS_TOWN_HOUSE2, $00, 0

	map_attributes DuneCrossing, DUNE_CROSSING, $05, SOUTH
	connection south, OasisTown, OASIS_TOWN, -6

	map_attributes ScorchTrail, SCORCH_TRAIL, $05, EAST | NORTH
	connection north, HeraldBayOcean, HERALD_BAY_OCEAN, 0
	connection east, Sandhaven, SANDHAVEN, 0

	map_attributes ArenaHarbor, ARENA_HARBOR, $35, EAST
	connection east, TideWalk, TIDE_WALK, 5
	map_attributes ArenaHarborPokecenter, ARENA_HARBOR_POKECENTER, $00, 0
	map_attributes ArenaHarborHouse1, ARENA_HARBOR_HOUSE1, $00, 0
	map_attributes ArenaHarborHouse2, ARENA_HARBOR_HOUSE2, $00, 0

	map_attributes TideWalk, TIDE_WALK, $35, WEST
	connection west, ArenaHarbor, ARENA_HARBOR, -5

	map_attributes FrostHollow, FROST_HOLLOW, $05, WEST | EAST
	connection west, FrozenShore, FROZEN_SHORE, 5
	connection east, SnowdriftPass, SNOWDRIFT_PASS, 5
	map_attributes FrostHollowPokecenter, FROST_HOLLOW_POKECENTER, $00, 0
	map_attributes FrostHollowHouse1, FROST_HOLLOW_HOUSE1, $00, 0
	map_attributes FrostHollowHouse2, FROST_HOLLOW_HOUSE2, $00, 0

	map_attributes FrozenShore, FROZEN_SHORE, $35, EAST
	connection east, FrostHollow, FROST_HOLLOW, -5

	map_attributes SnowdriftPass, SNOWDRIFT_PASS, $05, SOUTH | WEST
	connection south, IceRun, ICE_RUN, -2
	connection west, FrostHollow, FROST_HOLLOW, -5

	map_attributes IceRun, ICE_RUN, $05, NORTH | WEST
	connection north, SnowdriftPass, SNOWDRIFT_PASS, 2
	connection west, GlacierPoint, GLACIER_POINT, -5

	map_attributes GlacierPoint, GLACIER_POINT, $05, EAST
	connection east, IceRun, ICE_RUN, 5
	map_attributes GlacierPointPokecenter, GLACIER_POINT_POKECENTER, $00, 0
	map_attributes GlacierPointHouse1, GLACIER_POINT_HOUSE1, $00, 0
	map_attributes GlacierPointHouse2, GLACIER_POINT_HOUSE2, $00, 0



	map_attributes HeraldLab, HERALD_LAB, $00, 0
	map_attributes HeraldPokecenter, HERALD_POKECENTER, $00, 0
	map_attributes HeraldHouse, HERALD_HOUSE, $00, 0
	map_attributes EdwardsHouse, EDWARDS_HOUSE, $00, 0
	map_attributes HeraldPort, HERALD_PORT, $00, 0
	map_attributes RegistrationCenter, REGISTRATION_CENTER, $00, 0
	map_attributes HeraldGrotto, HERALD_GROTTO, $05, 0
	map_attributes MtMonego, MT_MONEGO, $09, 0
	map_attributes MtMonegoB1F, MT_MONEGO_B1F, $09, 0
	map_attributes CraggyCoastHouse1, CRAGGY_COAST_HOUSE1, $00, 0
	map_attributes CraggyCoastHouse2, CRAGGY_COAST_HOUSE2, $00, 0
	map_attributes CraggyCoastPokecenter, CRAGGY_COAST_POKECENTER, $00, 0
	map_attributes CraggyCoastFishing, CRAGGY_COAST_FISHING, $00, 0
	map_attributes BeachGrotto, BEACH_GROTTO, $71, 0
	map_attributes MountainGym, MOUNTAIN_GYM, $00, 0
	map_attributes BerryForest, BERRY_FOREST, $05, 0
	map_attributes BerryForestHouse, BERRY_FOREST_HOUSE, $00, 0
	map_attributes RuggedCliff, RUGGED_CLIFF, $05, 0
	map_attributes RuggedCliffHouse, RUGGED_CLIFF_HOUSE, $00, 0
	map_attributes RuggedCliffPokecenter, RUGGED_CLIFF_POKECENTER, $00, 0
	map_attributes HeraldBayGrotto, HERALD_BAY_GROTTO, $05, 0
	map_attributes RuggedCliffGrotto, RUGGED_CLIFF_GROTTO, $05, 0
	map_attributes MountainGymBreak, MOUNTAIN_GYM_BREAK, $00, 0
	map_attributes MountainGymArena, MOUNTAIN_GYM_ARENA, $00, 0


	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $05, 0
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0
	map_attributes BattleTower1F, BATTLE_TOWER_1F, $00, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $00, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $00, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $00, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0
