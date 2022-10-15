ScriptName XPMSEWeaponStyleScaleEffect extends ActiveMagicEffect

;Alternative shield scale, scale the shield in hand instead on the back, may cause problems with drawn shields
bool Property SHIELD_SOLUTION_ALT = false AutoReadOnly

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

string Property NINODE_RIGHT_HAND = "NPC R Hand [RHnd]" AutoReadOnly
string Property NINODE_LEFT_HAND = "NPC L Hand [LHnd]" AutoReadOnly

;Common Nodes
string Property NINODE_AXE = "WeaponAxe" AutoReadOnly
string Property NINODE_MACE = "WeaponMace" AutoReadOnly
string Property NINODE_SWORD = "WeaponSword" AutoReadOnly
string Property NINODE_DAGGER = "WeaponDagger" AutoReadOnly
string Property NINODE_WEAPON_BACK = "WeaponBack" AutoReadOnly
string Property NINODE_BOW = "WeaponBow" AutoReadOnly
string Property NINODE_WEAPON = "WEAPON" AutoReadOnly
string Property NINODE_SHIELD = "SHIELD" AutoReadOnly
string Property NINODE_QUIVER = "QUIVER" AutoReadOnly

;Special Nodes
string Property NINODE_PREWEAPON = "PreWEAPON" AutoReadOnly
string Property NINODE_PRESHIELD = "PreSHIELD" AutoReadOnly

;Dual Sheath Nodes
string Property NINODE_AXE_LEFT = "WeaponAxeLeft" AutoReadOnly
string Property NINODE_MACE_LEFT = "WeaponMaceLeft" AutoReadOnly
string Property NINODE_SWORD_LEFT = "WeaponSwordLeft" AutoReadOnly
string Property NINODE_DAGGER_LEFT = "WeaponDaggerLeft" AutoReadOnly
string Property NINODE_SHIELD_BACK = "ShieldBack" AutoReadOnly
string Property NINODE_STAFF = "WeaponStaff" AutoReadOnly
string Property NINODE_STAFF_LEFT = "WeaponStaffLeft" AutoReadOnly

;Magic Nodes
string Property NINODE_SHOUT = "NPC Head MagicNode [Hmag]" AutoReadOnly
string Property NINODE_HEAD = "NPC Head [Head]" AutoReadOnly
string Property NINODE_SCHLONG_MAGIC = "SchlongMagic" AutoReadOnly
string Property NINODE_MAGIC_LEFT = "NPC L MagicNode [LMag]" AutoReadOnly
string Property NINODE_MAGIC_RIGHT = "NPC R MagicNode [RMag]" AutoReadOnly
string Property NINODE_BREAST_MAGIC_LEFT = "BreastMagic L" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RIGHT = "BreastMagic R" AutoReadOnly
string Property NINODE_LEFT_HAND_CME = "CME L Hand [LHnd]" AutoReadOnly
string Property NINODE_RIGHT_HAND_CME = "CME R Hand [RHnd]" AutoReadOnly	

;XPMSE specific (MOV)
string Property NINODE_AXE_DEFAULT_MOV = "MOV WeaponAxeDefault" AutoReadOnly
string Property NINODE_AXE_REVERSE_MOV = "MOV WeaponAxeReverse" AutoReadOnly
string Property NINODE_AXE_BACK_MOV = "MOV WeaponAxeOnBack" AutoReadOnly
string Property NINODE_AXE_LEFT_DEFAULT_MOV = "MOV WeaponAxeLeftDefault" AutoReadOnly
string Property NINODE_AXE_REVERSE_LEFT_MOV = "MOV WeaponAxeLeftReverse" AutoReadOnly
string Property NINODE_AXE_BACK_LEFT_MOV = "MOV WeaponAxeLeftOnBack" AutoReadOnly
string Property NINODE_MACE_DEFAULT_MOV = "MOV WeaponMaceDefault" AutoReadOnly
string Property NINODE_MACE_LEFT_DEFAULT_MOV = "MOV WeaponMaceLeftDefault" AutoReadOnly
string Property NINODE_SWORD_DEFAULT_MOV = "MOV WeaponSwordDefault" AutoReadOnly
string Property NINODE_SWORD_BACK_MOV = "MOV WeaponSwordOnBack" AutoReadOnly
string Property NINODE_SWORD_SWP_MOV = "MOV WeaponSwordSWP" AutoReadOnly
string Property NINODE_SWORD_FSM_MOV = "MOV WeaponSwordFSM" AutoReadOnly
string Property NINODE_SWORD_LEFTHIP_MOV = "MOV WeaponSwordLeftHip" AutoReadOnly
string Property NINODE_SWORD_NMD_MOV = "MOV WeaponSwordNMD" AutoReadOnly
string Property NINODE_SWORD_LEFT_DEFAULT_MOV = "MOV WeaponSwordLeftDefault" AutoReadOnly
string Property NINODE_SWORD_LEFT_BACK_MOV = "MOV WeaponSwordLeftOnBack" AutoReadOnly
string Property NINODE_SWORD_LEFT_SWP_MOV = "MOV WeaponSwordLeftSWP" AutoReadOnly
string Property NINODE_SWORD_LEFT_FSM_MOV = "MOV WeaponSwordLeftFSM" AutoReadOnly
string Property NINODE_SWORD_LEFT_LEFTHIP_MOV = "MOV WeaponSwordLeftLeftHip" AutoReadOnly
string Property NINODE_SWORD_LEFT_NMD_MOV = "MOV WeaponSwordLeftNMD" AutoReadOnly
string Property NINODE_DAGGER_DEFAULT_MOV = "MOV WeaponDaggerDefault" AutoReadOnly
string Property NINODE_DAGGER_BACKHIP_MOV = "MOV WeaponDaggerBackHip" AutoReadOnly
string Property NINODE_DAGGER_ANKLE_MOV = "MOV WeaponDaggerAnkle" AutoReadOnly
string Property NINODE_DAGGER_LEFT_DEFAULT_MOV = "MOV WeaponDaggerLeftDefault" AutoReadOnly
string Property NINODE_DAGGER_LEFT_BACKHIP_MOV = "MOV WeaponDaggerLeftBackHip" AutoReadOnly
string Property NINODE_DAGGER_LEFT_ANKLE_MOV = "MOV WeaponDaggerLeftAnkle" AutoReadOnly
string Property NINODE_WEAPON_BACK_DEFAULT_MOV = "MOV WeaponBackDefault" AutoReadOnly
string Property NINODE_WEAPON_BACK_SWP_MOV = "MOV WeaponBackSWP" AutoReadOnly
string Property NINODE_WEAPON_BACK_FSM_MOV = "MOV WeaponBackFSM" AutoReadOnly
string Property NINODE_WEAPON_BACK_AM_DEFAULT_MOV = "MOV WeaponBackAxeMaceDefault" AutoReadOnly
string Property NINODE_WEAPON_BACK_AM_SWP_MOV = "MOV WeaponBackAxeMaceSWP" AutoReadOnly
string Property NINODE_WEAPON_BACK_AM_FSM_MOV = "MOV WeaponBackAxeMaceFSM" AutoReadOnly
string Property NINODE_SHIELD_BACK_DEFAULT_MOV = "MOV ShieldBackDefault" AutoReadOnly
string Property NINODE_STAFF_DEFAULT_MOV = "MOV WeaponStaffDefault" AutoReadOnly
string Property NINODE_STAFF_LEFT_DEFAULT_MOV = "MOV WeaponStaffLeftDefault" AutoReadOnly
string Property NINODE_BOW_DEFAULT_MOV = "MOV WeaponBowDefault" AutoReadOnly
string Property NINODE_BOW_CHESKO_MOV = "MOV WeaponBowChesko" AutoReadOnly
string Property NINODE_BOW_BETTER_MOV = "MOV WeaponBowBetter" AutoReadOnly
string Property NINODE_BOW_FSM_MOV = "MOV WeaponBowFSM" AutoReadOnly
string Property NINODE_CROSSBOW_DEFAULT_MOV = "MOV WeaponCrossBowDefault" AutoReadOnly
string Property NINODE_CROSSBOW_CHESKO_MOV = "MOV WeaponCrossBowChesko" AutoReadOnly
string Property NINODE_QUIVER_DEFAULT_MOV = "MOV QUIVERDefault" AutoReadOnly
string Property NINODE_QUIVER_CHESKO_MOV = "MOV QUIVERChesko" AutoReadOnly
string Property NINODE_QUIVER_LEFTHIP_MOV = "MOV QUIVERLeftHipBolt" AutoReadOnly
string Property NINODE_BOLT_DEFAULT_MOV = "MOV BOLTDefault" AutoReadOnly
string Property NINODE_BOLT_CHESKO_MOV = "MOV BOLTChesko" AutoReadOnly
string Property NINODE_BOLT_LEFTHIP_MOV = "MOV BOLTLeftHipBolt" AutoReadOnly
string Property NINODE_BOLT_XP32_MOV = "MOV BOLTXP32" AutoReadOnly
string Property NINODE_BOLT_ABQ_MOV = "MOV BOLTABQ" AutoReadOnly

