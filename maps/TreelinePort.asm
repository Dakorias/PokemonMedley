	object_const_def

MontaneTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MontaneTownFlypointCallback

MontaneTownFlypointCallback:
	setflag ENGINE_FLYPOINT_MONTANE_TOWN
	endcallback

MontaneTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
