ScriptName XPMSEWeaponQuest extends Quest

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

; FNIS Keys
string Property XPMSE_AAPrefix = "xpe" AutoReadOnly
string Property XPMSE_AAName = "XPMSE" AutoReadOnly
string Property XPMSE_AAID = "XPMSEAAID" AutoReadOnly

string Property XPMSE_AAGroup_1hmeqp 	= "_1hmeqp" AutoReadOnly
string Property XPMSE_AAGroup_2hmeqp 	= "_2hmeqp" AutoReadOnly
string Property XPMSE_AAGroup_2hweqp 	= "_2hweqp" AutoReadOnly
string Property XPMSE_AAGroup_axeeqp 	= "_axeeqp" AutoReadOnly
string Property XPMSE_AAGroup_bowatk 	= "_bowatk" AutoReadOnly
string Property XPMSE_AAGroup_boweqp 	= "_boweqp" AutoReadOnly
string Property XPMSE_AAGroup_bowidle 	= "_bowidle" AutoReadOnly
string Property XPMSE_AAGroup_maceqp 	= "_maceqp" AutoReadOnly
string Property XPMSE_AAGroup_dageqp 	= "_dageqp" AutoReadOnly
string Property XPMSE_AAGroup_magatk 	= "_magatk" AutoReadOnly
string Property XPMSE_AAGroup_magcastmt = "_magcastmt" AutoReadOnly
string Property XPMSE_AAGroup_magcon 	= "_magcon" AutoReadOnly
string Property XPMSE_AAGroup_magidle 	= "_magidle" AutoReadOnly
string Property XPMSE_AAGroup_magmt 	= "_magmt" AutoReadOnly
string Property XPMSE_AAGroup_sprint	= "_sprint" AutoReadOnly
string Property XPMSE_AAGroup_shout		= "_shout" AutoReadOnly

string Property RACESEX_MENU = "RaceSex Menu" AutoReadOnly
string Property CONSOLE_MENU = "Console" AutoReadOnly

string Property XPMSE_AABase = "XPMSEAABase" AutoReadOnly
string Property XPMSE_AARange = "XPMSEAARange" AutoReadOnly

Actor Property PlayerRef Auto
Spell Property XPMSEWeaponAbility Auto
Spell Property XPMSEWeaponCloakAbility Auto
FormList Property XPMSEAmmoForms Auto

bool Gender

bool initialized = false

Function Initialize()
	initialized = false
	Gender = PlayerRef.GetLeveledActorBase().GetSex() == 1
	Unregister()
	PlayerRef.RemoveSpell(XPMSEWeaponAbility)
	PlayerRef.RemoveSpell(XPMSEWeaponCloakAbility)
	if CheckRequirements()
		Register()
		InitializeData()
		RefreshAmmoForms()
		PlayerRef.AddSpell(XPMSEWeaponAbility, false)
		if !CheckCloakFlag()
			PlayerRef.AddSpell(XPMSEWeaponCloakAbility, false)
		else
			int handle = ModEvent.Create("XPMSE_RemoveAllSpells")
			if (handle)
				ModEvent.Send(handle)
			endIf
		endif
		Debug.Trace("XPMSE MainQuest Initialization successful.")
		initialized = true
	else
		Debug.Trace("XPMSE MainQuest Initialization failed. If you are starting a new game, the game might not initialized fully and this warning is normal. If this message is persistent in your log and XPMSE does not function properly, you should check the requirements for XPMSE. XPMSE will try initialization again in 5 seconds.")
		initialized = false
		RegisterForSingleUpdate(5.0)
	endif
endFunction

Function Refresh()
	if initialized
		Gender = PlayerRef.GetLeveledActorBase().GetSex() == 1
		PlayerRef.RemoveSpell(XPMSEWeaponAbility)
		PlayerRef.RemoveSpell(XPMSEWeaponCloakAbility)
		if CheckRequirements()
			PlayerRef.AddSpell(XPMSEWeaponAbility, false)
			if !CheckCloakFlag()
				PlayerRef.AddSpell(XPMSEWeaponCloakAbility, false)
			else
				int handle = ModEvent.Create("XPMSE_RemoveAllSpells")
				if (handle)
					ModEvent.Send(handle)
				endIf
			endif
		endif
	endif
endFunction

Function CheckInit()
	if initialized
		if !PlayerRef.HasSpell(XPMSEWeaponAbility) || (!PlayerRef.HasSpell(XPMSEWeaponCloakAbility) && !CheckCloakFlag()) || (PlayerRef.HasSpell(XPMSEWeaponCloakAbility) && CheckCloakFlag())
			if Gender == (PlayerRef.GetLeveledActorBase().GetSex() == 1)
				Refresh()
			else
				ReInit()
			endif
		endif
	else
		ReInit()
	endif
endFunction

Function ReInit()
	Initialize()
	if initialized
		UnregisterForUpdate()
	endif
EndFunction

Event OnCloakDisable(int unused)
	if initialized
		Gender = PlayerRef.GetLeveledActorBase().GetSex() == 1
		if CheckCloakFlag()
			PlayerRef.RemoveSpell(XPMSEWeaponCloakAbility)
			int handle = ModEvent.Create("XPMSE_RemoveAllSpells")
			if (handle)
				ModEvent.Send(handle)
			endIf
		endif
	endif