;Mod Keys
string Property PWS_PLUGIN = "XPMSE.esp" AutoReadOnly

string Property AXE_KEY = "RMWAxe" AutoReadOnly
string Property AXE_LEFT_KEY = "RMWAxeLeft" AutoReadOnly
string Property MACE_KEY = "RMWMace" AutoReadOnly
string Property MACE_LEFT_KEY = "RMWMaceLeft" AutoReadOnly
string Property SWORD_KEY = "RMWSword" AutoReadOnly
string Property SWORD_LEFT_KEY = "RMWSwordLeft" AutoReadOnly
string Property DAGGER_KEY = "RMWDagger" AutoReadOnly
string Property DAGGER_LEFT_KEY = "RMWDaggerLeft" AutoReadOnly
string Property TH_S_KEY = "RMWTwohandedSword" AutoReadOnly
string Property TH_AM_KEY = "RMWTwohandedAxe" AutoReadOnly
string Property SHIELD_KEY = "RMWShield" AutoReadOnly
string Property STAFF_KEY = "RMWStaff" AutoReadOnly
string Property STAFF_LEFT_KEY = "RMWStaffLeft" AutoReadOnly
string Property BOW_KEY = "RMWBow" AutoReadOnly
string Property CROSSBOW_KEY = "RMWCrossbow" AutoReadOnly
string Property QUIVER_KEY = "RMWQuiver" AutoReadOnly
string Property BOLT_KEY = "RMWBolt" AutoReadOnly
string Property SPEAR_KEY = "RMWSpear" AutoReadOnly
string Property SPEAR_LEFT_KEY = "RMWSpearLeft" AutoReadOnly

string Property AXE_ALL_KEY = "RMWAxeAll" AutoReadOnly
string Property AXE_LEFT_ALL_KEY = "RMWAxeLeftAll" AutoReadOnly
string Property MACE_ALL_KEY = "RMWMaceAll" AutoReadOnly
string Property MACE_LEFT_ALL_KEY = "RMWMaceLeftAll" AutoReadOnly
string Property SWORD_ALL_KEY = "RMWSwordAll" AutoReadOnly
string Property SWORD_LEFT_ALL_KEY = "RMWSwordLeftAll" AutoReadOnly
string Property DAGGER_ALL_KEY = "RMWDaggerAll" AutoReadOnly
string Property DAGGER_LEFT_ALL_KEY = "RMWDaggerLeftAll" AutoReadOnly
string Property TH_SWORD_ALL_KEY = "RMWTwohandeSwordAll" AutoReadOnly
string Property TH_AXE_ALL_KEY = "RMWTwohandeAxeAll" AutoReadOnly
string Property SHIELD_ALL_KEY = "RMWShieldAll" AutoReadOnly
string Property STAFF_ALL_KEY = "RMWStaffAll" AutoReadOnly
string Property STAFF_LEFT_ALL_KEY = "RMWStaffLeftAll" AutoReadOnly
string Property BOW_ALL_KEY = "RMWBowAll" AutoReadOnly
string Property CROSSBOW_ALL_KEY = "RMWCrossbowAll" AutoReadOnly
string Property QUIVER_ALL_KEY = "RMWQuiverAll" AutoReadOnly
string Property BOLT_ALL_KEY = "RMWBoltAll" AutoReadOnly
string Property SPEAR_ALL_KEY = "RMWSpearAll" AutoReadOnly
string Property SPEAR_LEFT_ALL_KEY = "RMWSpearLeftAll" AutoReadOnly

string Property MAGIC_KEY = "RMFMagic" AutoReadOnly
string Property MAGIC_LEFT_KEY = "RMFMagicLeft" AutoReadOnly
string Property SHOUT_KEY = "RMFShout" AutoReadOnly

string Property MAGIC_ALL_KEY = "RMFMagicAll" AutoReadOnly
string Property MAGIC_LEFT_ALL_KEY = "RMFMagicAll" AutoReadOnly
string Property SHOUT_ALL_KEY = "RMFShoutAll" AutoReadOnly

;FNIS
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

string Property XPMSE_AABase = "XPMSEAABase" AutoReadOnly
string Property XPMSE_AARange = "XPMSEAARange" AutoReadOnly
string Property XPMSE_AASave = "XPMSEAASave" AutoReadOnly
string Property XPMSE_AASaveCRC = "XPMSEAASaveCRC" AutoReadOnly


Spell Property XPMSEWeaponAbility Auto
Actor Property PlayerRef Auto
Keyword Property XPMSEWeaponStyleScaleKYWD Auto
Keyword Property SpearWeaponKYWD Auto
FormList Property XPMSEAmmoForms Auto

Bool IsPlayer = false
Actor ThisActor

bool Gender

int lastStyleRightHandType = -1
int lastStyleLeftHandType = -1
int lastStyleQuiverType = -1
Shout lastStyleShout
bool lastSpearRightHandType = false
bool lastSpearLeftHandType = false

int lastScaleRightHandType = -1
int lastScaleLeftHandType = -1

int LeftHand = 0
int RightHand = 1

bool delay
bool isRestyling
bool isRescaling

float defaultWEAPONScale = 1.0
float defaultSHIELDScale = 1.0

bool spearsMod = false

Event OnEffectStart(actor akTarget, actor akCaster)
	ThisActor = akTarget
	Gender = ThisActor.GetLeveledActorBase().GetSex() == 1
	IsPlayer = (ThisActor == PlayerRef)
	if (Game.GetModByName("Spears.esp") != 255)
    	spearsMod = true;
    	SpearWeaponKYWD = Game.GetFormFromFile(0x4340, "Spears.esp") as Keyword
    endif
	if !ThisActor.IsDead()
		if CheckXPMSERequirements(ThisActor, Gender)
			GotoState("Alive")
		endif
	else
		if CheckXPMSERequirements(ThisActor, Gender)
			GotoState("DeadLoaded")
		else
			GotoState("Dead")
		endif
	endif
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	CleanupAll()
EndEvent

State DeadLoaded
	Event onBeginState()
		Restyle(true)
		GotoState("Dead")
	endEvent
EndState

State Dead
	Event OnCellDetach()
		CleanupAll()
		DispellEffect()
	endEvent
EndState

