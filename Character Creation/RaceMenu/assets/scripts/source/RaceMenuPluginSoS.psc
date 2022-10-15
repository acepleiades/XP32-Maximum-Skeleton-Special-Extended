Scriptname RaceMenuPluginSoS extends RaceMenuBase

;Ranges
float Property SCALE_MIN = 0.01 AutoReadOnly ; Set this to the min value for a scale slider, cannot be negative nor zero, do no make it smaller than 0.01, if you want smaller than that, you can use the hidden slider.
float Property SCALE_MAX = 7.00 AutoReadOnly ; Set this to the max value for a scale slider
float Property POSITION_RANGE = 10.00 AutoReadOnly ; Set this to the negative min and positive max value for a position slider
float Property ROTATION_RANGE = 180.00 AutoReadOnly ; Set this to the negative min and positive max value for a rotation slider, 180.00 = 360 degree, 120 = 240 degree range
float Property SCALE_STEPPING = 0.01 AutoReadOnly ; Set this to the value a scale slider steps to
float Property POSITION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a position slider steps to
float Property ROTATION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a rotation slider steps to

;Common Schlongs of Skyrim nodes
string Property NINODE_SOS_BASE = "NPC GenitalsBase [GenBase]" AutoReadOnly
string Property NINODE_SOS_SCROTUM = "NPC GenitalsScrotum [GenScrot]" AutoReadOnly
string Property NINODE_SOS_GENITALS_01 = "NPC Genitals01 [Gen01]" AutoReadOnly
string Property NINODE_SOS_GENITALS_02 = "NPC Genitals02 [Gen02]" AutoReadOnly
string Property NINODE_SOS_GENITALS_03 = "NPC Genitals03 [Gen03]" AutoReadOnly
string Property NINODE_SOS_GENITALS_04 = "NPC Genitals04 [Gen04]" AutoReadOnly
string Property NINODE_SOS_GENITALS_05 = "NPC Genitals05 [Gen05]" AutoReadOnly
string Property NINODE_SOS_GENITALS_06 = "NPC Genitals06 [Gen06]" AutoReadOnly

;XPMSE Specific
string Property NINODE_SOS_SCROTUM_LEFT = "NPC L GenitalsScrotum [LGenScrot]" AutoReadOnly
string Property NINODE_SOS_SCROTUM_RIGHT = "NPC R GenitalsScrotum [RGenScrot]" AutoReadOnly

string Property NINODE_SOS_BASE_CME = "CME GenitalsBase [GenBase]" AutoReadOnly
string Property NINODE_SOS_SCROTUM_CME = "CME GenitalsScrotum [GenScrot]" AutoReadOnly
string Property NINODE_SOS_GENITALS_01_CME = "CME Genitals01 [Gen01]" AutoReadOnly
string Property NINODE_SOS_GENITALS_02_CME = "CME Genitals02 [Gen02]" AutoReadOnly
string Property NINODE_SOS_GENITALS_03_CME = "CME Genitals03 [Gen03]" AutoReadOnly
string Property NINODE_SOS_GENITALS_04_CME = "CME Genitals04 [Gen04]" AutoReadOnly
string Property NINODE_SOS_GENITALS_05_CME = "CME Genitals05 [Gen05]" AutoReadOnly

