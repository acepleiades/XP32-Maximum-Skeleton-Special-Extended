Scriptname RaceMenuPluginFemales extends RaceMenuBase

bool Property MAGIC_ENABLED = true AutoReadOnly ; Set this to false to rebuild if you don't want magic options


;Ranges
float Property SCALE_MIN = 0.10 AutoReadOnly ; Set this to the min value for a scale slider, cannot be negative nor zero, do no make it smaller than 0.01, if you want smaller than that, you can use the hidden slider.
float Property SCALE_MAX = 5.00 AutoReadOnly ; Set this to the max value for a scale slider
float Property POSITION_RANGE = 40.00 AutoReadOnly ; Set this to the negative min and positive max value for a position slider
float Property ROTATION_RANGE = 40.00 AutoReadOnly ; Set this to the negative min and positive max value for a rotation slider, 180.00 = 360 degree, 120 = 240 degree range
float Property SCALE_STEPPING = 0.01 AutoReadOnly ; Set this to the value a scale slider steps to
float Property POSITION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a position slider steps to
float Property ROTATION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a rotation slider steps to

;Common Nodes
string Property NINODE_LEFT_BREAST = "NPC L Breast" AutoReadOnly
string Property NINODE_RIGHT_BREAST = "NPC R Breast" AutoReadOnly
string Property NINODE_LEFT_BREAST_FORWARD = "NPC L Breast01" AutoReadOnly
string Property NINODE_RIGHT_BREAST_FORWARD = "NPC R Breast01" AutoReadOnly
string Property NINODE_LEFT_BUTT = "NPC L Butt" AutoReadOnly
string Property NINODE_RIGHT_BUTT = "NPC R Butt" AutoReadOnly
string Property NINODE_LEFT_PREBREAST = "NPC L PreBreast" AutoReadOnly
string Property NINODE_RIGHT_PREBREAST = "NPC R PreBreast" AutoReadOnly

string Property NINODE_BELLY = "NPC Belly" AutoReadOnly

string Property NINODE_SHOUT = "NPC Head MagicNode [Hmag]" AutoReadOnly
string Property NINODE_MAGIC_LEFT = "NPC L MagicNode [LMag]" AutoReadOnly
string Property NINODE_MAGIC_RIGHT = "NPC R MagicNode [RMag]" AutoReadOnly

string Property NINODE_HEAD = "NPC Head [Head]" AutoReadOnly

;XPMSE specific
string Property NINODE_LEFT_PREBREAST_CME = "CME L PreBreast" AutoReadOnly
string Property NINODE_RIGHT_PREBREAST_CME = "CME R PreBreast" AutoReadOnly

string Property NINODE_BREAST_MAGIC_LEFT = "BreastMagic L" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RIGHT = "BreastMagic R" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RUNE_LEFT = "BreastMagicRune L" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RUNE_RIGHT = "BreastMagicRune R" AutoReadOnly
string Property NINODE_SCHLONG_MAGIC = "SchlongMagic" AutoReadOnly

string Property NINODE_LEFT_HAND_CME = "CME L Hand [LHnd]" AutoReadOnly
string Property NINODE_RIGHT_HAND_CME = "CME R Hand [RHnd]" AutoReadOnly	
string Property NINODE_BREAST_MAGIC_LEFT_CME = "CME BreastMagic L" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RIGHT_CME = "CME BreastMagic R" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RUNE_LEFT_CME = "CME BreastMagicRune L" AutoReadOnly
string Property NINODE_BREAST_MAGIC_RUNE_RIGHT_CME = "CME BreastMagicRune R" AutoReadOnly
string Property NINODE_SCHLONG_MAGIC_CME = "CME SchlongMagic" AutoReadOnly