State Alive
	Event onBeginState()
		Unregister()
		if CheckXPMSERequirements(ThisActor, Gender)
			Restyle(true)
			Rescale(true)
		EndIf
		Register()
	endEvent
	
	Event OnDying(actor akKiller)
		Unregister()
		GotoState("Dead")
	endEvent
	
	Event OnUnload()
		Unregister()
		CleanupAll()
		DispellEffect()
	endEvent
	
	Event OnCellDetach()
		Unregister()
		CleanupAll()
		DispellEffect()
	endEvent
	
	Event OnDetachedFromCell()
		Unregister()
		CleanupAll()
		DispellEffect()
	endEvent
		
	Event OnMCMClose(int unused)
		if ThisActor != none && ThisActor.Is3DLoaded() && !ThisActor.IsDisabled() && !ThisActor.IsDeleted()
			if !isPlayer && CheckCloakFlag()
				Unregister()
				CleanupAllPC()
				DispellEffect()
			endif
			if CheckXPMSERequirements(ThisActor, Gender)
				Restyle(true)	
			EndIf
		else
			DispellEffect()
		EndIf
	EndEvent
	
	Event OnWeaponUpdate()
		if ThisActor != none && ThisActor.Is3DLoaded() && !ThisActor.IsDisabled() && !ThisActor.IsDeleted()
			if CheckXPMSERequirements(ThisActor, Gender)
				Restyle(true)	
			EndIf
		else
			DispellEffect()
		EndIf
	EndEvent
	
	Event OnFNISaa_AnimVarsSet(string eventName, string strArg, float numArg, Form sender)
		if strArg == "PCEA2"
			if ThisActor != none && ThisActor.Is3DLoaded() && !ThisActor.IsDisabled() && !ThisActor.IsDeleted()
				if isPlayer
					if CheckXPMSERequirements(ThisActor, Gender)
						SaveFNISaas()
						Restyle(true)
					EndIf
				EndIf
			else
				DispellEffect()
			EndIf
		EndIf
	EndEvent
	
	Event OnPlayerCameraState(int oldState, int newState)
		if delay && oldState == 0 && (newState == 8 || newState == 9)
			delay = false
			if isPlayer
				if CheckXPMSERequirements(ThisActor, Gender)
					Restyle()
				else
					CleanupAllPC()
				endif
			endif
		EndIf	
	EndEvent
	
	Event OnRemoveAllSpells()
		if !isPlayer
			Unregister()
			CleanupAllPC()
			DispellEffect()
		endif
	EndEvent

	Event OnRaceSwitchComplete()
		if !isPlayer
			Unregister()
			Dispel()
			utility.Wait(0.500000)
			ThisActor.Addspell(XPMSEWeaponAbility, false)
		endif
	endEvent
	
	Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
		if CheckXPMSERequirements(ThisActor, Gender)
			Restyle()
			Rescale()
		else
			CleanupAllPC()
		endif
	endEvent
	
	Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
		if CheckXPMSERequirements(ThisActor, Gender)
			Restyle()
			Rescale()
		else
			CleanupAllPC()
		endif
	endEvent
EndState

Event OnMCMClose(int unused)
EndEvent

Event OnWeaponUpdate()
EndEvent

Event OnFNISaa_AnimVarsSet(string eventName, string strArg, float numArg, Form sender)
EndEvent

Event OnRemoveAllSpells()
EndEvent

Function Register()
	if (self as String) != "[XPMSEWeaponStyleScaleEffect <None>]"
		UnRegisterForModEvent("XPMSE_MCMClose") ; Needed because the new event has a parameter
		RegisterForModEvent("XPMSE_MCMClose", "OnMCMClose")
		RegisterForModEvent("XPMSE_WeaponUpdate", "OnWeaponUpdate")
		RegisterForModEvent("FNISaa_AnimVarsSet", "OnFNISaa_AnimVarsSet")
		RegisterForModEvent("XPMSE_RemoveAllSpells", "OnRemoveAllSpells")
		if IsPlayer
			RegisterForCameraState()
		endif
	endif
EndFunction

Function Unregister()
	if (self as String) != "[XPMSEWeaponStyleScaleEffect <None>]"
		UnregisterForAllModEvents()
		if IsPlayer
			UnregisterForCameraState()
		endif
	endif
EndFunction

Function DispellEffect()
	if (self as String) != "[XPMSEWeaponStyleScaleEffect <None>]" && ThisActor != none
		If ThisActor.HasMagicEffectWithKeyword(XPMSEWeaponStyleScaleKYWD)
			Dispel()
		endif
	endif
EndFunction

Function CleanupAll()
	if (self as String) != "[XPMSEWeaponStyleScaleEffect <None>]" && ThisActor != none && ThisActor.Is3DLoaded() && !ThisActor.IsDisabled() && !ThisActor.IsDeleted()
		if !IsPlayer || XPMSELib.isValidFNISaaCameraState()
			CleanupFNISaa()
		endif
	endif
	CleanupFNISaaSave()
	CleanupStyle()
	CleanupScale()
EndFunction

Function CleanupAllPC()
	if (self as String) != "[XPMSEWeaponStyleScaleEffect <None>]" && ThisActor != none && ThisActor.Is3DLoaded() && !ThisActor.IsDisabled() && !ThisActor.IsDeleted()
		CleanupFNISaa()
	endif
	CleanupFNISaaSave()
	CleanupStyle()
	CleanupScale()
EndFunction

Function CleanupStyle()
	if ThisActor != none
		Gender = ThisActor.GetLeveledActorBase().GetSex() == 1
		SetNodeParent(ThisActor, Gender, NINODE_SWORD, "")
		SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, "")
		SetNodeParent(ThisActor, Gender, NINODE_DAGGER, "")
		SetNodeParent(ThisActor, Gender, NINODE_DAGGER_LEFT, "")
		SetNodeParent(ThisActor, Gender, NINODE_AXE, "")
		SetNodeParent(ThisActor, Gender, NINODE_AXE_LEFT, "")
		SetNodeParent(ThisActor, Gender, NINODE_MACE, "")
		SetNodeParent(ThisActor, Gender, NINODE_MACE_LEFT, "")
		SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, "")
		SetNodeParent(ThisActor, Gender, NINODE_BOW, "")
		SetNodeParent(ThisActor, Gender, NINODE_QUIVER, "")
		SetNodeParent(ThisActor, Gender, NINODE_STAFF, "")
		SetNodeParent(ThisActor, Gender, NINODE_STAFF_LEFT, "")
		SetNodeParent(ThisActor, Gender, NINODE_MAGIC_RIGHT, "")
		SetNodeParent(ThisActor, Gender, NINODE_MAGIC_LEFT, "")
		SetNodeParent(ThisActor, Gender, NINODE_SHIELD_BACK, "")
		SetNodeParent(ThisActor, Gender, NINODE_SHOUT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_SWORD, "")
		SetNodeParent(ThisActor, !Gender, NINODE_SWORD_LEFT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_DAGGER, "")
		SetNodeParent(ThisActor, !Gender, NINODE_DAGGER_LEFT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_AXE, "")
		SetNodeParent(ThisActor, !Gender, NINODE_AXE_LEFT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_MACE, "")
		SetNodeParent(ThisActor, !Gender, NINODE_MACE_LEFT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_WEAPON_BACK, "")
		SetNodeParent(ThisActor, !Gender, NINODE_BOW, "")
		SetNodeParent(ThisActor, !Gender, NINODE_QUIVER, "")
		SetNodeParent(ThisActor, !Gender, NINODE_STAFF, "")
		SetNodeParent(ThisActor, !Gender, NINODE_STAFF_LEFT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_MAGIC_RIGHT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_MAGIC_LEFT, "")
		SetNodeParent(ThisActor, !Gender, NINODE_SHIELD_BACK, "")
		SetNodeParent(ThisActor, !Gender, NINODE_SHOUT, "")
	endif
EndFunction

Function CleanupFNISaaSave()
	if ThisActor != none
		ClearFNISData(ThisActor, XPMSE_AAGroup_1hmeqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_dageqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_axeeqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_maceqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_2hmeqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_2hweqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_bowatk)
		ClearFNISData(ThisActor, XPMSE_AAGroup_boweqp)
		ClearFNISData(ThisActor, XPMSE_AAGroup_bowidle)
		ClearFNISData(ThisActor, XPMSE_AAGroup_magatk)
		ClearFNISData(ThisActor, XPMSE_AAGroup_magcastmt)
		ClearFNISData(ThisActor, XPMSE_AAGroup_magcon)
		ClearFNISData(ThisActor, XPMSE_AAGroup_magidle)
		ClearFNISData(ThisActor, XPMSE_AAGroup_magmt)
		ClearFNISData(ThisActor, XPMSE_AAGroup_sprint)
		ClearFNISData(ThisActor, XPMSE_AAGroup_shout)
	endif
EndFunction

