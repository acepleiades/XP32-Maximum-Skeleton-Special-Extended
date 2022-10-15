scriptname XPMSEMCM extends SKI_ConfigBase

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

; If you are making your own scaling mod, use your own key name
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

Actor Property PlayerRef Auto

string[]	_axeStylesList
string[]	_maceStylesList
string[]	_swordStylesList
string[]	_daggerStylesList
string[]	_twoHandedStylesList
string[]	_shieldStylesList
string[]	_staffStylesList
string[]	_bowStylesList
string[]	_crossbowStylesList
string[]	_quiverStylesList
string[]	_boltStylesList
string[]	_magicStylesList
string[]	_shoutStylesList
string[]	_spearStylesList

int function GetVersion()
	return 3
endFunction

; @overrides SKI_ConfigBase
event OnConfigInit()
	Pages = new string[2]
	Pages[0] = "$XPMSE_STYLES"
	Pages[1] = "$XPMSE_INFO"
	
	_axeStylesList = new string[3]
	_axeStylesList[0] = "$XPMSE_DEFAULT"
	_axeStylesList[1] = "$XPMSE_AXEREVERSED"
	_axeStylesList[2] = "$XPMSE_AXEBACK"
	
	_maceStylesList = new string[1]
	_maceStylesList[0] = "$XPMSE_DEFAULT"
	
	_swordStylesList = new string[6]
	_swordStylesList[0] = "$XPMSE_DEFAULT"
	_swordStylesList[1] = "$XPMSE_SWORDBACK"
	_swordStylesList[2] = "$XPMSE_SWORDBACKSWP"
	_swordStylesList[3] = "$XPMSE_SWORDEDGEUP"
	_swordStylesList[4] = "$XPMSE_SWORDLEFTHIP"
	_swordStylesList[5] = "$XPMSE_SWORDNOMOREDANG"
	
	_daggerStylesList = new string[3]
	_daggerStylesList[0] = "$XPMSE_DEFAULT"
	_daggerStylesList[1] = "$XPMSE_DAGGERBACKHIP"
	_daggerStylesList[2] = "$XPMSE_DAGGERANKLE"
	
	_twoHandedStylesList = new string[3]
	_twoHandedStylesList[0] = "$XPMSE_DEFAULT"
	_twoHandedStylesList[1] = "$XPMSE_TWOHANDEDSWP"
	_twoHandedStylesList[2] = "$XPMSE_TWOHANDEDFSM"
	
	_shieldStylesList = new string[1]
	_shieldStylesList[0] = "$XPMSE_DEFAULT"
	
	_staffStylesList = new string[1]
	_staffStylesList[0] = "$XPMSE_DEFAULT"
	
	_bowStylesList = new string[4]
	_bowStylesList[0] = "$XPMSE_DEFAULT"
	_bowStylesList[1] = "$XPMSE_BOWCHESKO"
	_bowStylesList[2] = "$XPMSE_BOWREVERSED"
	_bowStylesList[3] = "$XPMSE_BOWTURN"
	
	_crossbowStylesList = new string[2]
	_crossbowStylesList[0] = "$XPMSE_DEFAULT"
	_crossbowStylesList[1] = "$XPMSE_CROSSBOWCHESKO"
	
	_quiverStylesList = new string[3]
	_quiverStylesList[0] = "$XPMSE_DEFAULT"
	_quiverStylesList[1] = "$XPMSE_QUIVERCHESKO"
	_quiverStylesList[2] = "$XPMSE_QUIVERXP32"
	
	_boltStylesList = new string[5]
	_boltStylesList[0] = "$XPMSE_DEFAULT"
	_boltStylesList[1] = "$XPMSE_QUIVERCHESKO"
	_boltStylesList[2] = "$XPMSE_BOLTLHB"
	_boltStylesList[3] = "$XPMSE_BOLTXP32"
	_boltStylesList[4] = "$XPMSE_BOLTABQ"
	
	_magicStylesList = new string[2]
	_magicStylesList[0] = "$XPMSE_DEFAULT"
	_magicStylesList[1] = "$XPMSE_MAGICNIPPLE"
	
	_shoutStylesList = new string[2]
	_shoutStylesList[0] = "$XPMSE_DEFAULT"
	_shoutStylesList[1] = "$XPMSE_SHOUTSCHLONG"

	_spearStylesList = new string[2]
    _spearStylesList[0] = "$XPMSE_DEFAULT"
    _spearStylesList[1] = "$XPMSE_SPEARBACK"
endEvent

event OnConfigClose()
	if CheckCloakFlag()
		int handle = ModEvent.Create("XPMSE_DisableCloak")
		if (handle)
			ModEvent.PushInt(handle, 1)
			ModEvent.Send(handle)
		endIf
	else
		int handle = ModEvent.Create("XPMSE_EnableCloak")
		if (handle)
			ModEvent.PushInt(handle, 1)
			ModEvent.Send(handle)
		endIf
	endif
	int handle = ModEvent.Create("XPMSE_MCMClose")
	if (handle)
		ModEvent.PushInt(handle, 1)
		ModEvent.Send(handle)
	endIf
endEvent

; @implements SKI_QuestBase
event OnVersionUpdate(int a_version)
	{Called when a version update of this script has been detected}
endEvent