;Callbacks Table
string Property CALLBACK_SOS_BASE_SCALE = "XPMSEChangeGenitalsBaseSize" AutoReadOnly
string Property CALLBACK_SOS_SCROTUM_SCALE = "XPMSEChangeGenitalsScrotumSize" AutoReadOnly
string Property CALLBACK_SOS_SCROTUM_LEFT_SCALE = "XPMSEChangeGenitalsScrotumLeftSize" AutoReadOnly
string Property CALLBACK_SOS_SCROTUM_RIGHT_SCALE = "XPMSEChangeGenitalsScrotumRightSize" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_01_SCALE = "XPMSEChangeGenitals1Size" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_02_SCALE = "XPMSEChangeGenitals2Size" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_03_SCALE = "XPMSEChangeGenitals3Size" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_04_SCALE = "XPMSEChangeGenitals4Size" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_05_SCALE = "XPMSEChangeGenitals5Size" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_06_SCALE = "XPMSEChangeGenitals6Size" AutoReadOnly
string Property CALLBACK_SOS_ERECTION = "XPMSEChangeErectionLevel" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_01_THICK = "XPMSEChangeGenitals1Thick" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_02_THICK = "XPMSEChangeGenitals2Thick" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_03_THICK = "XPMSEChangeGenitals3Thick" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_04_THICK = "XPMSEChangeGenitals4Thick" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_05_THICK = "XPMSEChangeGenitals5Thick" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_01_LENGTH = "XPMSEChangeGenitals1Length" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_02_LENGTH = "XPMSEChangeGenitals2Length" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_03_LENGTH = "XPMSEChangeGenitals3Length" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_04_LENGTH = "XPMSEChangeGenitals4Length" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_05_LENGTH = "XPMSEChangeGenitals5Length" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_01_ROTY = "XPMSEChangeGenitals1RotY" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_01_ROTP = "XPMSEChangeGenitals1RotP" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_01_ROTR = "XPMSEChangeGenitals1RotR" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_02_ROTY = "XPMSEChangeGenitals2RotY" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_02_ROTP = "XPMSEChangeGenitals2RotP" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_02_ROTR = "XPMSEChangeGenitals2RotR" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_03_ROTY = "XPMSEChangeGenitals3RotY" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_03_ROTP = "XPMSEChangeGenitals3RotP" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_03_ROTR = "XPMSEChangeGenitals3RotR" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_04_ROTY = "XPMSEChangeGenitals4RotY" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_04_ROTP = "XPMSEChangeGenitals4RotP" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_04_ROTR = "XPMSEChangeGenitals4RotR" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_05_ROTY = "XPMSEChangeGenitals5RotY" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_05_ROTP = "XPMSEChangeGenitals5RotP" AutoReadOnly
string Property CALLBACK_SOS_GENITALS_05_ROTR = "XPMSEChangeGenitals5RotR" AutoReadOnly

; If you are making your own scaling mod, use your own key name
string Property SOS_THICKNESS_KEY = "SoS_Thickness" AutoReadOnly

string Property CATEGORY_GENITALS = "rsm_genitals" AutoReadOnly

string Property SOS_ERECTION = "SoS_Erection" AutoReadOnly

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

;Arrays
float[] _SOS_Genitals_01_Position
float[] _SOS_Genitals_01_Rotation
float[] _SOS_Genitals_02_Position
float[] _SOS_Genitals_02_Rotation
float[] _SOS_Genitals_03_Position
float[] _SOS_Genitals_03_Rotation
float[] _SOS_Genitals_04_Position
float[] _SOS_Genitals_04_Rotation
float[] _SOS_Genitals_05_Position
float[] _SOS_Genitals_05_Rotation

bool _versionValid = false