Function CleanupFNISaa()
	if ThisActor != none && ThisActor.Is3DLoaded() && !ThisActor.IsDisabled() && !ThisActor.IsDeleted()
		SaveFNISaas()
		SetAA(ThisActor, XPMSE_AAGroup_1hmeqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_1hmeqp))
		SetAA(ThisActor, XPMSE_AAGroup_dageqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_dageqp))
		SetAA(ThisActor, XPMSE_AAGroup_axeeqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_axeeqp))
		SetAA(ThisActor, XPMSE_AAGroup_maceqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_maceqp))
		SetAA(ThisActor, XPMSE_AAGroup_2hweqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_2hweqp))
		SetAA(ThisActor, XPMSE_AAGroup_2hmeqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_2hmeqp))
		SetAA(ThisActor, XPMSE_AAGroup_bowatk, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_bowatk))
		SetAA(ThisActor, XPMSE_AAGroup_boweqp, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_boweqp))
		SetAA(ThisActor, XPMSE_AAGroup_bowidle, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_bowidle))
		SetAA(ThisActor, XPMSE_AAGroup_magatk, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magatk))
		SetAA(ThisActor, XPMSE_AAGroup_magcastmt, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magcastmt))
		SetAA(ThisActor, XPMSE_AAGroup_magcon, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magcon))
		SetAA(ThisActor, XPMSE_AAGroup_magidle, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magidle))
		SetAA(ThisActor, XPMSE_AAGroup_magmt, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magmt))
		SetAA(ThisActor, XPMSE_AAGroup_sprint, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_sprint))
		SetAA(ThisActor, XPMSE_AAGroup_shout, 0, 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_shout))
	endif
EndFunction

Function SaveFNISaas()
	SaveFNISData(ThisActor, XPMSE_AAGroup_1hmeqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_dageqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_axeeqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_maceqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_2hmeqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_2hweqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_bowatk)
	SaveFNISData(ThisActor, XPMSE_AAGroup_boweqp)
	SaveFNISData(ThisActor, XPMSE_AAGroup_bowidle)
	SaveFNISData(ThisActor, XPMSE_AAGroup_magatk)
	SaveFNISData(ThisActor, XPMSE_AAGroup_magcastmt)
	SaveFNISData(ThisActor, XPMSE_AAGroup_magcon)
	SaveFNISData(ThisActor, XPMSE_AAGroup_magidle)
	SaveFNISData(ThisActor, XPMSE_AAGroup_magmt)
	SaveFNISData(ThisActor, XPMSE_AAGroup_sprint)
	SaveFNISData(ThisActor, XPMSE_AAGroup_shout)
EndFunction

Function CleanupScale()
	if Game.GetModByName("CharacterMakingExtender.esp") == 255
		Gender = ThisActor.GetLeveledActorBase().GetSex() == 1
		SetNodeScale(ThisActor, Gender, NINODE_WEAPON, defaultWEAPONScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, Gender, NINODE_SHIELD, defaultSHIELDScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, Gender, NINODE_SHIELD_BACK, defaultSHIELDScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, Gender, NINODE_PREWEAPON, defaultWEAPONScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, Gender, NINODE_PRESHIELD, defaultSHIELDScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, !Gender, NINODE_WEAPON, defaultWEAPONScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, !Gender, NINODE_SHIELD, defaultSHIELDScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, !Gender, NINODE_SHIELD_BACK, defaultSHIELDScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, !Gender, NINODE_PREWEAPON, defaultWEAPONScale, PWS_PLUGIN)
		SetNodeScale(ThisActor, !Gender, NINODE_PRESHIELD, defaultSHIELDScale, PWS_PLUGIN)
	endif
EndFunction

