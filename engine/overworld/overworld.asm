GetEmote2bpp:
	ld a, $1
	ldh [rVBK], a
	call Get2bpp
	xor a
	ldh [rVBK], a
	ret

_UpdatePlayerSprite::
	call GetPlayerSprite
	ld a, [wUsedSprites]
	ldh [hUsedSpriteIndex], a
	ld a, [wUsedSprites + 1]
	ldh [hUsedSpriteTile], a
	call GetUsedSprite
	ret

LoadStandingSpritesGFX: ; mobile
	ld hl, wSpriteFlags
	ld a, [hl]
	push af
	res SPRITES_SKIP_STANDING_GFX_F, [hl]
	set SPRITES_SKIP_WALKING_GFX_F, [hl]
	call LoadUsedSpritesGFX
	pop af
	ld [wSpriteFlags], a
	ret

LoadWalkingSpritesGFX: ; mobile
	ld hl, wSpriteFlags
	ld a, [hl]
	push af
	set SPRITES_SKIP_STANDING_GFX_F, [hl]
	res SPRITES_SKIP_WALKING_GFX_F, [hl]
	call LoadUsedSpritesGFX
	pop af
	ld [wSpriteFlags], a
	ret

RefreshSprites::
	call .Refresh
	call LoadUsedSpritesGFX
	ret

.Refresh:
	xor a
	ld bc, wUsedSpritesEnd - wUsedSprites
	ld hl, wUsedSprites
	call ByteFill
	call GetPlayerSprite
	call AddMapSprites
	call LoadAndSortSprites
	ret

GetPlayerSprite:
; Get Chris or Kris's sprite.
	ld hl, ChrisStateSprites
	ld a, [wPlayerSpriteSetupFlags]
	bit PLAYERSPRITESETUP_FEMALE_TO_MALE_F, a
	jr nz, .go
	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .go
	ld hl, KrisStateSprites

.go
	ld a, [wPlayerState]
	ld c, a
.loop
	ld a, [hli]
	cp c
	jr z, .good
	inc hl
	cp -1
	jr nz, .loop

; Any player state not in the array defaults to Chris's sprite.
	xor a ; ld a, PLAYER_NORMAL
	ld [wPlayerState], a
	ld a, SPRITE_CHRIS
	jr .finish

.good
	ld a, [hl]

.finish
	ld [wUsedSprites + 0], a
	ld [wPlayerSprite], a
	ld [wPlayerObjectSprite], a
	ret

INCLUDE "data/sprites/player_sprites.asm"

AddMapSprites:
	call GetMapEnvironment
	call CheckOutdoorMap
	jr z, .outdoor
	call AddIndoorSprites
	ret

.outdoor
	call AddOutdoorSprites
	ret

AddIndoorSprites:
	ld hl, wMap1ObjectSprite
	ld a, 1
.loop
	push af
	ld a, [hl]
	call AddSpriteGFX
	ld de, MAPOBJECT_LENGTH
	add hl, de
	pop af
	inc a
	cp NUM_OBJECTS
	jr nz, .loop
	ret

AddOutdoorSprites:
	ld a, [wMapGroup]
	dec a
	ld c, a
	ld b, 0
	ld hl, OutdoorSprites
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
.loop
	ld a, [hli]
	and a
	jr z, .done
	call AddSpriteGFX
	jr .loop

.done
	call GetOverworldWeatherSprite
	and a
	ret z
	jp AddSpriteGFX

UpdateOverworldRain::
	ld a, [wStateFlags]
	bit SPRITE_UPDATES_DISABLED_F, a
	ret z
	call GetOverworldWeatherSprite
	and a
	ret z
	ld c, a
	ld hl, wUsedSprites
	ld b, SPRITE_GFX_LIST_CAPACITY
.find_rain_sprite
	ld a, [hli]
	and a
	ret z
	cp c
	jr z, .found_rain_sprite
	inc hl
	dec b
	jr nz, .find_rain_sprite
	ret