;Callbacks Table
string Property CALLBACK_BREAST_SCALE = "XPMSEChangeBreastScale" AutoReadOnly
string Property CALLBACK_BREAST_FULLNESS_LEFT = "XPMSEChangeLeftBreastFullness" AutoReadOnly
string Property CALLBACK_BREAST_FULLNESS_RIGHT = "XPMSEChangeRightBreastFullness" AutoReadOnly
string Property CALLBACK_BREAST_LEFT_SAGNESS = "XPMSEChangeLeftBreastSagness" AutoReadOnly
string Property CALLBACK_BREAST_RIGHT_SAGNESS = "XPMSEChangeRightBreastSagness" AutoReadOnly
string Property CALLBACK_BELLY_SCALE = "XPMSEChangeBellyScale" AutoReadOnly
string Property CALLBACK_BUTT_SCALE = "XPMSEChangeButtScale" AutoReadOnly
string Property CALLBACK_SHOUT_STYLE = "XPMSEChangeShoutStyle" AutoReadOnly
string Property CALLBACK_SHOUT_ALL_STYLE = "XPMSEChangeShoutAllStyle" AutoReadOnly
string Property CALLBACK_MAGIC_LEFT_STYLE = "XPMSEChangeMagicLeftStyle" AutoReadOnly
string Property CALLBACK_MAGIC_LEFT_ALL_STYLE = "XPMSEChangeMagicLeftAllStyle" AutoReadOnly
string Property CALLBACK_MAGIC_RIGHT_STYLE = "XPMSEChangeMagicRightStyle" AutoReadOnly
string Property CALLBACK_MAGIC_RIGHT_ALL_STYLE = "XPMSEChangeMagicRightAllStyle" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_LEFT_POSX = "XPMSEChangeBreastMagicLPosX" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_LEFT_POSY = "XPMSEChangeBreastMagicLPosY" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_LEFT_POSZ = "XPMSEChangeBreastMagicLPosZ" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RIGHT_POSX = "XPMSEChangeBreastMagicRPosX" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RIGHT_POSY = "XPMSEChangeBreastMagicRPosY" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RIGHT_POSZ = "XPMSEChangeBreastMagicRPosZ" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSX = "XPMSEChangeBreastMagicRuneLPosX" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSY = "XPMSEChangeBreastMagicRuneLPosY" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSZ = "XPMSEChangeBreastMagicRuneLPosZ" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSX = "XPMSEChangeBreastMagicRuneRPosX" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSY = "XPMSEChangeBreastMagicRuneRPosY" AutoReadOnly
string Property CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSZ = "XPMSEChangeBreastMagicRuneRPosZ" AutoReadOnly

; If you are making your own scaling mod, use your own key name
string Property RMF_BREASTS = "RMFPlugin_Breasts" AutoReadOnly
string Property RMF_BUTT = "RMFPlugin_Butt" AutoReadOnly

string Property CATEGORY_KEY = "rsm_body_scale" AutoReadOnly
string Property CATEGORY_MAGIC = "rsm_magic" AutoReadOnly

string Property MAGIC_KEY = "RMFMagic" AutoReadOnly
string Property MAGIC_LEFT_KEY = "RMFMagicLeft" AutoReadOnly
string Property SHOUT_KEY = "RMFShout" AutoReadOnly

string Property MAGIC_ALL_KEY = "RMFMagicAll" AutoReadOnly
string Property MAGIC_LEFT_ALL_KEY = "RMFMagicAll" AutoReadOnly
string Property SHOUT_ALL_KEY = "RMFShoutAll" AutoReadOnly

;Arrays
float[] _breast_left_sagness
float[] _breast_right_sagness

float[] _breastMagic_Position
float[] _breastMagicLeft_Position
float[] _breastMagicRune_Position
float[] _breastMagicRuneLeft_Position

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

bool _versionValid = false

Event OnCategoryRequest()
	AddCategory(CATEGORY_KEY, "$BODY SCALES")
	AddCategory(CATEGORY_MAGIC, "$CATEGORY MAGIC")
EndEvent