Event OnCategoryRequest()
	AddCategory(CATEGORY_GENITALS, "$CATEGORY GENITALS")
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
	If requirement	
		AddSliderEx("$SOS Genitals Base", CATEGORY_GENITALS, CALLBACK_SOS_BASE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_BASE))

		AddSliderEx("$SOS Genitals Scrotum", CATEGORY_GENITALS, CALLBACK_SOS_SCROTUM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_SCROTUM))
		AddSliderEx("$SOS Genitals Left Scrotum", CATEGORY_GENITALS, CALLBACK_SOS_SCROTUM_LEFT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_SCROTUM_LEFT))
		AddSliderEx("$SOS Genitals Right Scrotum", CATEGORY_GENITALS, CALLBACK_SOS_SCROTUM_RIGHT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_SCROTUM_RIGHT))

		AddSliderEx("$SOS Genitals 1", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_01_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_01))
		AddSliderEx("$SOS Genitals 1 Thick", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_01_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_01, SOS_THICKNESS_KEY))
		_SOS_Genitals_01_Position = GetNodePosition(target, isFemale, NINODE_SOS_GENITALS_01_CME)
		AddSliderEx("$SOS Genitals 1 Lenght", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_01_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _SOS_Genitals_01_Position[1])
		_SOS_Genitals_01_Rotation = GetNodeRotation(target, isFemale, NINODE_SOS_GENITALS_01_CME)
		AddSliderEx("$SOS Genitals 1 Rot Y", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_01_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_01_Rotation[0])
		AddSliderEx("$SOS Genitals 1 Rot P", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_01_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_01_Rotation[1])	
		AddSliderEx("$SOS Genitals 1 Rot R", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_01_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_01_Rotation[2])


		AddSliderEx("$SOS Genitals 2", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_02_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_02))
		AddSliderEx("$SOS Genitals 2 Thick", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_02_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_02, SOS_THICKNESS_KEY))
		_SOS_Genitals_02_Position = GetNodePosition(target, isFemale, NINODE_SOS_GENITALS_02_CME)
		AddSliderEx("$SOS Genitals 2 Lenght", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_02_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _SOS_Genitals_02_Position[1])
		_SOS_Genitals_02_Rotation = GetNodeRotation(target, isFemale, NINODE_SOS_GENITALS_02_CME)
		AddSliderEx("$SOS Genitals 2 Rot Y", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_02_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_02_Rotation[0])
		AddSliderEx("$SOS Genitals 2 Rot P", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_02_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_02_Rotation[1])	
		AddSliderEx("$SOS Genitals 2 Rot R", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_02_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_02_Rotation[2])

		AddSliderEx("$SOS Genitals 3", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_03_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_03))
		AddSliderEx("$SOS Genitals 3 Thick", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_03_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_03, SOS_THICKNESS_KEY))
		_SOS_Genitals_03_Position = GetNodePosition(target, isFemale, NINODE_SOS_GENITALS_03_CME)
		AddSliderEx("$SOS Genitals 3 Lenght", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_03_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _SOS_Genitals_03_Position[1])
		_SOS_Genitals_03_Rotation = GetNodeRotation(target, isFemale, NINODE_SOS_GENITALS_03_CME)
		AddSliderEx("$SOS Genitals 3 Rot Y", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_03_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_03_Rotation[0])
		AddSliderEx("$SOS Genitals 3 Rot P", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_03_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_03_Rotation[1])	
		AddSliderEx("$SOS Genitals 3 Rot R", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_03_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_03_Rotation[2])
	
		AddSliderEx("$SOS Genitals 4", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_04_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_04))
		AddSliderEx("$SOS Genitals 4 Thick", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_04_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_04, SOS_THICKNESS_KEY))
		_SOS_Genitals_04_Position = GetNodePosition(target, isFemale, NINODE_SOS_GENITALS_04_CME)
		AddSliderEx("$SOS Genitals 4 Lenght", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_04_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _SOS_Genitals_04_Position[1])
		_SOS_Genitals_04_Rotation = GetNodeRotation(target, isFemale, NINODE_SOS_GENITALS_04_CME)
		AddSliderEx("$SOS Genitals 4 Rot Y", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_04_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_04_Rotation[0])
		AddSliderEx("$SOS Genitals 4 Rot P", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_04_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_04_Rotation[1])	
		AddSliderEx("$SOS Genitals 4 Rot R", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_04_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_04_Rotation[2])
		
		AddSliderEx("$SOS Genitals 5", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_05_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_05))
		AddSliderEx("$SOS Genitals 5 Thick", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_05_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_05, SOS_THICKNESS_KEY))
		_SOS_Genitals_05_Position = GetNodePosition(target, isFemale, NINODE_SOS_GENITALS_05_CME)
		AddSliderEx("$SOS Genitals 5 Lenght", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_05_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _SOS_Genitals_05_Position[1])
		_SOS_Genitals_05_Rotation = GetNodeRotation(target, isFemale, NINODE_SOS_GENITALS_05_CME)
		AddSliderEx("$SOS Genitals 5 Rot Y", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_05_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_05_Rotation[0])
		AddSliderEx("$SOS Genitals 5 Rot P", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_05_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_05_Rotation[1])	
		AddSliderEx("$SOS Genitals 5 Rot R", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_05_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _SOS_Genitals_05_Rotation[2])
	
		AddSliderEx("$SOS Genitals 6", CATEGORY_GENITALS, CALLBACK_SOS_GENITALS_06_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SOS_GENITALS_06))
	Endif
	AddSliderEx("$SOS Erection", CATEGORY_GENITALS, CALLBACK_SOS_ERECTION, -10.0, 9.00, 1.00, ReadXPMSEData(_targetActor, SOS_ERECTION, 0))
	HandleErection(_targetActor)