.found_rain_sprite
	ld a, [hl]
	push af
	ldh a, [hUsedSpriteIndex]
	ld e, a
	ld d, 0
	ld hl, wShadowOAM
	add hl, de
	pop af
	ld d, a
	call .get_weather_palette_slot
	cp $ff
	ret z
	ld e, a
	push de
	push hl
	call GetAutomaticBattleWeather
	cp WEATHER_SANDSTORM
	pop hl
	pop de
	ld c, 0
	ld b, 8
	jr nz, .draw_rain_drop
	ld b, 16
.draw_rain_drop
	ldh a, [hUsedSpriteIndex]
	cp NUM_SPRITE_OAM_STRUCTS * SPRITEOAMSTRUCT_LENGTH
	ret nc
	ld a, [wStateFlags]
	bit LAST_12_SPRITE_OAM_STRUCTS_RESERVED_F, a
	jr z, .particle_slot_available
	ldh a, [hUsedSpriteIndex]
	cp (NUM_SPRITE_OAM_STRUCTS - 12) * SPRITEOAMSTRUCT_LENGTH
	ret nc
.particle_slot_available
	push bc
	push de
	push hl
	call GetAutomaticBattleWeather
	cp WEATHER_SANDSTORM
	pop hl
	pop de
	pop bc
	jr z, .sandstorm_position
	call .fall_phase
	and $7f
	add 16
	ld [hli], a
	push hl
	push bc
	push de
	ld a, c
	swap a
	and $f
	ld e, a
	ld d, 0
	ld hl, .rain_drop_x_coords
	add hl, de
	ld a, [hl]
	pop de
	pop bc
	pop hl
	push bc
	ld b, a
	call .fall_phase
	and $7f
	srl a
	srl a
	cpl
	inc a
	add 16
	ld c, a
	ld a, b
	add c
	pop bc
	ld [hli], a
	jr .write_particle

.sandstorm_position
	push hl
	push bc
	push de
	ld a, c
	swap a
	and $f
	ld e, a
	ld d, 0
	ld hl, .sandstorm_y_coords
	add hl, de
	ld a, [hl]
	pop de
	pop bc
	pop hl
	push bc
	ld b, a
	ldh a, [hVBlankCounter]
	add a
	add c
	ld c, a
	srl a
	srl a
	srl a
	add b
	and $7f
	add 16
	ld [hli], a
	ld a, c
	pop bc
	ld [hli], a

.write_particle
	ld a, d
	and $7f
	ld [hli], a
	ld a, d
	bit 7, a
	jr nz, .rain_vram0
	ld a, VRAM_BANK_1
	jr .rain_palette
.rain_vram0
	xor a
.rain_palette
	or e
	ld [hli], a
	ldh a, [hUsedSpriteIndex]
	add SPRITEOAMSTRUCT_LENGTH
	ldh [hUsedSpriteIndex], a
	ld a, c
	add 16
	ld c, a
	dec b
	jp nz, .draw_rain_drop
	ret

.fall_phase
	push bc
	push de
	push hl
	call GetAutomaticBattleWeather
	cp WEATHER_RAIN
	pop hl
	pop de
	pop bc
	ldh a, [hVBlankCounter]
	jr nz, .double_speed
	push bc
	ld b, a
	add a
	add b
	pop bc
	add c
	ret
.double_speed
	add a
	add c
	ret

.rain_drop_x_coords
	db 128, 28, 68, 8, 88, 148, 108, 48

.sandstorm_y_coords
	db 8, 72, 24, 104, 48, 88, 0, 112
	db 56, 16, 96, 40, 120, 64, 32, 80

.get_weather_palette_slot
	push bc
	push de
	push hl
	call GetOverworldWeatherColorPair
	ld d, a
	ld hl, wColorSlotPairs
	ld b, NUM_COLOR_SLOTS
	ld c, 0
.find_weather_palette
	ld a, [hli]
	cp d
	jr z, .found_weather_palette
	inc c
	dec b
	jr nz, .find_weather_palette
	ld c, $ff
.found_weather_palette
	ld a, c
	pop hl
	pop de
	pop bc
	ret

