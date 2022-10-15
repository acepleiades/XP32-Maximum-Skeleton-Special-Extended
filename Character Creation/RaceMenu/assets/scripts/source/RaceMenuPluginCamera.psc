Scriptname RaceMenuPluginCamera extends RaceMenuBase

;Ranges
float Property POSITION_RANGE = 30.00 AutoReadOnly ; Set this to the negative min and positive max value for a position slider
float Property POSITION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a position slider steps to

;Camera
string Property NINODE_CAMERA1 = "CME Camera1st [Cam1]" AutoReadOnly
;string Property NINODE_CAMERA3 = "CME Camera3rd [Cam3]" AutoReadOnly

;Callbacks Table
string Property CALLBACK_CAMERA1Y = "XPMSEChangeCamera1stPersonY" AutoReadOnly
string Property CALLBACK_CAMERA1Z = "XPMSEChangeCamera1stPersonZ" AutoReadOnly
;string Property CALLBACK_CAMERA3X = "XPMSEChangeCamera3rdPersonX" AutoReadOnly
;string Property CALLBACK_CAMERA3Y = "XPMSEChangeCamera3rdPersonY" AutoReadOnly
;string Property CALLBACK_CAMERA3Z = "XPMSEChangeCamera3rdPersonZ" AutoReadOnly

;Arrays
float[] _camera1_Position
;float[] _camera3_Position

string Property CATEGORY_CAMERA = "rsm_camera" AutoReadOnly

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

bool _versionValid = false

Event OnCategoryRequest()
	AddCategory(CATEGORY_CAMERA, "$CATEGORY CAMERA")
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
		_camera1_Position = GetNodePosition(target, isFemale, NINODE_CAMERA1, isFirstPerson = true)
		AddSliderEx("$Camera1 Pos Y", CATEGORY_CAMERA, CALLBACK_CAMERA1Y, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _camera1_Position[1])
		AddSliderEx("$Camera1 Pos Z", CATEGORY_CAMERA, CALLBACK_CAMERA1Z, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _camera1_Position[2])

;		_camera3_Position = GetNodePosition(target, isFemale, NINODE_CAMERA3)
;		AddSliderEx("$Camera3 Pos X", CATEGORY_CAMERA, CALLBACK_CAMERA3X, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _camera3_Position[0])
;		AddSliderEx("$Camera3 Pos Y", CATEGORY_CAMERA, CALLBACK_CAMERA3Y, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _camera3_Position[1])
;		AddSliderEx("$Camera3 Pos Z", CATEGORY_CAMERA, CALLBACK_CAMERA3Z, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _camera3_Position[2])
	Endif	
EndEvent

Event OnSliderChanged(string callback, float value)
	bool isFemale = _targetActorBase.GetSex() as bool
	If _versionValid
		If callback == CALLBACK_CAMERA1Y || callback == CALLBACK_CAMERA1Z
			If callback == CALLBACK_CAMERA1Y
				_camera1_Position[1] = value
			ElseIf callback == CALLBACK_CAMERA1Z
				_camera1_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA1, _camera1_Position, isFirstPerson = true)
;		Elseif callback == CALLBACK_CAMERA3X || callback == CALLBACK_CAMERA3Y || callback == CALLBACK_CAMERA3Z
;			If callback == CALLBACK_CAMERA3X
;				_camera3_Position[0] = value
;			ElseIf callback == CALLBACK_CAMERA3Y
;				_camera3_Position[1] = value
;			ElseIf callback == CALLBACK_CAMERA3Z
;				_camera3_Position[2] = value
;			EndIf
;			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA3, _camera3_Position)
		Endif	
	Endif
EndEvent

Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMCPlugin", bool isFirstPerson = false)
	XPMSELib.SetNodePositionSkeleton(akActor, isFemale, nodeName, values, modkey, isFirstPerson)
EndFunction

float[] Function GetNodePosition(Actor akActor, bool isFemale, string nodeName, string modkey = "RMCPlugin", bool isFirstPerson = false)
	return NiOverride.GetNodeTransformPosition(akActor, isFirstPerson, isFemale, nodeName, modkey)
EndFunction

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION)
EndFunction