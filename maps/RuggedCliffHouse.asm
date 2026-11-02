	object_const_def
	const RUGGED_CLIFF_HOUSE_POKEFAN_M

RuggedCliffHouse_MapScripts:
	def_scene_scripts

	def_callbacks

RuggedCliffHousePokefanM:
	faceplayer
	opentext
	checkevent EVENT_BERRY_MASTER_POKEFAN_M
	iftrue .Finished
	checkitem BERRY_BOX
	iftrue .Box
	writetext RuggedHousePeacefulText
	waitbutton
	closetext
	end

	.Box
	writetext RuggedHouseBerryBox
	waitbutton
	verbosegiveitem NUGGET
	closetext
	takeitem BERRY_BOX
	setevent EVENT_BERRY_MASTER_POKEFAN_M
	end

	.Finished
	writetext RuggedHouseThanks
	waitbutton
	closetext
	end

	RuggedHousePeacefulText:
		text "I like living out"
		line "here. It's just"
		cont "so peaceful."
		done

	RuggedHouseBerryBox:
		text "Oh, thats my BERRY"
		line "BOX! You brought"
		cont "it to me?"

		para "I know that was a"
		line "long walk here."

		para "Take this as my"
		line "thanks!"
		done

	RuggedHouseThanks:
		text "Ah, BERRIES and"
		line "a great view."

		para "What could be"
		line "better than that?"
		done

RuggedCliffHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2,  7, RUGGED_CLIFF, 3
	warp_event 3,  7, RUGGED_CLIFF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, COLOR_BROWN, OBJECTTYPE_SCRIPT, 0, RuggedCliffHousePokefanM, -1