Event OnStartup()
	parent.OnStartup()

	int nioverrideVersion = SKSE.GetPluginVersion("NiOverride")
	int skeeVersion = SKSE.GetPluginVersion("SKEE")
	int nioverrideScriptVersion = NiOverride.GetScriptVersion()

	; Check NiOverride version, disable most features if this fails
	if (nioverrideVersion >= NIOVERRIDE_VERSION || skeeVersion >= SKEE_VERSION ) && nioverrideScriptVersion >= NIOVERRIDE_SCRIPT_VERSION
		_versionValid = true
	Else
		_versionValid = false
	Endif
EndEvent

; Add Custom sliders here
Event OnSliderRequest(Actor target, ActorBase targetBase, Race actorRace, bool isFemale)
	bool requirement = CheckXPMSERequirements(target, isFemale)
	bool isPlayer = (target == _playerActor)
	
	If requirement	
		AddSliderEx("$Breasts", CATEGORY_KEY, CALLBACK_BREAST_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_BREAST, RMF_BREASTS))
				
		AddSliderEx("$Left Breast Fullness", CATEGORY_KEY, CALLBACK_BREAST_FULLNESS_LEFT, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_PREBREAST))
		AddSliderEx("$Right Breast Fullness", CATEGORY_KEY, CALLBACK_BREAST_FULLNESS_RIGHT, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_PREBREAST))

		_breast_left_sagness = GetNodeRotation(target, isFemale, NINODE_LEFT_PREBREAST_CME)
		AddSliderEx("$Left Breast Sagness", CATEGORY_KEY, CALLBACK_BREAST_LEFT_SAGNESS, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _breast_left_sagness[0])
		_breast_right_sagness = GetNodeRotation(target, isFemale, NINODE_RIGHT_PREBREAST_CME)
		AddSliderEx("$Right Breast Sagness", CATEGORY_KEY, CALLBACK_BREAST_RIGHT_SAGNESS, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _breast_right_sagness[0])
				
		AddSliderEx("$Glute", CATEGORY_KEY, CALLBACK_BUTT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_BUTT, RMF_BUTT))
		AddSliderEx("$Belly Size", CATEGORY_KEY, CALLBACK_BELLY_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_BELLY))

		If MAGIC_ENABLED
			if isFemale == true	
				If isPlayer
					If (ReadXPMSEData(target, MAGIC_KEY, 1) - 1) < 0.0
						AddSliderEx("$Magic Style", CATEGORY_MAGIC, CALLBACK_MAGIC_RIGHT_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_KEY, 1))
					Else
						AddSliderEx("$Magic Style", CATEGORY_MAGIC, CALLBACK_MAGIC_RIGHT_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_KEY, 1) - 1)
					Endif
				Else
					AddSliderEx("$Magic Style", CATEGORY_MAGIC, CALLBACK_MAGIC_RIGHT_STYLE, -1.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_KEY, 1) - 1)
				Endif
			Endif
			If isPlayer
				AddSliderEx("$Magic Style All", CATEGORY_MAGIC, CALLBACK_MAGIC_RIGHT_ALL_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_ALL_KEY, 1))
			EndIf
			
			_breastMagic_Position = GetNodePosition(target, isFemale, NINODE_BREAST_MAGIC_RIGHT_CME)
			AddSliderEx("$Breast Magic Pos X", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RIGHT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagic_Position[0])
			AddSliderEx("$Breast Magic Pos Y", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RIGHT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagic_Position[1])
			AddSliderEx("$Breast Magic Pos Z", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RIGHT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagic_Position[2])
			
			if isFemale == true
				If isPlayer
					If (ReadXPMSEData(target, MAGIC_LEFT_KEY, 1) - 1) < 0.0
						AddSliderEx("$Magic Left Style", CATEGORY_MAGIC, CALLBACK_MAGIC_LEFT_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_LEFT_KEY, 1))
					Else
						AddSliderEx("$Magic Left Style", CATEGORY_MAGIC, CALLBACK_MAGIC_LEFT_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_LEFT_KEY, 1) - 1)
					Endif
				Else
					AddSliderEx("$Magic Left Style", CATEGORY_MAGIC, CALLBACK_MAGIC_LEFT_STYLE, -1.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_LEFT_KEY, 1) - 1)
				Endif
			Endif
			If isPlayer
				AddSliderEx("$Magic Left Style All", CATEGORY_MAGIC, CALLBACK_MAGIC_LEFT_ALL_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, MAGIC_LEFT_ALL_KEY, 1))
			EndIf
			
			_breastMagicLeft_Position = GetNodePosition(target, isFemale, NINODE_BREAST_MAGIC_LEFT_CME)
			AddSliderEx("$Breast Magic Left Pos X", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicLeft_Position[0])
			AddSliderEx("$Breast Magic Left Pos Y", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicLeft_Position[1])
			AddSliderEx("$Breast Magic Left Pos Z", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicLeft_Position[2])
			
			_breastMagicRune_Position = GetNodePosition(target, isFemale, NINODE_BREAST_MAGIC_RUNE_RIGHT_CME)
			AddSliderEx("$Breast Magic Rune Pos X", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicRune_Position[0])
			AddSliderEx("$Breast Magic Rune Pos Y", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicRune_Position[1])
			AddSliderEx("$Breast Magic Rune Pos Z", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicRune_Position[2])
			
			_breastMagicRuneLeft_Position = GetNodePosition(target, isFemale, NINODE_BREAST_MAGIC_RUNE_LEFT_CME)
			AddSliderEx("$Breast Magic Rune Left Pos X", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicRuneLeft_Position[0])
			AddSliderEx("$Breast Magic Rune Left Pos Y", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicRuneLeft_Position[1])
			AddSliderEx("$Breast Magic Rune Left Pos Z", CATEGORY_MAGIC, CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _breastMagicRuneLeft_Position[2])
				
			If isPlayer
				If (ReadXPMSEData(target, SHOUT_KEY, 1) - 1) < 0.0
					AddSliderEx("$Shout Style", CATEGORY_MAGIC, CALLBACK_SHOUT_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, SHOUT_KEY, 1))
				Else
					AddSliderEx("$Shout Style", CATEGORY_MAGIC, CALLBACK_SHOUT_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, SHOUT_KEY, 1) - 1)
				Endif
			Else
				AddSliderEx("$Shout Style", CATEGORY_MAGIC, CALLBACK_SHOUT_STYLE, -1.00, 1.00, 1.00, ReadXPMSEData(target, SHOUT_KEY, 1) - 1)
			Endif
			
			If isPlayer
				AddSliderEx("$Shout Style All", CATEGORY_MAGIC, CALLBACK_SHOUT_ALL_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, SHOUT_ALL_KEY, 1))
			EndIf
		Endif
	Endif