GetOverworldWeatherSprite:
	call GetAutomaticBattleWeather
	cp WEATHER_RAIN
	ld a, SPRITE_RAIN_DROP
	ret z
	call GetAutomaticBattleWeather
	cp WEATHER_HAIL
	ld a, SPRITE_HAIL_PARTICLE
	ret z
	call GetAutomaticBattleWeather
	cp WEATHER_SANDSTORM
	ld a, SPRITE_SANDSTORM_PARTICLE
	ret z
	xor a
	ret

GetOverworldWeatherColorPair::
	call GetAutomaticBattleWeather
	cp WEATHER_RAIN
	ld a, (SKIN_TONE_3 << 4) | COLOR_BLUE
	ret z
	call GetAutomaticBattleWeather
	cp WEATHER_HAIL
	ld a, (SKIN_WHITE << 4) | COLOR_SILVER
	ret z
	call GetAutomaticBattleWeather
	cp WEATHER_SANDSTORM
	ld a, (SKIN_TONE_3 << 4) | COLOR_BROWN
	ret z
	xor a
	ret

StartAutomaticBattleWeather::
	call GetAutomaticBattleWeather
	and a
	ret z
	ld [wBattleWeather], a
	dec a
	ld hl, AutomaticBattleWeatherEffects
	ld bc, 4
	call AddNTimes
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, 255
	ld [wWeatherCount], a
	farcall Call_PlayBattleAnim
	pop hl
	call StdBattleTextbox
	farcall EmptyBattleTextbox
	ret

AutomaticBattleWeatherEffects:
	dw RAIN_DANCE, DownpourText
	dw SUNNY_DAY, SunGotBrightText
	dw ANIM_IN_SANDSTORM, SandstormBrewedText
	dw HAIL, ItStartedToHailText

GetAutomaticBattleWeather::
	ld hl, AutomaticBattleWeatherMaps
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
.loop
	ld a, [hli]
	and a
	ret z
	cp b
	jr nz, .skip_map
	ld a, [hli]
	cp c
	jr nz, .skip_weather
	ld a, [hl]
	ret

.skip_map
	inc hl
.skip_weather
	inc hl
	jr .loop

AutomaticBattleWeatherMaps:
	; To use: 
	; map_id <MAP_ID>
	; db <WEATHER_ID>

	map_id HERALD_ROUTE
	db WEATHER_HAIL

	map_id HERALD_COVE
	db WEATHER_SANDSTORM

	map_id HERALD_BAY
	db WEATHER_RAIN
	db 0 ; end

LoadUsedSpritesGFX:
	ld a, MAPCALLBACK_SPRITES
	call RunMapCallback
	call GetUsedSprites
	call LoadMiscTiles
	ret

LoadMiscTiles:
	ld a, [wSpriteFlags]
	bit SPRITES_SKIP_WALKING_GFX_F, a
	ret nz

	ld c, EMOTE_SHADOW
	farcall LoadEmote
	call GetMapEnvironment
	call CheckOutdoorMap
	ld c, EMOTE_GRASS_RUSTLE
	jr z, .outdoor
	ld c, EMOTE_BOULDER_DUST
.outdoor
	farcall LoadEmote
	ret

SafeGetSprite:
	push hl
	call GetSprite
	pop hl
	ret

GetSprite:
	call GetMonSprite
	ret c

	ld hl, OverworldSprites + SPRITEDATA_ADDR
	dec a
	ld c, a
	ld b, 0
	ld a, NUM_SPRITEDATA_FIELDS
	call AddNTimes
	; load the address into de
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	; load the length into c
	ld a, [hli]
	swap a
	ld c, a
	; load the sprite bank into both b and h
	ld b, [hl]
	ld a, [hli]
	; load the sprite type into l
	ld l, [hl]
	ld h, a
	ret

GetMonSprite:
; Return carry if a monster sprite was loaded.

	cp SPRITE_POKEMON
	jr c, .Normal
	cp SPRITE_DAY_CARE_MON_1
	jr z, .BreedMon1
	cp SPRITE_DAY_CARE_MON_2
	jr z, .BreedMon2
	cp SPRITE_VARS
	jr nc, .Variable
	jr .Icon

