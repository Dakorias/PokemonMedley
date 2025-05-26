IrwinRumorScript:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .MtSilver
	checkevent EVENT_FOUGHT_SNORLAX
	iftrue .Snorlax
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftrue .TrainPass
	checkflag ENGINE_MARSHBADGE
	iftrue .MarshBadge
; TODO: Change this flypoint and the various other dialog conditions.
	checkflag ENGINE_FLYPOINT_HERALD_COVE
	iftrue .VermilionCity
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .EliteFour
	checkflag ENGINE_RISINGBADGE
	iftrue .RisingBadge
	checkflag ENGINE_FOGBADGE
	iftrue .FogBadge
	checkflag ENGINE_CRUSHBADGE
	iftrue .PlainBadge
	farwritetext IrwinCalledRightAwayText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.PlainBadge:
	farwritetext IrwinPlainBadgeGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.RocketHideout:
	farwritetext IrwinRocketHideoutGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.RadioTower:
	farwritetext IrwinRadioTowerGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.RisingBadge:
	farwritetext IrwinRisingBadgeGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.EliteFour:
	farwritetext IrwinEliteFourGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.VermilionCity:
	farwritetext IrwinVermilionCityGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.TrainPass:
	farwritetext IrwinTrainPassGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.Snorlax:
	farwritetext IrwinSnorlaxGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.MtSilver:
	farwritetext IrwinMtSilverGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.FogBadge:
	farwritetext IrwinFogBadgeGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.MarshBadge:
	farwritetext IrwinMarshBadgeGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Male