EndEvent

Event OnSliderChanged(string callback, float value)
	bool isFemale = _targetActorBase.GetSex() as bool
	If _versionValid
		If callback == CALLBACK_BREAST_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST, value, RMF_BREASTS)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST, value, RMF_BREASTS)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_FORWARD, 1/value, RMF_BREASTS)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_FORWARD, 1/value, RMF_BREASTS)
		Elseif callback == CALLBACK_BREAST_FULLNESS_LEFT
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PREBREAST, value)
		Elseif callback == CALLBACK_BREAST_FULLNESS_RIGHT
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_PREBREAST, value)
		Elseif callback == CALLBACK_BREAST_LEFT_SAGNESS
			_breast_left_sagness[0] = value
			SetNodeRotation(_targetActor, isFemale, NINODE_LEFT_PREBREAST_CME, _breast_left_sagness)
		Elseif callback == CALLBACK_BREAST_RIGHT_SAGNESS
			_breast_right_sagness[0] = value
			SetNodeRotation(_targetActor, isFemale, NINODE_RIGHT_PREBREAST_CME, _breast_right_sagness)	
		Elseif callback == CALLBACK_BUTT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BUTT, value, RMF_BUTT)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BUTT, value, RMF_BUTT)
		Elseif callback == CALLBACK_BELLY_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_BELLY, value)
		Elseif callback == CALLBACK_SHOUT_STYLE
			WriteXPMSEData(_targetActor, SHOUT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SHOUT_ALL_STYLE
			WriteXPMSEData(_targetActor, SHOUT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MAGIC_RIGHT_STYLE
			WriteXPMSEData(_targetActor, MAGIC_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MAGIC_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, MAGIC_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MAGIC_LEFT_STYLE
			WriteXPMSEData(_targetActor, MAGIC_LEFT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MAGIC_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, MAGIC_LEFT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_BREAST_MAGIC_RIGHT_POSX || callback == CALLBACK_BREAST_MAGIC_RIGHT_POSY || callback == CALLBACK_BREAST_MAGIC_RIGHT_POSZ
			If callback == CALLBACK_BREAST_MAGIC_RIGHT_POSX
				_breastMagic_Position[0] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_RIGHT_POSY
				_breastMagic_Position[1] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_RIGHT_POSZ
				_breastMagic_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_BREAST_MAGIC_RIGHT_CME, _breastMagic_Position)
		Elseif callback == CALLBACK_BREAST_MAGIC_LEFT_POSX || callback == CALLBACK_BREAST_MAGIC_LEFT_POSY || callback == CALLBACK_BREAST_MAGIC_LEFT_POSZ
			If callback == CALLBACK_BREAST_MAGIC_LEFT_POSX
				_breastMagicLeft_Position[0] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_LEFT_POSY
				_breastMagicLeft_Position[1] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_LEFT_POSZ
				_breastMagicLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_BREAST_MAGIC_LEFT_CME, _breastMagicLeft_Position)
		Elseif callback == CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSX || callback == CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSY || callback == CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSZ
			If callback == CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSX
				_breastMagicRune_Position[0] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSY
				_breastMagicRune_Position[1] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_RUNE_RIGHT_POSZ
				_breastMagicRune_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_BREAST_MAGIC_RUNE_RIGHT_CME, _breastMagicRune_Position)
		Elseif callback == CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSX || callback == CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSY || callback == CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSZ
			If callback == CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSX
				_breastMagicRuneLeft_Position[0] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSY
				_breastMagicRuneLeft_Position[1] = value
			ElseIf callback == CALLBACK_BREAST_MAGIC_RUNE_LEFT_POSZ
				_breastMagicRuneLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_BREAST_MAGIC_RUNE_LEFT_CME, _breastMagicRuneLeft_Position)
		Endif
	Endif