.Normal:
	and a
	ret

.Icon:
	sub SPRITE_POKEMON
	ld e, a
	ld d, 0
	ld hl, SpriteMons
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	jr .Mon

.BreedMon1
	ld a, [wBreedMon1Species]
	jr .Mon

.BreedMon2
	ld a, [wBreedMon2Species]

.Mon:
	ld e, a
	and a
	jr z, .NoBreedmon

	farcall LoadOverworldMonIcon

	ld l, WALKING_SPRITE
	ld h, 0
	scf
	ret

.Variable:
	sub SPRITE_VARS
	ld e, a
	ld d, 0
	ld hl, wVariableSprites
	add hl, de
	ld a, [hl]
	and a
	jp nz, GetMonSprite

.NoBreedmon:
	ld a, WALKING_SPRITE
	ld l, WALKING_SPRITE
	ld h, 0
	and a
	ret

_DoesSpriteHaveFacings::
; Checks to see whether we can apply a facing to a sprite.
; Returns carry unless the sprite is a Pokemon or a Still Sprite.
	cp SPRITE_POKEMON
	jr nc, .only_down

	push hl
	push bc
	ld hl, OverworldSprites + SPRITEDATA_TYPE
	dec a
	ld c, a
	ld b, 0
	ld a, NUM_SPRITEDATA_FIELDS
	call AddNTimes
	ld a, [hl]
	pop bc
	pop hl
	cp STILL_SPRITE
	jr nz, .only_down
	scf
	ret

.only_down
	and a
	ret

_GetSpriteColor::
	ld a, c
	call GetMonSprite
	jr c, .is_pokemon

	ld hl, OverworldSprites + SPRITEDATA_COLOR
	dec a
	ld c, a
	ld b, 0
	ld a, NUM_SPRITEDATA_FIELDS
	call AddNTimes
	ld c, [hl]
	ret

.is_pokemon
	xor a
	ld c, a
	ret

LoadAndSortSprites:
	call LoadSpriteGFX
	call ArrangeUsedSprites
	ret

AddSpriteGFX:
; Add any new sprite ids to a list of graphics to be loaded.
; Return carry if the list is full.

	push hl
	push bc
	ld b, a
	ld hl, wUsedSprites + 2
	ld c, SPRITE_GFX_LIST_CAPACITY - 1
.loop
	ld a, [hl]
	cp b
	jr z, .exists
	and a
	jr z, .new
	inc hl
	inc hl
	dec c
	jr nz, .loop

	pop bc
	pop hl
	scf
	ret

.exists
	pop bc
	pop hl
	and a
	ret

.new
	ld [hl], b
	pop bc
	pop hl
	and a
	ret

LoadSpriteGFX:
	ld hl, wUsedSprites
	ld b, SPRITE_GFX_LIST_CAPACITY
.loop
	ld a, [hli]
	and a
	jr z, .done
	push hl
	call .LoadSprite
	pop hl
	ld [hli], a
	dec b
	jr nz, .loop

.done
	ret

.LoadSprite:
	push bc
	call GetSprite
	pop bc
	ld a, l
	ret

ArrangeUsedSprites:
; Get the length of each sprite and space them out in VRAM.
; Crystal introduces a second table in VRAM bank 0.

	ld hl, wUsedSprites
	ld c, SPRITE_GFX_LIST_CAPACITY
	ld b, 0
.FirstTableLength:
; Keep going until the end of the list.
	ld a, [hli]
	and a
	jr z, .quit

	ld a, [hl]
	call GetSpriteLength

; Spill over into the second table after $80 tiles.
	add b
	cp $80
	jr z, .loop
	jr nc, .SecondTable

.loop
	ld [hl], b
	inc hl
	ld b, a

; Assumes the next table will be reached before c hits 0.
	dec c
	jr nz, .FirstTableLength

.SecondTable:
; The second tile table starts at tile $80.
	ld b, $80
	dec hl
