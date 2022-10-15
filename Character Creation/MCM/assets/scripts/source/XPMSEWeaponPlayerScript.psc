scriptName XPMSEWeaponPlayerScript extends ReferenceAlias

XPMSEWeaponQuest Property XPMSEWeapon Auto

Event OnPlayerLoadGame()
	XPMSEWeapon.Initialize()
EndEvent

Event OnRaceSwitchComplete()
	XPMSEWeapon.Refresh()
EndEvent