EndEvent

Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey = "RMFPlugin")
	XPMSELib.SetNodeScale(akActor, isFemale, nodeName, value, modkey)
EndFunction

float Function GetNodeScale(Actor akActor, bool isFemale, string nodeName, string modkey = "RMFPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMFPlugin")
	XPMSELib.SetNodePosition(akActor, isFemale, nodeName, values, modkey)
EndFunction

float[] Function GetNodePosition(Actor akActor, bool isFemale, string nodeName, string modkey = "RMFPlugin")
	return NiOverride.GetNodeTransformPosition(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function SetNodeRotation(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMFPlugin")
	XPMSELib.SetNodeRotation(akActor, isFemale, nodeName, values, modkey)
EndFunction

float[] Function GetNodeRotation(Actor akActor, bool isFemale, string nodeName, string modkey = "RMFPlugin")
	return NiOverride.GetNodeTransformRotation(akActor, false, isFemale, nodeName, modkey)
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

Function WriteXPMSEData(Actor akActor, string keyName, int savelevel, float value)
	if value == 0.0
		XPMSELib.RemoveXPMSEData(akActor, keyName, savelevel)
	else
		XPMSELib.WriteXPMSEData(akActor, keyName, savelevel, value)
	Endif
EndFunction

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION)
EndFunction