EndEvent

Event OnSliderChanged(string callback, float value)
	bool isFemale = _targetActorBase.GetSex() as bool
	If _versionValid
		If callback == CALLBACK_SOS_BASE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_BASE, value)
		ElseIf callback == CALLBACK_SOS_SCROTUM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_SCROTUM, value)
		ElseIf callback == CALLBACK_SOS_SCROTUM_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_SCROTUM_LEFT, value)
		ElseIf callback == CALLBACK_SOS_SCROTUM_RIGHT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_SCROTUM_RIGHT, value)
		Elseif callback == CALLBACK_SOS_GENITALS_01_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_01, value)
		Elseif callback == CALLBACK_SOS_GENITALS_02_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_02, value)
		Elseif callback == CALLBACK_SOS_GENITALS_03_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_03, value)
		Elseif callback == CALLBACK_SOS_GENITALS_04_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_04, value)
		Elseif callback == CALLBACK_SOS_GENITALS_05_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_05, value)
		Elseif callback == CALLBACK_SOS_GENITALS_06_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_06, value)
		Elseif callback == CALLBACK_SOS_ERECTION
			WriteXPMSEData(_targetActor, SOS_ERECTION, 0, value)
			HandleErection(_targetActor)
		Elseif callback == CALLBACK_SOS_GENITALS_01_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_01, value, SOS_THICKNESS_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_01_CME, 1/value, SOS_THICKNESS_KEY)
		Elseif callback == CALLBACK_SOS_GENITALS_02_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_02, value, SOS_THICKNESS_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_02_CME, 1/value, SOS_THICKNESS_KEY)
		Elseif callback == CALLBACK_SOS_GENITALS_03_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_03, value, SOS_THICKNESS_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_03_CME, 1/value, SOS_THICKNESS_KEY)
		Elseif callback == CALLBACK_SOS_GENITALS_04_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_04, value, SOS_THICKNESS_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_04_CME, 1/value, SOS_THICKNESS_KEY)
		Elseif callback == CALLBACK_SOS_GENITALS_05_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_05, value, SOS_THICKNESS_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SOS_GENITALS_05_CME, 1/value, SOS_THICKNESS_KEY)
		Elseif callback == CALLBACK_SOS_GENITALS_01_LENGTH
			_SOS_Genitals_01_Position[1] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SOS_GENITALS_01_CME, _SOS_Genitals_01_Position)
		Elseif callback == CALLBACK_SOS_GENITALS_02_LENGTH
			_SOS_Genitals_02_Position[1] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SOS_GENITALS_02_CME, _SOS_Genitals_02_Position)
		Elseif callback == CALLBACK_SOS_GENITALS_03_LENGTH
			_SOS_Genitals_03_Position[1] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SOS_GENITALS_03_CME, _SOS_Genitals_03_Position)
		Elseif callback == CALLBACK_SOS_GENITALS_04_LENGTH
			_SOS_Genitals_04_Position[1] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SOS_GENITALS_04_CME, _SOS_Genitals_04_Position)
		Elseif callback == CALLBACK_SOS_GENITALS_05_LENGTH
			_SOS_Genitals_05_Position[1] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SOS_GENITALS_05_CME, _SOS_Genitals_05_Position)
		Elseif callback == CALLBACK_SOS_GENITALS_01_ROTY || callback == CALLBACK_SOS_GENITALS_01_ROTP || callback == CALLBACK_SOS_GENITALS_01_ROTR
			If callback == CALLBACK_SOS_GENITALS_01_ROTY
				_SOS_Genitals_01_Rotation[0] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_01_ROTP
				_SOS_Genitals_01_Rotation[1] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_01_ROTR
				_SOS_Genitals_01_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SOS_GENITALS_01_CME, _SOS_Genitals_01_Rotation)
		Elseif callback == CALLBACK_SOS_GENITALS_02_ROTY || callback == CALLBACK_SOS_GENITALS_02_ROTP || callback == CALLBACK_SOS_GENITALS_02_ROTR
			If callback == CALLBACK_SOS_GENITALS_02_ROTY
				_SOS_Genitals_02_Rotation[0] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_02_ROTP
				_SOS_Genitals_02_Rotation[1] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_02_ROTR
				_SOS_Genitals_02_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SOS_GENITALS_02_CME, _SOS_Genitals_02_Rotation)		
		Elseif callback == CALLBACK_SOS_GENITALS_03_ROTY || callback == CALLBACK_SOS_GENITALS_03_ROTP || callback == CALLBACK_SOS_GENITALS_03_ROTR
			If callback == CALLBACK_SOS_GENITALS_03_ROTY
				_SOS_Genitals_03_Rotation[0] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_03_ROTP
				_SOS_Genitals_03_Rotation[1] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_03_ROTR
				_SOS_Genitals_03_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SOS_GENITALS_03_CME, _SOS_Genitals_03_Rotation)
		Elseif callback == CALLBACK_SOS_GENITALS_04_ROTY || callback == CALLBACK_SOS_GENITALS_04_ROTP || callback == CALLBACK_SOS_GENITALS_04_ROTR
			If callback == CALLBACK_SOS_GENITALS_04_ROTY
				_SOS_Genitals_04_Rotation[0] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_04_ROTP
				_SOS_Genitals_04_Rotation[1] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_04_ROTR
				_SOS_Genitals_04_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SOS_GENITALS_04_CME, _SOS_Genitals_04_Rotation)
		Elseif callback == CALLBACK_SOS_GENITALS_05_ROTY || callback == CALLBACK_SOS_GENITALS_05_ROTP || callback == CALLBACK_SOS_GENITALS_05_ROTR
			If callback == CALLBACK_SOS_GENITALS_05_ROTY
				_SOS_Genitals_05_Rotation[0] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_05_ROTP
				_SOS_Genitals_05_Rotation[1] = value
			ElseIf callback == CALLBACK_SOS_GENITALS_05_ROTR
				_SOS_Genitals_05_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SOS_GENITALS_05_CME, _SOS_Genitals_05_Rotation)		
		Endif
	Endif