Function Restyle(bool forceUpdate = false)
    if isRestyling && !forceUpdate
            return
    endif
    isRestyling = true
	Gender = ThisActor.GetLeveledActorBase().GetSex() == 1
	If CheckXPMSERequirements(ThisActor, Gender) && ThisActor.GetLeveledActorBase().GetSex() != -1 && ThisActor.is3dLoaded()
		int rightHandType = ThisActor.GetEquippedItemType(RightHand)
		int leftHandType = ThisActor.GetEquippedItemType(LeftHand)
		int quiverType = GetWornAmmoType(ThisActor)
		Shout thisShout = ThisActor.GetEquippedShout()
		int FNIS_CRC = FNIS_aa.GetInstallationCRC()
		bool checkAA = false
		
		float style = 0.0
		float styleL = 0.0
		
		;Memory
		float styleSword = 0.0
		float styleDagger = 0.0
		float styleAxe = 0.0
		float styleShield = 0.0

		;Spears
        bool spear = false
        bool spearLeft = false
        if (spearsMod && rightHandType == 1)
        	spear = (ThisActor.GetEquippedWeapon(RightHand) as Weapon).HasKeyword(SpearWeaponKYWD)
        endif
        if (spearsMod && leftHandType == 1)
        	spearLeft = (ThisActor.GetEquippedWeapon(LeftHand) as Weapon).HasKeyword(SpearWeaponKYWD)
        endif
		
		bool diffR = rightHandType != lastStyleRightHandType || lastSpearRightHandType != spear || forceUpdate
		lastStyleRightHandType = rightHandType
		lastSpearRightHandType = spear
		bool diffL = leftHandType != lastStyleLeftHandType || lastSpearLeftHandType != spearLeft || forceUpdate
		lastStyleLeftHandType = leftHandType
		lastSpearLeftHandType = spearLeft
		bool diffQ = QuiverType != lastStyleQuiverType || forceUpdate
		lastStyleQuiverType = QuiverType
		bool diffS = thisShout != lastStyleShout || forceUpdate
		lastStyleShout = thisShout
		
		bool randomize = CheckRandomizerFlag() as bool
		bool dualwield = (CheckDualWieldAnimationFlag(ThisActor) as bool)
		bool board = (CheckBoardAnimationFlag(ThisActor) as bool)
		bool mixed = (CheckMixedAnimationFlag(ThisActor) as bool)
		If !IsPlayer 
			dualwield = (CheckDualWieldAnimationFlagAll() as bool)
			board = (CheckBoardAnimationFlagAll() as bool)
			mixed = (CheckMixedAnimationFlagAll() as bool)
		endif
		
		int isDualWielding = (XPMSELib.isValidForDualWieldingInt(ThisActor) && dualwield) as int
		bool isUsingSwordLeft = (leftHandType == 1)
		bool isUsingDaggerLeft = (leftHandType == 2)
		bool isUsingAxeLeft = (leftHandType == 3)
		bool isUsingShield = (leftHandType == 10)
		bool isUsingShieldDSR = isUsingShield && board
		;(isUsingShield && Game.GetModByName("Dual Sheath Redux.esp") != 255)
		
		;Sword(Left)
		If (diffL || isUsingSwordLeft)
			if (!spearLeft)
                styleSword = ReadXPMSEData(ThisActor, SWORD_LEFT_KEY, 1) - 1
                If (!IsPlayer && styleSword < 0.0)
                    if randomize
                        styleSword = ReadXPMSEData(ThisActor, SWORD_LEFT_KEY, 2)
                    else
                        styleSword = ReadXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1)
                    endif
            	Endif
            else
                styleSword = ReadXPMSEData(ThisActor, SPEAR_LEFT_KEY, 1) - 1
            	If (!IsPlayer && styleSword < 0.0)
            		if randomize
            			styleSword = ReadXPMSEData(ThisActor, SPEAR_LEFT_KEY, 2)
            		else
                		styleSword = ReadXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1)
            		endif
            	Endif
            endif
		Endif
		
		;Dagger (Left) Prefetch
		If (diffL || isUsingDaggerLeft)
			styleDagger = ReadXPMSEData(ThisActor, DAGGER_LEFT_KEY, 1) - 1
			If (!IsPlayer && styleDagger < 0.0)
				if randomize
					styleDagger = ReadXPMSEData(ThisActor, DAGGER_LEFT_KEY, 2)
				else
					styleDagger = ReadXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1)
				endif
			Endif
		Endif
		
		;Axe (Left) Prefetch
		If (diffL || isUsingAxeLeft)
			styleAxe = ReadXPMSEData(ThisActor, AXE_LEFT_KEY, 1) - 1
			If (!IsPlayer && styleAxe < 0.0)
				if randomize
					styleAxe = ReadXPMSEData(ThisActor, AXE_LEFT_KEY, 2)
				else
					styleAxe = ReadXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1)
				endif
			Endif
		EndIf
		
		;Shield Prefetch
		If (diffL || isUsingShield)
			styleShield = ReadXPMSEData(ThisActor, SHIELD_KEY, 1) - 1
			If (!IsPlayer && styleShield < 0.0)
				if randomize
					styleShield = ReadXPMSEData(ThisActor, SHIELD_KEY, 2)
				else
					styleShield = ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1)
				endif
			Endif
		Endif
		
		if !delay && IsPlayer
			int handle = ModEvent.Create("XPMSE_ReStyleComplete")
			if (handle)
				ModEvent.PushInt(handle, 0)
				ModEvent.Send(handle)
			endIf
		endif
		
		;Restyling
		;Sword
		If (rightHandType == 1 || isUsingSwordLeft)
			;Sword(Right)
			if (!spear)
            	style = ReadXPMSEData(ThisActor, SWORD_KEY, 1) - 1
            	If (!IsPlayer && style < 0.0)
            		if randomize
            			style = ReadXPMSEData(ThisActor, SWORD_KEY, 2)
              		else
            			style = ReadXPMSEData(PlayerRef, SWORD_ALL_KEY, 1)
            		endif
            	Endif
            else
            	style = ReadXPMSEData(ThisActor, SPEAR_KEY, 1) - 1
            	If (!IsPlayer && style < 0.0)
            		if randomize
            			style = ReadXPMSEData(ThisActor, SPEAR_KEY, 2)
            		else
            			style = ReadXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1)
            		endif
            	Endif
            endif
			;Sword(Left)
			If (diffL)
				styleL = styleSword
			Endif
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_1hmeqp)
			if checkAA 
				If style == 1.0 || style == 2.0
					if (isUsingDaggerLeft && styleDagger == 1.0) && mixed
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_1hmeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_1hmeqp, 0), 5, GetFNISSaveData(ThisActor, XPMSE_AAGroup_1hmeqp))
					else
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_1hmeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_1hmeqp, 0), (1*2)+isDualWielding, GetFNISSaveData(ThisActor, XPMSE_AAGroup_1hmeqp))
					endif
				else
					If (isUsingShieldDSR && styleShield <= 0.0)
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_1hmeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_1hmeqp, 0), 4, GetFNISSaveData(ThisActor, XPMSE_AAGroup_1hmeqp))
					else
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_1hmeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_1hmeqp, 0), (0*2)+isDualWielding, GetFNISSaveData(ThisActor, XPMSE_AAGroup_1hmeqp))
					endif	
				EndIf
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			;NIO
			If (diffR)
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, NINODE_SWORD_BACK_MOV)
				ElseIf style == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, NINODE_SWORD_SWP_MOV)
				ElseIf style == 3.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, NINODE_SWORD_FSM_MOV)
				ElseIf style == 4.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, NINODE_SWORD_LEFTHIP_MOV)
				ElseIf style == 5.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, NINODE_SWORD_NMD_MOV)
				else
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, NINODE_SWORD_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_SWORD, "")
				EndIf
			EndIf
			If (diffL)
				If styleL == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, NINODE_SWORD_LEFT_BACK_MOV)
				ElseIf styleL == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, NINODE_SWORD_LEFT_SWP_MOV)
				ElseIf styleL == 3.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, NINODE_SWORD_LEFT_FSM_MOV)
				ElseIf styleL == 4.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, NINODE_SWORD_LEFT_LEFTHIP_MOV)
				ElseIf styleL == 5.0
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, NINODE_SWORD_LEFT_NMD_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, NINODE_SWORD_LEFT_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_SWORD_LEFT, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 1)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		;Dagger
		If (rightHandType == 2 || isUsingDaggerLeft)
			;Dagger (Right)
			style = ReadXPMSEData(ThisActor, DAGGER_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, DAGGER_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1)
				endif
			Endif
			;Dagger (Left)
			If (diffL)
				styleL = styleDagger
			Endif
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_dageqp)
			if checkAA 
				if (style == 1.0 && ((isUsingSwordLeft && (styleSword == 1.0 || styleSword == 2.0)) || (isUsingAxeLeft && styleAxe == 2.0))) && mixed
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_dageqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_dageqp, 0), 6, GetFNISSaveData(ThisActor, XPMSE_AAGroup_dageqp))
				else
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_dageqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_dageqp, 0), (style*2)+isDualWielding, GetFNISSaveData(ThisActor, XPMSE_AAGroup_dageqp))
				endif
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			;NIO
			If (diffR)
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER, NINODE_DAGGER_BACKHIP_MOV)
				ElseIf style == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER, NINODE_DAGGER_ANKLE_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER, NINODE_DAGGER_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER, "")
				EndIf
			EndIf
			If (diffL)
				If styleL == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER_LEFT, NINODE_DAGGER_LEFT_BACKHIP_MOV)
				ElseIf styleL == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER_LEFT, NINODE_DAGGER_LEFT_ANKLE_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER_LEFT, NINODE_DAGGER_LEFT_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_DAGGER_LEFT, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 2)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		;Axe
		If (rightHandType == 3 || isUsingAxeLeft)
			;Axe (Right)
			style = ReadXPMSEData(ThisActor, AXE_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, AXE_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, AXE_ALL_KEY, 1)
				endif
			Endif
			;Axe (Left)
			If (diffL)
				styleL = styleAxe
			EndIf
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_axeeqp)
			if checkAA 
				If style == 2.0
					if (isUsingDaggerLeft && styleDagger == 1.0) && mixed
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_axeeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_axeeqp, 0), 5, GetFNISSaveData(ThisActor, XPMSE_AAGroup_axeeqp))
					else
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_axeeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_axeeqp, 0), (1*2)+isDualWielding, GetFNISSaveData(ThisActor, XPMSE_AAGroup_axeeqp))
					endif
				else
					If (isUsingShieldDSR && styleShield <= 0.0)
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_axeeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_axeeqp, 0), 4, GetFNISSaveData(ThisActor, XPMSE_AAGroup_axeeqp))
					else
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_axeeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_axeeqp, 0), (0*2)+isDualWielding, GetFNISSaveData(ThisActor, XPMSE_AAGroup_axeeqp))
					endif
				EndIf
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			;NIO
			If (diffR)
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_AXE, NINODE_AXE_REVERSE_MOV)
				ElseIf style == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_AXE, NINODE_AXE_BACK_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_AXE, NINODE_AXE_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_AXE, "")
				EndIf
			EndIf
			If (diffL)
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_AXE_LEFT, NINODE_AXE_REVERSE_LEFT_MOV)
				ElseIf style == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_AXE_LEFT, NINODE_AXE_BACK_LEFT_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_AXE_LEFT, NINODE_AXE_LEFT_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_AXE_LEFT, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 3)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		;Mace
		If (rightHandType == 4 || leftHandType == 4)
			;Mace (Right)
			style = ReadXPMSEData(ThisActor, MACE_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, MACE_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, MACE_ALL_KEY, 1)
				endif
			Endif
			;Mace (Left)
			If (diffL)
				style = ReadXPMSEData(ThisActor, MACE_LEFT_KEY, 1) - 1
				If (!IsPlayer && style < 0.0)
					if randomize
						style = ReadXPMSEData(ThisActor, MACE_LEFT_KEY, 2)
					else
						style = ReadXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1)
					endif
				Endif
			Endif
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_maceqp)
			if checkAA 
				If (isUsingShieldDSR && styleShield <= 0.0)
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_maceqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_maceqp, 0), 2, GetFNISSaveData(ThisActor, XPMSE_AAGroup_maceqp))
				else
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_maceqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_maceqp, 0), (style*2)+isDualWielding, GetFNISSaveData(ThisActor, XPMSE_AAGroup_maceqp))
				endif
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			;NIO
			If (diffR)
				If style == 1.0
				Else
					SetNodeParent(ThisActor, Gender, NINODE_MACE, NINODE_MACE_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_MACE, "")
				EndIf
			EndIf
			If (diffL)
				If style == 1.0
				Else
					SetNodeParent(ThisActor, Gender, NINODE_MACE_LEFT, NINODE_MACE_LEFT_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_MACE_LEFT, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 4)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		;Two-Handed
		If (rightHandType == 5 || rightHandType == 6)
			If (rightHandType == 5)
				;Greatsword
				style = ReadXPMSEData(ThisActor, TH_S_KEY, 1) - 1
				If (!IsPlayer && style < 0.0)
					if randomize
						style = ReadXPMSEData(ThisActor, TH_S_KEY, 2)
					else
						style = ReadXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1)
					endif
				Endif
				;FNIS AA
				checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_2hmeqp)
				if checkAA 
					If style == 2.0
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_2hmeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_2hmeqp, 0), 1, GetFNISSaveData(ThisActor, XPMSE_AAGroup_2hmeqp))
					Else
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_2hmeqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_2hmeqp, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_2hmeqp))
					Endif
					if !checkAA
						delay = true
					endif
				Else
					delay = true
				EndIf
				;NIO
				if (diffR)
					If style == 1.0
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, NINODE_WEAPON_BACK_SWP_MOV)
					ElseIf style == 2.0
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, NINODE_WEAPON_BACK_FSM_MOV)
					Else
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, NINODE_WEAPON_BACK_DEFAULT_MOV)
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, "")
					EndIf
				EndIf
				if !delay && IsPlayer
					int handle = ModEvent.Create("XPMSE_ReStyleComplete")
					if (handle)		
						ModEvent.PushInt(handle, 5)
						ModEvent.Send(handle)
					endIf
				endif
			ElseIf (rightHandType == 6)
				;Greataxe
				style = ReadXPMSEData(ThisActor, TH_AM_KEY, 1) - 1
				If (!IsPlayer && style < 0.0)
					if randomize
						style = ReadXPMSEData(ThisActor, TH_AM_KEY, 2)
					else
						style = ReadXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1)
					endif
				Endif
				;FNIS AA
				checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_2hweqp)
				if checkAA 
					If style == 2.0
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_2hweqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_2hweqp, 0), 1, GetFNISSaveData(ThisActor, XPMSE_AAGroup_2hweqp))
					Else
						checkAA = SetAA(ThisActor, XPMSE_AAGroup_2hweqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_2hweqp, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_2hweqp))
					Endif
					if !checkAA
						delay = true
					endif
				Else
					delay = true
				EndIf
				;NIO
				if (diffR)
					If style == 1.0
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, NINODE_WEAPON_BACK_AM_SWP_MOV)
					ElseIf style == 2.0
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, NINODE_WEAPON_BACK_AM_FSM_MOV)
					Else
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, NINODE_WEAPON_BACK_AM_DEFAULT_MOV)
						SetNodeParent(ThisActor, Gender, NINODE_WEAPON_BACK, "")
					EndIf
				EndIf
				if !delay && IsPlayer
					int handle = ModEvent.Create("XPMSE_ReStyleComplete")
					if (handle)
						ModEvent.PushInt(handle, 6)
						ModEvent.Send(handle)
					endIf
				endif
			Endif
		EndIf
		
		If (rightHandType == 7 || rightHandType == 12)
			If (rightHandType == 7)
				;Bow
				style = ReadXPMSEData(ThisActor, BOW_KEY, 1) - 1
				If (!IsPlayer && style < 0.0)
					if randomize
						style = ReadXPMSEData(ThisActor, BOW_KEY, 2)
					else
						style = ReadXPMSEData(PlayerRef, BOW_ALL_KEY, 1)
					endif
				Endif
				If (diffR)
					If style == 1.0
						SetNodeParent(ThisActor, Gender, NINODE_BOW, NINODE_BOW_CHESKO_MOV)
					ElseIf style == 2.0
						SetNodeParent(ThisActor, Gender, NINODE_BOW, NINODE_BOW_BETTER_MOV)
					ElseIf style == 3.0
						SetNodeParent(ThisActor, Gender, NINODE_BOW, NINODE_BOW_FSM_MOV)
					Else
						SetNodeParent(ThisActor, Gender, NINODE_BOW, NINODE_BOW_DEFAULT_MOV)
						SetNodeParent(ThisActor, Gender, NINODE_BOW, "")
					EndIf
				EndIf
				if !delay && IsPlayer
					int handle = ModEvent.Create("XPMSE_ReStyleComplete")
					if (handle)
						ModEvent.PushInt(handle, 7)
						ModEvent.Send(handle)
					endIf
				endif
			ElseIf (rightHandType == 12)
				;Crossbow
				style = ReadXPMSEData(ThisActor, CROSSBOW_KEY, 1) - 1
				If (!IsPlayer && style < 0.0)
					if randomize
						style = ReadXPMSEData(ThisActor, CROSSBOW_KEY, 2)
					else
						style = ReadXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1)
					endif
				Endif
				If (diffR)
					If style == 1.0
						SetNodeParent(ThisActor, Gender, NINODE_BOW, NINODE_CROSSBOW_CHESKO_MOV)
					Else
						SetNodeParent(ThisActor, Gender, NINODE_BOW, NINODE_CROSSBOW_DEFAULT_MOV)
						SetNodeParent(ThisActor, Gender, NINODE_BOW, "")
					EndIf
				EndIf
				if !delay && IsPlayer
					int handle = ModEvent.Create("XPMSE_ReStyleComplete")
					if (handle)
						ModEvent.PushInt(handle, 12)
						ModEvent.Send(handle)
					endIf
				endif
			Endif
		EndIf
		
		;Staff
		If (rightHandType == 8 || leftHandType == 8)
			;Staff (Right)
			style = ReadXPMSEData(ThisActor, STAFF_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, STAFF_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, STAFF_ALL_KEY, 1)
				endif
			Endif
			;Staff (Left)
			If (diffL)
				styleL = ReadXPMSEData(ThisActor, STAFF_LEFT_KEY, 1) - 1
				If (!IsPlayer && styleL < 0.0)
					if randomize
						styleL = ReadXPMSEData(ThisActor, STAFF_LEFT_KEY, 2)
					else
						styleL = ReadXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1)
					endif
				Endif
			Endif
			if (diffR)
				If style == 1.0
				Else
					SetNodeParent(ThisActor, Gender, NINODE_STAFF, NINODE_STAFF_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_STAFF, "")
				EndIf
			EndIf
			If (diffL)
				If styleL == 1.0
				Else
					SetNodeParent(ThisActor, Gender, NINODE_STAFF_LEFT, NINODE_STAFF_LEFT_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_STAFF_LEFT, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 8)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		
		;Magic
		If (rightHandType == 9 || leftHandType == 9 || rightHandType == 7 || rightHandType == 12)
			If !Gender || rightHandType == 7 || rightHandType == 12
				style = 0.0
				styleL = 0.0
			Else
				;Magic (Right)
				style = ReadXPMSEData(ThisActor, MAGIC_KEY, 1) - 1
				If (!IsPlayer && style < 0.0)
					if randomize
						style = ReadXPMSEData(ThisActor, MAGIC_KEY, 2)
					else
						style = ReadXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1)
					endif
				Endif
				;Magic (Left)
				styleL = ReadXPMSEData(ThisActor, MAGIC_LEFT_KEY, 1) - 1
				If (!IsPlayer && styleL < 0.0)
					if randomize
						styleL = ReadXPMSEData(ThisActor, MAGIC_LEFT_KEY, 2)
					else
						styleL = ReadXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1)
					endif
				Endif
			Endif
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_magatk)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_magatk, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magatk, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magatk))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_magcastmt)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_magcastmt, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magcastmt, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magcastmt))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_magcon)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_magcon, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magcon, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magcon))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_magidle)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_magidle, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magidle, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magidle))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_magmt)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_magmt, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_magmt, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_magmt))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_sprint)
			if checkAA 
				if rightHandType == 9
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_sprint, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_sprint, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_sprint))
				else
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_sprint, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_sprint, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_sprint))
				endif
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			;NIO
			If style == 1.0
				SetNodeParent(ThisActor, Gender, NINODE_MAGIC_RIGHT, NINODE_BREAST_MAGIC_RIGHT)
			Else
				SetNodeParent(ThisActor, Gender, NINODE_MAGIC_RIGHT, NINODE_RIGHT_HAND_CME)
				SetNodeParent(ThisActor, Gender, NINODE_MAGIC_RIGHT, "")
			EndIf
			If styleL == 1.0
				SetNodeParent(ThisActor, Gender, NINODE_MAGIC_LEFT, NINODE_BREAST_MAGIC_LEFT)
			Else
				SetNodeParent(ThisActor, Gender, NINODE_MAGIC_LEFT, NINODE_LEFT_HAND_CME)
				SetNodeParent(ThisActor, Gender, NINODE_MAGIC_LEFT, "")
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 9)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		If (rightHandType != 9 && leftHandType != 9)
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_sprint)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_sprint, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_sprint, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_sprint))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
		endif
		
		;Shield
		If (isUsingShield)
			styleL = styleShield
			if (diffL)
				If styleL == 1.0
				Else
					SetNodeParent(ThisActor, Gender, NINODE_SHIELD_BACK, NINODE_SHIELD_BACK_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_SHIELD_BACK, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 10)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		if !delay && IsPlayer
			int handle = ModEvent.Create("XPMSE_ReStyleComplete")
			if (handle)
				ModEvent.PushInt(handle, 11)
				ModEvent.Send(handle)
			endIf
		endif
		
		;Shout
		If diffS
			style = ReadXPMSEData(ThisActor, SHOUT_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, SHOUT_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, SHOUT_ALL_KEY, 1)
				endif
			Endif
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_shout)
			if checkAA 
				checkAA = SetAA(ThisActor, XPMSE_AAGroup_shout, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_shout, 0), style, GetFNISSaveData(ThisActor, XPMSE_AAGroup_shout))
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			If diffS
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_SHOUT, NINODE_SCHLONG_MAGIC)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_SHOUT, NINODE_HEAD)
					SetNodeParent(ThisActor, Gender, NINODE_SHOUT, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 13)
					ModEvent.Send(handle)
				endIf
			endif
		EndIf
		
		if QuiverType == 0
			;Arrow
			style = ReadXPMSEData(ThisActor, QUIVER_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, QUIVER_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1)
				endif
			Endif
			;FNIS AA
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_bowatk)
			if checkAA 
				If style == 1.0 || style == 2.0
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_bowatk, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_bowatk, 0), 1, GetFNISSaveData(ThisActor, XPMSE_AAGroup_bowatk))
				Else
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_bowatk, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_bowatk, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_bowatk))
				EndIf
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_boweqp)
			if checkAA 
				If style == 1.0 || style == 2.0
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_boweqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_boweqp, 0), 1, GetFNISSaveData(ThisActor, XPMSE_AAGroup_boweqp))
				Else
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_boweqp, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_boweqp, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_boweqp))
				EndIf
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			checkAA = SaveFNISData(ThisActor, XPMSE_AAGroup_bowidle)
			if checkAA 
				If style == 1.0 || style == 2.0
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_bowidle, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_bowidle, 0), 1, GetFNISSaveData(ThisActor, XPMSE_AAGroup_bowidle))
				Else
					checkAA = SetAA(ThisActor, XPMSE_AAGroup_bowidle, ReadXPMSEData(PlayerRef, XPMSE_AABase + XPMSE_AAGroup_bowidle, 0), 0, GetFNISSaveData(ThisActor, XPMSE_AAGroup_bowidle))
				EndIf
				if !checkAA
					delay = true
				endif
			Else
				delay = true
			EndIf
			if diffQ
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_QUIVER_CHESKO_MOV)
				ElseIf style == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_QUIVER_LEFTHIP_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_QUIVER_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 14)
					ModEvent.Send(handle)
				endIf
			endif
		ElseIf QuiverType == 1
			;Bolt
			style = ReadXPMSEData(ThisActor, BOLT_KEY, 1) - 1
			If (!IsPlayer && style < 0.0)
				if randomize
					style = ReadXPMSEData(ThisActor, BOLT_KEY, 2)
				else
					style = ReadXPMSEData(PlayerRef, BOLT_ALL_KEY, 1)
				endif
			Endif
			if diffQ
				If style == 1.0
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_BOLT_CHESKO_MOV)
				ElseIf style == 2.0
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_BOLT_LEFTHIP_MOV)
				ElseIf style == 3.0
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_BOLT_XP32_MOV)
				ElseIf style == 4.0
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_BOLT_ABQ_MOV)
				Else
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, NINODE_BOLT_DEFAULT_MOV)
					SetNodeParent(ThisActor, Gender, NINODE_QUIVER, "")
				EndIf
			EndIf
			if !delay && IsPlayer
				int handle = ModEvent.Create("XPMSE_ReStyleComplete")
				if (handle)
					ModEvent.PushInt(handle, 15)
					ModEvent.Send(handle)
				endIf
			endif
		endif
		
		if !delay && IsPlayer
			SendModEvent("FNISaa_AnimVarsSet", "XPMSE")
		
			int handle = ModEvent.Create("XPMSE_ReStyleComplete")
			if (handle)
				ModEvent.PushInt(handle, 16)
				ModEvent.Send(handle)
			endIf
		endif
	EndIf
	isRestyling = false