EndEvent

Event OnCloakEnable(int unused)
	if initialized
		Gender = PlayerRef.GetLeveledActorBase().GetSex() == 1
		PlayerRef.RemoveSpell(XPMSEWeaponCloakAbility)
		if !CheckCloakFlag()
			PlayerRef.AddSpell(XPMSEWeaponCloakAbility, false)
		endif
	endif
EndEvent

Event OnUpdate()
	ReInit()
EndEvent

Event OnMenuOpen(String MenuName)
	If MenuName == RACESEX_MENU
		CheckInit()
	EndIf
	If MenuName == CONSOLE_MENU
		CheckInit()
	EndIf
EndEvent

Event OnMenuClose(String MenuName)
	If MenuName == RACESEX_MENU
		CheckInit()
	EndIf
	If MenuName == CONSOLE_MENU
		CheckInit()
	EndIf
EndEvent

Event OnMCMClose(int unused)
	CheckInit()
EndEvent

Event OnInit()
	Initialize()
EndEvent

Function Register()
	UnRegisterForModEvent("XPMSE_MCMClose") ; Needed because the new event has a parameter
	UnRegisterForModEvent("XPMSE_DisableCloak") ; Needed because the new event has a parameter
	UnRegisterForModEvent("XPMSE_EnableCloak") ; Needed because the new event has a parameter
	RegisterForModEvent("XPMSE_DisableCloak", "OnCloakDisable")
	RegisterForModEvent("XPMSE_EnableCloak", "OnCloakEnable")
	RegisterForModEvent("XPMSE_MCMClose", "OnMCMClose")
	RegisterForMenu(RACESEX_MENU)
	RegisterForMenu(CONSOLE_MENU)
endFunction

Function Unregister()
	UnregisterForAllModEvents()
	UnregisterForAllMenus()
endFunction

Function InitializeData()
	;Bases
	float XPMSE_tempaaid = FNIS_aa.GetAAmodID(XPMSE_AAPrefix, XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AAID, 0, XPMSE_tempaaid)
	float XPMSE_tempaabase
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._1hmeqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_1hmeqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._2hmeqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_2hmeqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._2hweqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_2hweqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._axeeqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_axeeqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._bowatk(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_bowatk, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._boweqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_boweqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._bowidle(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_bowidle, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._maceqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_maceqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._dageqp(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_dageqp, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._magatk(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magatk, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._magcastmt(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magcastmt, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._magcon(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magcon, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._magidle(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magidle, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._magmt(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magmt, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._sprint(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_sprint, 0, XPMSE_tempaabase)
	XPMSE_tempaabase = FNIS_aa.GetGroupBaseValue(XPMSE_tempaaid as int, FNIS_aa._shout(), XPMSE_AAName) as float
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_shout, 0, XPMSE_tempaabase)
	
	;Ranges	
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_1hmeqp, 0, 5)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_2hmeqp, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_2hweqp, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_axeeqp, 0, 5)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_bowatk, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_boweqp, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_bowidle, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_maceqp, 0, 2)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_dageqp, 0, 6)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_magatk, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_magcastmt, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_magcon, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_magidle, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_magmt, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_sprint, 0, 1)
	XPMSELib.WriteXPMSEData(PlayerRef, XPMSE_AARange + XPMSE_AAGroup_shout, 0, 1)	
endFunction

Function RefreshAmmoForms()
	Keyword[] keywordsDummy
    Int i = 0
    Int modCount = Game.GetModCount()
    XPMSEAmmoForms.Revert()

    While i < modCount
        String modName = Game.GetModName(i)
        XPMSEAmmoForms.AddForms(GameData.GetAllAmmo(modName, keywordsDummy, False))
        XPMSEAmmoForms.AddForms(GameData.GetAllAmmo(modName, keywordsDummy, True))
        i += 1
    EndWhile
EndFunction

float Function CheckCloakFlag()
	return ReadXPMSEData(PlayerRef, "RMWCloak", 1) as float
EndFunction

; Adds an extra value to the actor in form of a morph
; savelevels:
; 0 = temporal
; 1 = presistent
; 2 = RSMBodyGen
float Function ReadXPMSEData(Actor akActor, string keyName, int savelevel)
	if savelevel == 1
    	return NiOverride.GetBodyMorph(akActor, keyName, "XPMSE")
    elseif savelevel == 0
    	return NiOverride.GetBodyMorph(akActor, keyName, "XPMSE.esp")
    else
    	return NiOverride.GetBodyMorph(akActor, keyName, "RSMBodyGen")
    endif
EndFunction

bool Function CheckRequirements()
	return XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION) && (SKSE.GetPluginVersion("NiOverride") >= NIOVERRIDE_VERSION || SKSE.GetPluginVersion("SKEE") >= SKEE_VERSION) && NiOverride.GetScriptVersion() >= NIOVERRIDE_SCRIPT_VERSION && FNIS.VersionCompare(6,1,0) >= 0
EndFunction	