EndEvent

Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey = "SoSPlugin")
	XPMSELib.SetNodeScale(akActor, isFemale, nodeName, value, modkey)
EndFunction

Function SetNodeRotation(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "SoSPlugin")
	XPMSELib.SetNodeRotation(akActor, isFemale, nodeName, values, modkey)
EndFunction

Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "SoSPlugin")
	XPMSELib.SetNodePosition(akActor, isFemale, nodeName, values, modkey)
EndFunction

float Function GetNodeScale(Actor akActor, bool isFemale, string nodeName, string modkey = "SoSPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

float[] Function GetNodeRotation(Actor akActor, bool isFemale, string nodeName, string modkey = "SoSPlugin")
	return NiOverride.GetNodeTransformRotation(akActor, false, isFemale, nodeName, modkey)
EndFunction

float[] Function GetNodePosition(Actor akActor, bool isFemale, string nodeName, string modkey = "SoSPlugin")
	return NiOverride.GetNodeTransformPosition(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function HandleErection(Actor akActor)
	int _erectionLevel = ReadXPMSEData(akActor, SOS_ERECTION, 0) as int
	If _erectionLevel == -10
		Debug.SendAnimationEvent(akActor, "SOSFlaccid")
	Else
		Debug.SendAnimationEvent(akActor, "SOSBend" + _erectionLevel)
	EndIf
EndFunction

Function WriteXPMSEData(Actor akActor, string keyName, int savelevel, float value)
	if value == 0.0
		XPMSELib.RemoveXPMSEData(akActor, keyName, savelevel)
	else
		XPMSELib.WriteXPMSEData(akActor, keyName, savelevel, value)
	Endif
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

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION)
EndFunction

