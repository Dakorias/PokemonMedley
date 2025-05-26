	object_const_def

TreelinePort_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TreelinePortFlypointCallback

TreelinePortFlypointCallback:
	setflag ENGINE_FLYPOINT_TREELINE_PORT
	endcallback

TreelinePort_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