.SecondTableLength:
; Keep going until the end of the list.
	ld a, [hli]
	and a
	jr z, .quit

	ld a, [hl]
	call GetSpriteLength

; There are only two tables, so don't go any further than that.
	add b
	jr c, .quit

	ld [hl], b
	ld b, a
	inc hl

	dec c
	jr nz, .SecondTableLength

.quit
	ret

GetSpriteLength:
; Return the length of sprite type a in tiles.

	cp WALKING_SPRITE
	jr z, .AnyDirection
	cp STANDING_SPRITE
	jr z, .AnyDirection
	cp STILL_SPRITE
	jr z, .OneDirection

	ld a, 12
	ret

.AnyDirection:
	ld a, 12
	ret

.OneDirection:
	ld a, 4
	ret

GetUsedSprites:
	ld hl, wUsedSprites
	ld c, SPRITE_GFX_LIST_CAPACITY

.loop
	ld a, [wSpriteFlags]
	res SPRITES_VRAM_BANK_0_F, a
	ld [wSpriteFlags], a

	ld a, [hli]
	and a
	jr z, .done
	ldh [hUsedSpriteIndex], a

	ld a, [hli]
	ldh [hUsedSpriteTile], a

	bit 7, a ; tiles $80+ are in VRAM bank 0
	jr z, .dont_set

	ld a, [wSpriteFlags]
	set SPRITES_VRAM_BANK_0_F, a
	ld [wSpriteFlags], a

.dont_set
	push bc
	push hl
	call GetUsedSprite
	pop hl
	pop bc
	dec c
	jr nz, .loop

.done
	ret

GetUsedSprite:
	ldh a, [hUsedSpriteIndex]
	call SafeGetSprite
	ldh a, [hUsedSpriteTile]
	call .GetTileAddr
	push hl
	push de
	push bc
	ld a, [wSpriteFlags]
	bit SPRITES_SKIP_STANDING_GFX_F, a
	jr nz, .skip
	call .CopyToVram

.skip
	pop bc
	ld l, c
	ld h, $0
rept 4
	add hl, hl
endr
	pop de
	add hl, de
	ld d, h
	ld e, l
	pop hl

	ld a, [wSpriteFlags]
	bit SPRITES_VRAM_BANK_0_F, a
	jr nz, .done
	bit SPRITES_SKIP_WALKING_GFX_F, a
	jr nz, .done

	ldh a, [hUsedSpriteIndex]
	call _DoesSpriteHaveFacings
	jr c, .done

	ld a, h
	add HIGH(vTiles1 - vTiles0)
	ld h, a
	call .CopyToVram

.done
	ret

.GetTileAddr:
; Return the address of tile (a) in (hl).
	and $7f
	ld l, a
	ld h, 0
rept 4
	add hl, hl
endr
	ld a, l
	add LOW(vTiles0)
	ld l, a
	ld a, h
	adc HIGH(vTiles0)
	ld h, a
	ret

.CopyToVram:
	ldh a, [rVBK]
	push af
	ld a, [wSpriteFlags]
	bit SPRITES_VRAM_BANK_0_F, a
	ld a, $1
	jr z, .bankswitch
	ld a, $0

.bankswitch
	ldh [rVBK], a
	call Get2bpp
	pop af
	ldh [rVBK], a
	ret

LoadEmote::
; Get the address of the pointer to emote c.
	ld a, c
	ld bc, EMOTE_LENGTH
	ld hl, Emotes
	call AddNTimes
; Load the emote address into de
	ld e, [hl]
	inc hl
	ld d, [hl]
; load the length of the emote (in tiles) into c
	inc hl
	ld c, [hl]
	swap c
; load the emote pointer bank into b
	inc hl
	ld b, [hl]
; load the VRAM destination into hl
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
; if the emote has a length of 0, do not proceed (error handling)
	ld a, c
	and a
	ret z
	call GetEmote2bpp
	ret

INCLUDE "data/sprites/emotes.asm"

INCLUDE "data/sprites/sprite_mons.asm"

INCLUDE "data/maps/outdoor_sprites.asm"

INCLUDE "data/sprites/sprites.asm"