; @implements SKI_ConfigBase
event OnPageReset(string a_page)
	{Called when a new page is selected, including the initial empty page}

	bool isFemale = (PlayerRef.GetActorBase().GetSex() == 1) as bool
	bool requirement = CheckXPMSERequirements(PlayerRef, isFemale)
		
	; Load custom logo in DDS format
	if (a_page == "")
		; Image size 256x256
		; X offset = 376 - (height / 2) = 258
		; Y offset = 223 - (width / 2) = 95
		LoadCustomContent("xpmse/res/mcm_logo.dds", 258, 95)
		return
	else
		UnloadCustomContent()
	endIf

	if (a_page == Pages[0] && requirement)
		SetCursorFillMode(LEFT_TO_RIGHT)
		
		AddToggleOptionST("STYLE_DISABLE_CLOAK", "$Style Disable Cloak", CheckCloakFlag())
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		
		AddToggleOptionST("STYLE_ANIAMTIONS", "$Style Animations", CheckAltAnimationFlag(PlayerRef))
		AddToggleOptionST("STYLE_ANIAMTIONS_ALL", "$Style Animations All", CheckAltAnimationFlagAll())
		AddToggleOptionST("STYLE_ANIAMTIONS_DUALWIELD", "$Style Dualwield", CheckDualWieldAnimationFlag(PlayerRef))
		AddToggleOptionST("STYLE_ANIAMTIONS_DUALWIELD_ALL", "$Style Dualwield All", CheckDualWieldAnimationFlagAll())
		AddToggleOptionST("STYLE_ANIAMTIONS_BOARD", "$Style Board", CheckBoardAnimationFlag(PlayerRef))
		AddToggleOptionST("STYLE_ANIAMTIONS_BOARD_ALL", "$Style Board All", CheckBoardAnimationFlagAll())
		AddToggleOptionST("STYLE_ANIAMTIONS_MIXED", "$Style Mixed", CheckMixedAnimationFlag(PlayerRef))
		AddToggleOptionST("STYLE_ANIAMTIONS_MIXED_ALL", "$Style Mixed All", CheckMixedAnimationFlagAll())
		AddEmptyOption()
		AddEmptyOption()
		
		AddToggleOptionST("STYLE_RANDOMIZE_ALL", "$Style Randomize All", CheckRandomizerFlag())
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
			
		AddHeaderOption("$Axe Style")
		AddHeaderOption("$Axe Left Style")
		if (ReadXPMSEData(PlayerRef, AXE_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("AXE_STYLE_SELECT", "$XPMSEPC", _axeStylesList[(ReadXPMSEData(PlayerRef, AXE_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("AXE_STYLE_SELECT", "$XPMSEPC", _axeStylesList[0])
		endif
		if (ReadXPMSEData(PlayerRef, AXE_LEFT_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("AXELEFT_STYLE_SELECT", "$XPMSEPC", _axeStylesList[(ReadXPMSEData(PlayerRef, AXE_LEFT_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("AXELEFT_STYLE_SELECT", "$XPMSEPC", _axeStylesList[0])
		endif
		AddMenuOptionST("AXEALL_STYLE_SELECT", "$XPMSENPC", _axeStylesList[ReadXPMSEData(PlayerRef, AXE_ALL_KEY, 1) as int])
		AddMenuOptionST("AXELEFTALL_STYLE_SELECT", "$XPMSENPC", _axeStylesList[ReadXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
			
		AddHeaderOption("$Mace Style")
		AddHeaderOption("$Mace Left Style")
		if (ReadXPMSEData(PlayerRef, MACE_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("MACE_STYLE_SELECT", "$XPMSEPC", _maceStylesList[(ReadXPMSEData(PlayerRef, MACE_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("MACE_STYLE_SELECT", "$XPMSEPC", _maceStylesList[0])
		endif
		if (ReadXPMSEData(PlayerRef, MACE_LEFT_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("MACELEFT_STYLE_SELECT", "$XPMSEPC", _maceStylesList[(ReadXPMSEData(PlayerRef, MACE_LEFT_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("MACELEFT_STYLE_SELECT", "$XPMSEPC", _maceStylesList[0])
		endif
		AddMenuOptionST("MACEALL_STYLE_SELECT", "$XPMSENPC", _maceStylesList[ReadXPMSEData(PlayerRef, MACE_ALL_KEY, 1) as int])
		AddMenuOptionST("MACELEFTALL_STYLE_SELECT", "$XPMSENPC", _maceStylesList[ReadXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("$Sword Style")
		AddHeaderOption("$Sword Left Style")
		if (ReadXPMSEData(PlayerRef, SWORD_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("SWORD_STYLE_SELECT", "$XPMSEPC", _swordStylesList[(ReadXPMSEData(PlayerRef, SWORD_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("SWORD_STYLE_SELECT", "$XPMSEPC", _swordStylesList[0])
		endif
		if (ReadXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("SWORDLEFT_STYLE_SELECT", "$XPMSEPC", _swordStylesList[(ReadXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("SWORDLEFT_STYLE_SELECT", "$XPMSEPC", _swordStylesList[0])
		endif
		AddMenuOptionST("SWORDALL_STYLE_SELECT", "$XPMSENPC", _swordStylesList[ReadXPMSEData(PlayerRef, SWORD_ALL_KEY, 1) as int])
		AddMenuOptionST("SWORDLEFTALL_STYLE_SELECT", "$XPMSENPC", _swordStylesList[ReadXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("$Dagger Style")
		AddHeaderOption("$Dagger Left Style")
		if (ReadXPMSEData(PlayerRef, DAGGER_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("DAGGER_STYLE_SELECT", "$XPMSEPC", _daggerStylesList[(ReadXPMSEData(PlayerRef, DAGGER_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("DAGGER_STYLE_SELECT", "$XPMSEPC", _daggerStylesList[0])
		endif
		if (ReadXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("DAGGERLEFT_STYLE_SELECT", "$XPMSEPC", _daggerStylesList[(ReadXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("DAGGERLEFT_STYLE_SELECT", "$XPMSEPC", _daggerStylesList[0])
		endif
		AddMenuOptionST("DAGGERALL_STYLE_SELECT", "$XPMSENPC", _daggerStylesList[ReadXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1) as int])
		AddMenuOptionST("DAGGERLEFTALL_STYLE_SELECT", "$XPMSENPC", _daggerStylesList[ReadXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("$Weapon Back Sword Style")
		AddHeaderOption("$Weapon Back Axe Style")
		if (ReadXPMSEData(PlayerRef, TH_S_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("TWOHANDEDSWORD_STYLE_SELECT", "$XPMSEPC", _twoHandedStylesList[(ReadXPMSEData(PlayerRef, TH_S_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("TWOHANDEDSWORD_STYLE_SELECT", "$XPMSEPC", _twoHandedStylesList[0])
		endif
		if (ReadXPMSEData(PlayerRef, TH_AM_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("TWOHANDEDAXE_STYLE_SELECT", "$XPMSEPC", _twoHandedStylesList[(ReadXPMSEData(PlayerRef, TH_AM_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("TWOHANDEDAXE_STYLE_SELECT", "$XPMSEPC", _twoHandedStylesList[0])
		endif
		AddMenuOptionST("TWOHANDEDSWORDALL_STYLE_SELECT", "$XPMSENPC", _twoHandedStylesList[ReadXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1) as int])
		AddMenuOptionST("TWOHANDEDAXEALL_STYLE_SELECT", "$XPMSENPC", _twoHandedStylesList[ReadXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("$Shield Back Style")
		AddEmptyOption()
		if (ReadXPMSEData(PlayerRef, SHIELD_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("SHIELD_STYLE_SELECT", "$XPMSEPC", _shieldStylesList[(ReadXPMSEData(PlayerRef, SHIELD_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("SHIELD_STYLE_SELECT", "$XPMSEPC", _shieldStylesList[0])
		endif
		AddEmptyOption()
		AddMenuOptionST("SHIELDALL_STYLE_SELECT", "$XPMSENPC", _shieldStylesList[ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("$Staff Style")
		AddHeaderOption("$Staff Left Style")
		if (ReadXPMSEData(PlayerRef, STAFF_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("STAFF_STYLE_SELECT", "$XPMSEPC", _staffStylesList[(ReadXPMSEData(PlayerRef, STAFF_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("STAFF_STYLE_SELECT", "$XPMSEPC", _staffStylesList[0])
		endif
		if (ReadXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("STAFFLEFT_STYLE_SELECT", "$XPMSEPC", _staffStylesList[(ReadXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("STAFFLEFT_STYLE_SELECT", "$XPMSEPC", _staffStylesList[0])
		endif
		AddMenuOptionST("STAFFALL_STYLE_SELECT", "$XPMSENPC", _staffStylesList[ReadXPMSEData(PlayerRef, STAFF_ALL_KEY, 1) as int])
		AddMenuOptionST("STAFFLEFTALL_STYLE_SELECT", "$XPMSENPC", _staffStylesList[ReadXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
			
		AddHeaderOption("$Bow Style")
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			AddHeaderOption("$Crossbow Style")
		else
			AddEmptyOption()
		endif
		if (ReadXPMSEData(PlayerRef, BOW_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("BOW_STYLE_SELECT", "$XPMSEPC", _bowStylesList[(ReadXPMSEData(PlayerRef, BOW_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("BOW_STYLE_SELECT", "$XPMSEPC", _bowStylesList[0])
		endif
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			if (ReadXPMSEData(PlayerRef, CROSSBOW_KEY, 1) - 1.0) >= 1.0 
				AddMenuOptionST("CROSSBOW_STYLE_SELECT", "$XPMSEPC", _crossbowStylesList[(ReadXPMSEData(PlayerRef, CROSSBOW_KEY, 1) - 1.0) as int])
			else
				AddMenuOptionST("CROSSBOW_STYLE_SELECT", "$XPMSEPC", _crossbowStylesList[0])
			endif
		else
			AddEmptyOption()
		endif
		AddMenuOptionST("BOWALL_STYLE_SELECT", "$XPMSENPC", _bowStylesList[ReadXPMSEData(PlayerRef, BOW_ALL_KEY, 1) as int])
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			AddMenuOptionST("CROSSBOWALL_STYLE_SELECT", "$XPMSENPC", _crossbowStylesList[ReadXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1) as int])
		else
			AddEmptyOption()
		endif
		AddEmptyOption()
		AddEmptyOption()
			
		AddHeaderOption("$Quiver Style")
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			AddHeaderOption("$Bolt Style")
		else
			AddEmptyOption()
		endif
		if (ReadXPMSEData(PlayerRef, QUIVER_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("QUIVER_STYLE_SELECT", "$XPMSEPC", _quiverStylesList[(ReadXPMSEData(PlayerRef, QUIVER_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("QUIVER_STYLE_SELECT", "$XPMSEPC", _quiverStylesList[0])
		endif
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			if (ReadXPMSEData(PlayerRef, BOLT_KEY, 1) - 1.0) >= 1.0 
				AddMenuOptionST("BOLT_STYLE_SELECT", "$XPMSEPC", _boltStylesList[(ReadXPMSEData(PlayerRef, BOLT_KEY, 1) - 1.0) as int])
			else
				AddMenuOptionST("BOLT_STYLE_SELECT", "$XPMSEPC", _boltStylesList[0])
			endif
		else
			AddEmptyOption()
		endif
		AddMenuOptionST("QUIVERALL_STYLE_SELECT", "$XPMSENPC", _quiverStylesList[ReadXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1) as int])
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			AddMenuOptionST("BOLTALL_STYLE_SELECT", "$XPMSENPC", _boltStylesList[ReadXPMSEData(PlayerRef, BOLT_ALL_KEY, 1) as int])
		else
			AddEmptyOption()
		endif
		AddEmptyOption()
		AddEmptyOption()

		If (Game.GetModByName("Spears.esp")!= 255)
        	AddHeaderOption("$Spear Style")
        	AddHeaderOption("$Spear Left Style")
        	if (ReadXPMSEData(PlayerRef, SPEAR_KEY, 1) - 1.0) >= 1.0
        		AddMenuOptionST("SPEAR_STYLE_SELECT", "$XPMSEPC", _spearStylesList[(ReadXPMSEData(PlayerRef, SPEAR_KEY, 1) - 1.0) as int])
        	else
        		AddMenuOptionST("SPEAR_STYLE_SELECT", "$XPMSEPC", _spearStylesList[0])
        	endif
        	if (ReadXPMSEData(PlayerRef, SPEAR_LEFT_KEY, 1) - 1.0) >= 1.0
        		AddMenuOptionST("SPEARLEFT_STYLE_SELECT", "$XPMSEPC", _spearStylesList[(ReadXPMSEData(PlayerRef, SPEAR_LEFT_KEY, 1) - 1.0) as int])
        	else
        		AddMenuOptionST("SPEARLEFT_STYLE_SELECT", "$XPMSEPC", _spearStylesList[0])
        	endif
        	AddMenuOptionST("SPEARALL_STYLE_SELECT", "$XPMSENPC", _spearStylesList[ReadXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1) as int])
        	AddMenuOptionST("SPEARLEFTALL_STYLE_SELECT", "$XPMSENPC", _spearStylesList[ReadXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1) as int])
        	AddEmptyOption()
        	AddEmptyOption()
        endif
		
		AddHeaderOption("$Magic Style")
		AddHeaderOption("$Magic Left Style")
		If isFemale
			if (ReadXPMSEData(PlayerRef, MAGIC_KEY, 1) - 1.0) >= 1.0 
				AddMenuOptionST("MAGIC_STYLE_SELECT", "$XPMSEPC", _magicStylesList[(ReadXPMSEData(PlayerRef, MAGIC_KEY, 1) - 1.0) as int])
			else
				AddMenuOptionST("MAGIC_STYLE_SELECT", "$XPMSEPC", _magicStylesList[0])
			endif
			if (ReadXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1) - 1.0) >= 1.0 
				AddMenuOptionST("MAGICLEFT_STYLE_SELECT", "$XPMSEPC", _magicStylesList[(ReadXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1) - 1.0) as int])
			else
				AddMenuOptionST("MAGICLEFT_STYLE_SELECT", "$XPMSEPC", _magicStylesList[0])
			endif
		else
			AddEmptyOption()
			AddEmptyOption()
		endif
		AddMenuOptionST("MAGICALL_STYLE_SELECT", "$XPMSENPC", _magicStylesList[ReadXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1) as int])
		AddMenuOptionST("MAGICLEFTALL_STYLE_SELECT", "$XPMSENPC", _magicStylesList[ReadXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("$Shout Style")
		AddEmptyOption()
		if (ReadXPMSEData(PlayerRef, SHOUT_KEY, 1) - 1.0) >= 1.0 
			AddMenuOptionST("SHOUT_STYLE_SELECT", "$XPMSEPC", _shoutStylesList[(ReadXPMSEData(PlayerRef, SHOUT_KEY, 1) - 1.0) as int])
		else
			AddMenuOptionST("SHOUT_STYLE_SELECT", "$XPMSEPC", _shoutStylesList[0])
		endif
		AddEmptyOption()
		AddMenuOptionST("SHOUTALL_STYLE_SELECT", "$XPMSENPC", _shoutStylesList[ReadXPMSEData(PlayerRef, SHOUT_ALL_KEY, 1) as int])
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
			
	elseif (a_page == Pages[1])
		SetCursorFillMode(LEFT_TO_RIGHT)
		AddHeaderOption("XPMSE MCM: " + GetVersion())
		AddEmptyOption()
		;Skeleton
		AddHeaderOption("XPMSE Skeleton: " + XPMSELib.GetXPMSEVersion(PlayerRef, isFemale))
		if (XPMSELib.GetXPMSEVersion(PlayerRef, isFemale) >= XPMSE_VERSION)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		;Lib
		AddHeaderOption("XPMSE Lib: " + XPMSELib.GetXPMSELibVersion())
		if (XPMSELib.GetXPMSELibVersion() >= XPMSELIB_VERSION)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		;SKSE
		AddHeaderOption("SKSE: " + GetSKSEVersion())
		if (CheckSKSEVersion(1, 7, 2) >= 0)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		;FNIS
		AddHeaderOption("FNIS: " + FNIS.VersionToString())
		if (FNIS.VersionCompare(6,1,0) >= 0)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		AddHeaderOption("FNIS Plugin: Active")
		if (Game.GetModByName("FNIS.esp") != 255)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		;NiOverride
		AddHeaderOption("NiOverride Script: " + NiOverride.GetScriptVersion())
		if (NiOverride.GetScriptVersion() >= NIOVERRIDE_SCRIPT_VERSION)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		AddHeaderOption("NiOverride Plugin: " + SKSE.GetPluginVersion("NiOverride"))
		if (SKSE.GetPluginVersion("NiOverride") >= NIOVERRIDE_VERSION || SKSE.GetPluginVersion("SKEE") >= SKEE_VERSION)
			AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
		endif
		AddHeaderOption("SKEE Plugin: " + SKSE.GetPluginVersion("SKEE"))
		if (SKSE.GetPluginVersion("NiOverride") >= NIOVERRIDE_VERSION || SKSE.GetPluginVersion("SKEE") >= SKEE_VERSION)
		    AddToggleOption("$XPMSE_VERSION_PASS", true, OPTION_FLAG_DISABLED)
        else
        	AddToggleOption("$XPMSE_VERSION_FAIL", false, OPTION_FLAG_DISABLED)
        endif
        AddEmptyOption()
		AddEmptyOption()
		AddHeaderOption("Cloak Spell Running:")
		if (!CheckCloakFlag())
			AddToggleOption("", true, OPTION_FLAG_DISABLED)
		else
			AddToggleOption("", false, OPTION_FLAG_DISABLED)
		endif

		AddEmptyOption()
        AddEmptyOption()
        AddHeaderOption("True Spear Combat:")
        if (Game.GetModByName("Spears.esp")!= 255)
        	AddToggleOption("", true, OPTION_FLAG_DISABLED)
        else
        	AddToggleOption("", false, OPTION_FLAG_DISABLED)
        endif
	endIf
endEvent

state STYLE_ANIAMTIONS ; TOGGLE
	event OnSelectST()
		SetAltAnimationFlag(PlayerRef, !CheckAltAnimationFlag(PlayerRef))
		SetToggleOptionValueST(CheckAltAnimationFlag(PlayerRef))
	endEvent

	event OnDefaultST()
		SetAltAnimationFlag(PlayerRef, true)
		SetToggleOptionValueST(CheckAltAnimationFlag(PlayerRef))
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_ANIAMTIONS_ALL ; TOGGLE
	event OnSelectST()
		SetAltAnimationFlagAll(!CheckAltAnimationFlagAll())
		SetToggleOptionValueST(CheckAltAnimationFlagAll())
	endEvent

	event OnDefaultST()
		SetAltAnimationFlagAll(true)
		SetToggleOptionValueST(CheckAltAnimationFlagAll())
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_RANDOMIZE_ALL ; TOGGLE
	event OnSelectST()
		SetRandomizerFlag(!CheckRandomizerFlag())
		SetToggleOptionValueST(CheckRandomizerFlag())
	endEvent

	event OnDefaultST()
		SetRandomizerFlag(false)
		SetToggleOptionValueST(CheckRandomizerFlag())
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_DISABLE_CLOAK ; TOGGLE
	event OnSelectST()
		SetCloakFlag(!CheckCloakFlag())
		SetToggleOptionValueST(CheckCloakFlag())
	endEvent

	event OnDefaultST()
		SetCloakFlag(false)
		SetToggleOptionValueST(CheckCloakFlag())
	endEvent

	event OnHighlightST()
		SetInfoText("$Style Disable Cloak Description")
	endEvent
endState

state STYLE_ANIAMTIONS_DUALWIELD ; TOGGLE
	event OnSelectST()
		SetDualWieldAnimationFlag(PlayerRef, !CheckDualWieldAnimationFlag(PlayerRef))
		SetToggleOptionValueST(CheckDualWieldAnimationFlag(PlayerRef))
	endEvent

	event OnDefaultST()
		SetDualWieldAnimationFlag(PlayerRef, true)
		SetToggleOptionValueST(CheckDualWieldAnimationFlag(PlayerRef))
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_ANIAMTIONS_DUALWIELD_ALL ; TOGGLE
	event OnSelectST()
		SetDualWieldAnimationFlagAll(!CheckDualWieldAnimationFlagAll())
		SetToggleOptionValueST(CheckDualWieldAnimationFlagAll())
	endEvent

	event OnDefaultST()
		SetDualWieldAnimationFlagAll(true)
		SetToggleOptionValueST(CheckDualWieldAnimationFlagAll())
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_ANIAMTIONS_BOARD ; TOGGLE
	event OnSelectST()
		SetBoardAnimationFlag(PlayerRef, !CheckBoardAnimationFlag(PlayerRef))
		SetToggleOptionValueST(CheckBoardAnimationFlag(PlayerRef))
	endEvent

	event OnDefaultST()
		SetBoardAnimationFlag(PlayerRef, true)
		SetToggleOptionValueST(CheckBoardAnimationFlag(PlayerRef))
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_ANIAMTIONS_BOARD_ALL ; TOGGLE
	event OnSelectST()
		SetBoardAnimationFlagAll(!CheckBoardAnimationFlagAll())
		SetToggleOptionValueST(CheckBoardAnimationFlagAll())
	endEvent

	event OnDefaultST()
		SetBoardAnimationFlagAll(true)
		SetToggleOptionValueST(CheckBoardAnimationFlagAll())
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_ANIAMTIONS_MIXED ; TOGGLE
	event OnSelectST()
		SetMixedAnimationFlag(PlayerRef, !CheckMixedAnimationFlag(PlayerRef))
		SetToggleOptionValueST(CheckMixedAnimationFlag(PlayerRef))
	endEvent

	event OnDefaultST()
		SetMixedAnimationFlag(PlayerRef, true)
		SetToggleOptionValueST(CheckMixedAnimationFlag(PlayerRef))
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STYLE_ANIAMTIONS_MIXED_ALL ; TOGGLE
	event OnSelectST()
		SetMixedAnimationFlagAll(!CheckMixedAnimationFlagAll())
		SetToggleOptionValueST(CheckMixedAnimationFlagAll())
	endEvent

	event OnDefaultST()
		SetMixedAnimationFlagAll(true)
		SetToggleOptionValueST(CheckMixedAnimationFlagAll())
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state AXE_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, AXE_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_axeStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, AXE_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_axeStylesList[(ReadXPMSEData(PlayerRef, AXE_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, AXE_KEY, 1, 1.0)
		SetMenuOptionValueST(_axeStylesList[(ReadXPMSEData(PlayerRef, AXE_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state AXELEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, AXE_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_axeStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, AXE_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_axeStylesList[(ReadXPMSEData(PlayerRef, AXE_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, AXE_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_axeStylesList[(ReadXPMSEData(PlayerRef, AXE_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state AXEALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, AXE_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_axeStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, AXE_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_axeStylesList[ReadXPMSEData(PlayerRef, AXE_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, AXE_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_axeStylesList[ReadXPMSEData(PlayerRef, AXE_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state AXELEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_axeStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_axeStylesList[ReadXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_axeStylesList[ReadXPMSEData(PlayerRef, AXE_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MACE_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MACE_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_maceStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MACE_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_maceStylesList[(ReadXPMSEData(PlayerRef, MACE_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MACE_KEY, 1, 1.0)
		SetMenuOptionValueST(_maceStylesList[(ReadXPMSEData(PlayerRef, MACE_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MACELEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MACE_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_maceStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MACE_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_maceStylesList[(ReadXPMSEData(PlayerRef, MACE_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MACE_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_maceStylesList[(ReadXPMSEData(PlayerRef, MACE_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MACEALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MACE_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_maceStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MACE_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_maceStylesList[ReadXPMSEData(PlayerRef, MACE_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MACE_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_maceStylesList[ReadXPMSEData(PlayerRef, MACE_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MACELEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_maceStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)		
		WriteXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_maceStylesList[ReadXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_maceStylesList[ReadXPMSEData(PlayerRef, MACE_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SWORD_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SWORD_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_swordStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SWORD_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_swordStylesList[(ReadXPMSEData(PlayerRef, SWORD_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SWORD_KEY, 1, 1.0)
		SetMenuOptionValueST(_swordStylesList[(ReadXPMSEData(PlayerRef, SWORD_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SWORDLEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_swordStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_swordStylesList[(ReadXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_swordStylesList[(ReadXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SWORDALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SWORD_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_swordStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SWORD_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_swordStylesList[ReadXPMSEData(PlayerRef, SWORD_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SWORD_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_swordStylesList[ReadXPMSEData(PlayerRef, SWORD_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SWORDLEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_swordStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_swordStylesList[ReadXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_swordStylesList[ReadXPMSEData(PlayerRef, SWORD_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state DAGGER_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, DAGGER_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_daggerStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, DAGGER_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_daggerStylesList[(ReadXPMSEData(PlayerRef, DAGGER_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, DAGGER_KEY, 1, 1.0)
		SetMenuOptionValueST(_daggerStylesList[(ReadXPMSEData(PlayerRef, DAGGER_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state DAGGERLEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_daggerStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_daggerStylesList[(ReadXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_daggerStylesList[(ReadXPMSEData(PlayerRef, DAGGER_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state DAGGERALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_daggerStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_daggerStylesList[ReadXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_daggerStylesList[ReadXPMSEData(PlayerRef, DAGGER_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state DAGGERLEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_daggerStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_daggerStylesList[ReadXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_daggerStylesList[ReadXPMSEData(PlayerRef, DAGGER_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state TWOHANDEDSWORD_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, TH_S_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_twoHandedStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, TH_S_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_twoHandedStylesList[(ReadXPMSEData(PlayerRef, TH_S_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, TH_S_KEY, 1, 1.0)
		SetMenuOptionValueST(_twoHandedStylesList[(ReadXPMSEData(PlayerRef, TH_S_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state TWOHANDEDAXE_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, TH_AM_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_twoHandedStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, TH_AM_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_twoHandedStylesList[(ReadXPMSEData(PlayerRef, TH_AM_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, TH_AM_KEY, 1, 1.0)
		SetMenuOptionValueST(_twoHandedStylesList[(ReadXPMSEData(PlayerRef, TH_AM_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state TWOHANDEDSWORDALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_twoHandedStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_twoHandedStylesList[ReadXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_twoHandedStylesList[ReadXPMSEData(PlayerRef, TH_SWORD_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state TWOHANDEDAXEALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_twoHandedStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_twoHandedStylesList[ReadXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_twoHandedStylesList[ReadXPMSEData(PlayerRef, TH_AXE_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SHIELD_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SHIELD_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_shieldStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SHIELD_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_shieldStylesList[(ReadXPMSEData(PlayerRef, SHIELD_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SHIELD_KEY, 1, 1.0)
		SetMenuOptionValueST(_shieldStylesList[(ReadXPMSEData(PlayerRef, SHIELD_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SHIELDALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_shieldStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_shieldStylesList[ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_shieldStylesList[ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STAFF_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, STAFF_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_staffStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, STAFF_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_staffStylesList[(ReadXPMSEData(PlayerRef, STAFF_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, STAFF_KEY, 1, 1.0)
		SetMenuOptionValueST(_staffStylesList[(ReadXPMSEData(PlayerRef, STAFF_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STAFFLEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_staffStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_staffStylesList[(ReadXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_staffStylesList[(ReadXPMSEData(PlayerRef, STAFF_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STAFFALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, STAFF_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_staffStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, STAFF_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_staffStylesList[ReadXPMSEData(PlayerRef, STAFF_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, STAFF_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_staffStylesList[ReadXPMSEData(PlayerRef, STAFF_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state STAFFLEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_staffStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_staffStylesList[ReadXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_staffStylesList[ReadXPMSEData(PlayerRef, STAFF_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state BOW_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, BOW_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_bowStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, BOW_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_bowStylesList[(ReadXPMSEData(PlayerRef, BOW_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, BOW_KEY, 1, 1.0)
		SetMenuOptionValueST(_bowStylesList[(ReadXPMSEData(PlayerRef, BOW_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state CROSSBOW_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, CROSSBOW_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_crossbowStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, CROSSBOW_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_crossbowStylesList[(ReadXPMSEData(PlayerRef, CROSSBOW_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, CROSSBOW_KEY, 1, 1.0)
		SetMenuOptionValueST(_crossbowStylesList[(ReadXPMSEData(PlayerRef, CROSSBOW_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state BOWALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, BOW_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_bowStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, BOW_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_bowStylesList[ReadXPMSEData(PlayerRef, BOW_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, BOW_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_bowStylesList[ReadXPMSEData(PlayerRef, BOW_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state CROSSBOWALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_crossbowStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_crossbowStylesList[ReadXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_crossbowStylesList[ReadXPMSEData(PlayerRef, CROSSBOW_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state QUIVER_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, QUIVER_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_quiverStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, QUIVER_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_quiverStylesList[(ReadXPMSEData(PlayerRef, QUIVER_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, QUIVER_KEY, 1, 1.0)
		SetMenuOptionValueST(_quiverStylesList[(ReadXPMSEData(PlayerRef, QUIVER_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state BOLT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, BOLT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_boltStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, BOLT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_boltStylesList[(ReadXPMSEData(PlayerRef, BOLT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, BOLT_KEY, 1, 1.0)
		SetMenuOptionValueST(_boltStylesList[(ReadXPMSEData(PlayerRef, BOLT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state QUIVERALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_quiverStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_quiverStylesList[ReadXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_quiverStylesList[ReadXPMSEData(PlayerRef, QUIVER_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state BOLTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, BOLT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_boltStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, BOLT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_boltStylesList[ReadXPMSEData(PlayerRef, BOLT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, BOLT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_boltStylesList[ReadXPMSEData(PlayerRef, BOLT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MAGIC_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MAGIC_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_magicStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MAGIC_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_magicStylesList[(ReadXPMSEData(PlayerRef, MAGIC_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MAGIC_KEY, 1, 1.0)
		SetMenuOptionValueST(_magicStylesList[(ReadXPMSEData(PlayerRef, MAGIC_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MAGICLEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_magicStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_magicStylesList[(ReadXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_magicStylesList[(ReadXPMSEData(PlayerRef, MAGIC_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MAGICALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_magicStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_magicStylesList[ReadXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_magicStylesList[ReadXPMSEData(PlayerRef, MAGIC_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state MAGICLEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_magicStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_magicStylesList[ReadXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_magicStylesList[ReadXPMSEData(PlayerRef, MAGIC_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SHOUT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SHOUT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_shoutStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SHOUT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_shoutStylesList[(ReadXPMSEData(PlayerRef, SHOUT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SHOUT_KEY, 1, 1.0)
		SetMenuOptionValueST(_shoutStylesList[(ReadXPMSEData(PlayerRef, SHOUT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SHOUTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_shieldStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_shieldStylesList[ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_shieldStylesList[ReadXPMSEData(PlayerRef, SHIELD_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SPEAR_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SPEAR_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_spearStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SPEAR_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_spearStylesList[(ReadXPMSEData(PlayerRef, SPEAR_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SPEAR_KEY, 1, 1.0)
		SetMenuOptionValueST(_spearStylesList[(ReadXPMSEData(PlayerRef, SPEAR_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SPEARLEFT_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SPEAR_LEFT_KEY, 1) as int - 1)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_spearStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SPEAR_LEFT_KEY, 1, (a_index as float) + 1.0)
		SetMenuOptionValueST(_spearStylesList[(ReadXPMSEData(PlayerRef, SPEAR_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SWORD_LEFT_KEY, 1, 1.0)
		SetMenuOptionValueST(_spearStylesList[(ReadXPMSEData(PlayerRef, SPEAR_LEFT_KEY, 1) - 1.0) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SPEARALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_spearStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_spearStylesList[ReadXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_spearStylesList[ReadXPMSEData(PlayerRef, SPEAR_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

state SPEARLEFTALL_STYLE_SELECT ; MENU
	event OnMenuOpenST()
		SetMenuDialogStartIndex(ReadXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1) as int)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(_spearStylesList)
	endEvent

	event OnMenuAcceptST(int a_index)
		WriteXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1, (a_index as float))
		SetMenuOptionValueST(_spearStylesList[ReadXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnDefaultST()
		WriteXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1, 0.0)
		SetMenuOptionValueST(_spearStylesList[ReadXPMSEData(PlayerRef, SPEAR_LEFT_ALL_KEY, 1) as int])
	endEvent

	event OnHighlightST()
		SetInfoText("")
	endEvent
endState

Function SetNodeParent(Actor akActor, bool isFemale, string nodeName, string newParent)
	XPMSELib.SetNodeParent(akActor, isFemale, nodeName, newParent)
	If XPMSELib.HasNode(akActor, "HDT " + nodeName)
		XPMSELib.SetNodeParent(akActor, isFemale, "HDT " + nodeName, newParent)
	EndIf
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

; Adds an extra value to the actor in form of a morph
; savelevels:
; 0 = temporal
; 1 = presistent
; 2 = RSMBodyGen
Function WriteXPMSEData(Actor akActor, string keyName, int savelevel, float value)
	if value == 0.0
		XPMSELib.RemoveXPMSEData(akActor, keyName, savelevel)
	else
		XPMSELib.WriteXPMSEData(akActor, keyName, savelevel, value)
	Endif
EndFunction

Function SetAltAnimationFlag(Actor akActor, bool value)
	WriteXPMSEData(akActor, "RMWAnimations", 1, ((!value) as float))
EndFunction

Function SetAltAnimationFlagAll(bool value)
	WriteXPMSEData(PlayerRef, "RMWAnimationsAll", 1, ((!value) as float))
EndFunction

Function SetRandomizerFlag(bool value)
	WriteXPMSEData(PlayerRef, "RMWRandomizer", 1, (value as float))
EndFunction

Function SetCloakFlag(bool value)
	WriteXPMSEData(PlayerRef, "RMWCloak", 1, (value as float))
EndFunction

Function SetDualWieldAnimationFlag(Actor akActor, bool value)
	WriteXPMSEData(akActor, "RMWDualwield", 1, ((!value) as float))
EndFunction

Function SetDualWieldAnimationFlagAll(bool value)
	WriteXPMSEData(PlayerRef, "RMWDualwieldAll", 1, ((!value) as float))
EndFunction

Function SetBoardAnimationFlag(Actor akActor, bool value)
	WriteXPMSEData(akActor, "RMWBoard", 1, ((!value) as float))
EndFunction

Function SetBoardAnimationFlagAll(bool value)
	WriteXPMSEData(PlayerRef, "RMWBoardAll", 1, ((!value) as float))
EndFunction

Function SetMixedAnimationFlag(Actor akActor, bool value)
	WriteXPMSEData(akActor, "RMWMixed", 1, ((!value) as float))
EndFunction

Function SetMixedAnimationFlagAll(bool value)
	WriteXPMSEData(PlayerRef, "RMWMixedAll", 1, ((!value) as float))
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

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION, true) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION) && (SKSE.GetPluginVersion("NiOverride") >= NIOVERRIDE_VERSION || SKSE.GetPluginVersion("SKEE") >= SKEE_VERSION) && NiOverride.GetScriptVersion() >= NIOVERRIDE_SCRIPT_VERSION && Game.GetModByName("FNIS.esp") != 255 && FNIS.VersionCompare(7,2,0) >= 0
EndFunction

String Function GetSKSEVersion()
	return SKSE.GetVersion() as String + "." + SKSE.GetVersionMinor() as String  + "." + SKSE.GetVersionBeta() as String
endFunction

Int Function CheckSKSEVersion(int major, int minor, int beta)
	int skseMajor = SKSE.GetVersion()
	int skseMinor = SKSE.GetVersionMinor()
	int skseBeta  = SKSE.GetVersionBeta()

	if skseMajor == major
		If skseMinor == minor
			If skseBeta == beta
				return 0
			ElseIf skseBeta > beta
				return 1
			Else
				return -1
			EndIf
		ElseIf skseMinor > minor
			return 1
		Else
			return -1
		EndIf
	ElseIf skseMajor > major
		return 1
	Else
		return -1
	EndIf
EndFunction