endFunction

Function Rescale(bool forceUpdate = false)
    if isRescaling && !forceUpdate
            return
    endif
    isRescaling = true
	Gender = ThisActor.GetLeveledActorBase().GetSex() == 1
	If CheckXPMSERequirements(ThisActor, Gender) && ThisActor.GetLeveledActorBase().GetSex() != -1  && Game.GetModByName("CharacterMakingExtender.esp") == 255 && ThisActor.is3dLoaded()
		int rightHandType = ThisActor.GetEquippedItemType(RightHand)
		int leftHandType = ThisActor.GetEquippedItemType(LeftHand)
			
		bool diffR = rightHandType != lastScaleRightHandType || forceUpdate
		lastScaleRightHandType = rightHandType
		bool diffL = leftHandType != lastScaleLeftHandType || forceUpdate
		lastScaleLeftHandType = leftHandType
		
		;Dynamic Rescaling
		If diffR
			SetNodeScale(ThisActor, Gender, NINODE_WEAPON, defaultWEAPONScale, PWS_PLUGIN)
			SetNodeScale(ThisActor, Gender, NINODE_PREWEAPON, defaultWEAPONScale, PWS_PLUGIN)
			
			If (rightHandType == 1)
				SetNodeScale(ThisActor, Gender, NINODE_WEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)) * GetNodeScaleRM(ThisActor, Gender, NINODE_SWORD) * GetNodeScaleRMW(ThisActor, Gender, NINODE_SWORD), PWS_PLUGIN)
			ElseIf (rightHandType == 2)
				SetNodeScale(ThisActor, Gender, NINODE_WEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_DAGGER), PWS_PLUGIN)
			ElseIf (rightHandType == 3)
				SetNodeScale(ThisActor, Gender, NINODE_WEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)) * GetNodeScaleRM(ThisActor, Gender, NINODE_AXE) * GetNodeScaleRMW(ThisActor, Gender, NINODE_AXE), PWS_PLUGIN)
			ElseIf (rightHandType == 4)
				SetNodeScale(ThisActor, Gender, NINODE_WEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)) * GetNodeScaleRM(ThisActor, Gender, NINODE_MACE) * GetNodeScaleRMW(ThisActor, Gender, NINODE_MACE), PWS_PLUGIN)
			ElseIf (rightHandType == 5) || (rightHandType == 6)
				SetNodeScale(ThisActor, Gender, NINODE_WEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)) * GetNodeScaleRM(ThisActor, Gender, NINODE_WEAPON_BACK) * GetNodeScaleRMW(ThisActor, Gender, NINODE_WEAPON_BACK), PWS_PLUGIN)
			ElseIf (rightHandType == 7) || (rightHandType == 12)
				SetNodeScale(ThisActor, Gender, NINODE_PREWEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)), PWS_PLUGIN)					
			ElseIf (rightHandType == 8)
				SetNodeScale(ThisActor, Gender, NINODE_WEAPON, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_RIGHT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_RIGHT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_STAFF), PWS_PLUGIN)
			EndIf
		EndIf
		
		If diffL
			SetNodeScale(ThisActor, Gender, NINODE_SHIELD, defaultSHIELDScale, PWS_PLUGIN)
			SetNodeScale(ThisActor, Gender, NINODE_SHIELD_BACK, defaultSHIELDScale, PWS_PLUGIN)
			SetNodeScale(ThisActor, Gender, NINODE_PRESHIELD, defaultSHIELDScale, PWS_PLUGIN)
			
			If (leftHandType == 1)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_SWORD_LEFT), PWS_PLUGIN)
			ElseIf (leftHandType == 2)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_DAGGER_LEFT), PWS_PLUGIN)
			ElseIf (leftHandType == 3)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_AXE_LEFT), PWS_PLUGIN)
			ElseIf (leftHandType == 4)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_MACE_LEFT), PWS_PLUGIN)
			ElseIf (leftHandType == 5) || (leftHandType == 6)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * (GetNodeScaleRM(ThisActor, Gender, NINODE_WEAPON_BACK)) * (GetNodeScaleRMW(ThisActor, Gender, NINODE_WEAPON_BACK)), PWS_PLUGIN)
			ElseIf (leftHandType == 7) || (leftHandType == 12)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)), PWS_PLUGIN)
			ElseIf (leftHandType == 8)
				SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_STAFF_LEFT), PWS_PLUGIN)
			ElseIf (leftHandType == 10)
				If (!SHIELD_SOLUTION_ALT)
					SetNodeScale(ThisActor, Gender, NINODE_SHIELD_BACK, GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND) * GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND), PWS_PLUGIN)
					SetNodeScale(ThisActor, Gender, NINODE_SHIELD, GetNodeScaleRMW(ThisActor, Gender, NINODE_SHIELD_BACK), PWS_PLUGIN)
				Else
					SetNodeScale(ThisActor, Gender, NINODE_SHIELD, (1/GetNodeScaleBase(ThisActor, Gender, NINODE_LEFT_HAND)) * (1/GetNodeScaleHand(ThisActor, Gender, NINODE_LEFT_HAND)) * GetNodeScaleRMW(ThisActor, Gender, NINODE_SHIELD_BACK), PWS_PLUGIN)
				EndIf	
			EndIf
		EndIf
		
		if IsPlayer
			int handle = ModEvent.Create("XPMSE_ReScaleComplete")
			if (handle)
				ModEvent.Send(handle)
			endIf
		endIf
	EndIf
	isRescaling = false
endFunction

Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey)
	XPMSELib.SetNodeScaleSkeleton(akActor, isFemale, nodeName, value, modkey)
EndFunction

float Function GetNodeScaleBase(Actor akActor, bool isFemale, string nodeName, string modkey = "")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

float Function GetNodeScaleHand(Actor akActor, bool isFemale, string nodeName, string modkey = "RMX_Hand")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

float Function GetNodeScaleRM(Actor akActor, bool isFemale, string nodeName, string modkey = "RSMPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

float Function GetNodeScaleRMW(Actor akActor, bool isFemale, string nodeName, string modkey = "RMWPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function SetNodeParent(Actor akActor, bool isFemale, string nodeName, string newParent)
	XPMSELib.SetNodeParent(akActor, isFemale, nodeName, newParent)
	If XPMSELib.HasNode(akActor, "HDT " + nodeName)
		XPMSELib.SetNodeParent(akActor, isFemale, "HDT " + nodeName, newParent)
	EndIf
EndFunction

bool Function SetAA(Actor akActor, string groupName, float myBase, float myset, float writebackXPMSE = 0.0)
	if (((IsPlayer && XPMSELib.isValidFNISaaCameraState()) || !IsPlayer) && akActor.is3dLoaded())
		if CheckAltAnimationFlag(akActor) || CheckAltAnimationFlagAll()
			XPMSELib.SetAA(akActor, groupName, myBase, myset, writeback = writebackXPMSE as int)
		Else
			XPMSELib.SetAA(akActor, groupName, 0, 0, writeback = writebackXPMSE as int)
		endif
		return true
	else
		return false
	endif
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

float Function CheckAltAnimationFlag(Actor akActor)
	return (!(ReadXPMSEData(akActor, "RMWAnimations", 1) as bool)) as float
EndFunction

float Function CheckAltAnimationFlagAll()
	return (!(ReadXPMSEData(PlayerRef, "RMWAnimationsAll", 1) as bool)) as float
EndFunction

float Function CheckRandomizerFlag()
	return ReadXPMSEData(PlayerRef, "RMWRandomizer", 1) as float
EndFunction

float Function CheckCloakFlag()
	return ReadXPMSEData(PlayerRef, "RMWCloak", 1) as float
EndFunction

float Function CheckDualWieldAnimationFlag(Actor akActor)
	return (!(ReadXPMSEData(akActor, "RMWDualwield", 1) as bool)) as float
EndFunction

float Function CheckDualWieldAnimationFlagAll()
	return (!(ReadXPMSEData(PlayerRef, "RMWDualwieldAll", 1) as bool)) as float
EndFunction

float Function CheckBoardAnimationFlag(Actor akActor)
	return (!(ReadXPMSEData(akActor, "RMWBoard", 1) as bool)) as float
EndFunction

float Function CheckBoardAnimationFlagAll()
	return (!(ReadXPMSEData(PlayerRef, "RMWBoardAll", 1) as bool)) as float
EndFunction

float Function CheckMixedAnimationFlag(Actor akActor)
	return (!(ReadXPMSEData(akActor, "RMWMixed", 1) as bool)) as float
EndFunction

float Function CheckMixedAnimationFlagAll()
	return (!(ReadXPMSEData(PlayerRef, "RMWMixedAll", 1) as bool)) as float
EndFunction

int Function GetAnimVar(Actor akActor, string animGroup)
	if akActor.IsDead() || !akActor.is3dloaded() || akActor.IsDisabled() || akActor.IsDeleted()
		return 0
	else
		return akActor.GetAnimationVariableInt("FNISaa" + animGroup)
	endif
EndFunction

bool Function SaveFNISData(Actor akActor, String animGroup)
	if (IsPlayer && XPMSELib.isValidFNISaaCameraState()) || (!IsPlayer && akActor.is3dLoaded())
		int animVar = GetAnimVar(akActor, animGroup)
		int base = ReadXPMSEData(PlayerRef, XPMSE_AABase + animGroup, 0) as int
		int range = ReadXPMSEData(PlayerRef, XPMSE_AARange + animGroup, 0) as int
		if animVar == 0
			ClearFNISData(akActor, animGroup)
		elseif animVar < base || animVar > (base + range - 1)
			XPMSELib.WriteXPMSEData(akActor, XPMSE_AASave + animGroup, 0, animVar as float)
			XPMSELib.WriteXPMSEData(akActor, XPMSE_AASaveCRC + animGroup, 0, FNIS_aa.GetInstallationCRC() as float)
		endif
		return true
	elseif !IsPlayer && !akActor.is3dLoaded()
		ClearFNISData(akActor, animGroup)
		return false
	else
		return false
	endif
EndFunction

Function ClearFNISData(Actor akActor, String animGroup)
	XPMSELib.WriteXPMSEData(akActor, XPMSE_AASave + animGroup, 0, 0)
	XPMSELib.WriteXPMSEData(akActor, XPMSE_AASaveCRC + animGroup, 0, 0)
EndFunction

float Function GetFNISSaveData(Actor akActor, String animGroup)
	if ReadXPMSEData(akActor, XPMSE_AASaveCRC + animGroup, 0) as int == FNIS_aa.GetInstallationCRC()
		return ReadXPMSEData(akActor, XPMSE_AASave + animGroup, 0)
	elseif ReadXPMSEData(akActor, XPMSE_AASaveCRC + animGroup, 0) == 0
		return 0
	else
		Debug.Trace("FNISaa value was saved, but invalid, old data from a previous configuration, XPMSE didn't get any update. XPMSE will restore to default animation. Actor: " + akActor + " on Group: " + animGroup)
		ClearFNISData(akActor, animGroup)
		return 0
	endif
EndFunction

Int Function GetWornAmmoType(Actor akActor)
	If XPMSEAmmoForms != None
		Form[] ammoForms = XPMSEAmmoForms.ToArray()
		Int AmmoFormsIndex = 0
		Int AmmoFormsSize = ammoForms.Length
		While AmmoFormsIndex < AmmoFormsSize
			Ammo AmmoForm = ammoForms[AmmoFormsIndex] As Ammo
			If akActor.IsEquipped(AmmoForm)
				Return AmmoForm.IsBolt() As Int
			EndIf
			AmmoFormsIndex += 1
		EndWhile
	EndIf
    Return -1
EndFunction

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION, true) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION) && (SKSE.GetPluginVersion("NiOverride") >= NIOVERRIDE_VERSION || SKSE.GetPluginVersion("SKEE") >= SKEE_VERSION) && NiOverride.GetScriptVersion() >= NIOVERRIDE_SCRIPT_VERSION
EndFunction	
