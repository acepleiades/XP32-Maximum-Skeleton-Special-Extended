Scriptname RaceMenuPluginBeast extends RaceMenuBase

bool Property BEAST_ENABLED = true AutoReadOnly ; Set this to false to rebuild if you don't want beast features

;Ranges
float Property SCALE_MIN = 0.10 AutoReadOnly ; Set this to the min value for a scale slider, cannot be negative nor zero, do no make it smaller than 0.01, if you want smaller than that, you can use the hidden slider.
float Property SCALE_MAX = 3.00 AutoReadOnly ; Set this to the max value for a scale slider
float Property POSITION_RANGE = 20.00 AutoReadOnly ; Set this to the negative min and positive max value for a position slider
float Property SCALE_STEPPING = 0.01 AutoReadOnly ; Set this to the value a scale slider steps to
float Property POSITION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a position slider steps to

;Vanilla Tail
string Property NINODE_TAIL01 = "TailBone01" AutoReadOnly
string Property NINODE_TAIL02 = "TailBone02" AutoReadOnly
string Property NINODE_TAIL03 = "TailBone03" AutoReadOnly
string Property NINODE_TAIL04 = "TailBone04" AutoReadOnly
string Property NINODE_TAIL05 = "TailBone05" AutoReadOnly

string Property NINODE_TAIL01_CME = "CME TailBone01" AutoReadOnly
string Property NINODE_TAIL02_CME = "CME TailBone02" AutoReadOnly
string Property NINODE_TAIL03_CME = "CME TailBone03" AutoReadOnly
string Property NINODE_TAIL04_CME = "CME TailBone04" AutoReadOnly

;HDT4Vanilla Tail
string Property NINODE_HDTTAIL01 = "HDT TailBone01" AutoReadOnly
string Property NINODE_HDTTAIL01_1 = "HDT TailBone01.1" AutoReadOnly
string Property NINODE_HDTTAIL01_2 = "HDT TailBone01.2" AutoReadOnly
string Property NINODE_HDTTAIL01_3 = "HDT TailBone01.3" AutoReadOnly
string Property NINODE_HDTTAIL02 = "HDT TailBone02" AutoReadOnly
string Property NINODE_HDTTAIL02_1 = "HDT TailBone02.1" AutoReadOnly
string Property NINODE_HDTTAIL02_2 = "HDT TailBone02.2" AutoReadOnly
string Property NINODE_HDTTAIL02_3 = "HDT TailBone02.3" AutoReadOnly
string Property NINODE_HDTTAIL03 = "HDT TailBone03" AutoReadOnly
string Property NINODE_HDTTAIL03_1 = "HDT TailBone03.1" AutoReadOnly
string Property NINODE_HDTTAIL03_2 = "HDT TailBone03.2" AutoReadOnly
string Property NINODE_HDTTAIL03_3 = "HDT TailBone03.3" AutoReadOnly
string Property NINODE_HDTTAIL04 = "HDT TailBone04" AutoReadOnly
string Property NINODE_HDTTAIL04_1 = "HDT TailBone04.1" AutoReadOnly
string Property NINODE_HDTTAIL04_2 = "HDT TailBone04.2" AutoReadOnly
string Property NINODE_HDTTAIL04_3 = "HDT TailBone04.3" AutoReadOnly
string Property NINODE_HDTTAIL05 = "HDT TailBone05" AutoReadOnly
string Property NINODE_HDTTAIL05_1 = "HDT TailBone05.1" AutoReadOnly
string Property NINODE_HDTTAIL05_2 = "HDT TailBone05.2" AutoReadOnly
string Property NINODE_HDTTAIL05_3 = "HDT TailBone05.3" AutoReadOnly
string Property NINODE_HDTTAIL06 = "HDT TailBone06" AutoReadOnly

;JacTail
string Property NINODE_JACTAIL01 = "NPC TailBone01" AutoReadOnly
string Property NINODE_JACTAIL02 = "NPC TailBone02" AutoReadOnly
string Property NINODE_JACTAIL03 = "NPC TailBone03" AutoReadOnly
string Property NINODE_JACTAIL04 = "NPC TailBone04" AutoReadOnly
string Property NINODE_JACTAIL05 = "NPC TailBone05" AutoReadOnly
string Property NINODE_JACTAIL06 = "NPC TailBone06" AutoReadOnly
string Property NINODE_JACTAIL07 = "NPC TailBone07" AutoReadOnly
string Property NINODE_JACTAIL08 = "NPC TailBone08" AutoReadOnly
string Property NINODE_JACTAIL02_POS = "POS TailBone02" AutoReadOnly
string Property NINODE_JACTAIL03_POS = "POS TailBone03" AutoReadOnly
string Property NINODE_JACTAIL04_POS = "POS TailBone04" AutoReadOnly
string Property NINODE_JACTAIL05_POS = "POS TailBone05" AutoReadOnly
string Property NINODE_JACTAIL06_POS = "POS TailBone06" AutoReadOnly
string Property NINODE_JACTAIL07_POS = "POS TailBone07" AutoReadOnly
string Property NINODE_JACTAIL08_POS = "POS TailBone08" AutoReadOnly

;Tail Mover
string Property NINODE_TAIL_PELVIS = "CME Tail Pelvis [Pelv]" AutoReadOnly
string Property NINODE_TAIL_SPINE = "CME Tail Spine [Spn0]" AutoReadOnly
string Property NINODE_TAIL_SPINE1 = "CME Tail Spine1 [Spn1]" AutoReadOnly
string Property NINODE_TAIL_LEFT_THIGH = "CME Tail L Thigh [LThg]" AutoReadOnly
string Property NINODE_TAIL_RIGHT_THIGH = "CME Tail R Thigh [RThg]" AutoReadOnly

;Callbacks Table
string Property CALLBACK_TAIL_01_SCALE = "XPMSEChangeTail01Size" AutoReadOnly
string Property CALLBACK_TAIL_02_SCALE = "XPMSEChangeTail02Size" AutoReadOnly
string Property CALLBACK_TAIL_03_SCALE = "XPMSEChangeTail03Size" AutoReadOnly
string Property CALLBACK_TAIL_04_SCALE = "XPMSEChangeTail04Size" AutoReadOnly
string Property CALLBACK_TAIL_05_SCALE = "XPMSEChangeTail05Size" AutoReadOnly
string Property CALLBACK_TAIL_06_SCALE = "XPMSEChangeTail06Size" AutoReadOnly
string Property CALLBACK_TAIL_07_SCALE = "XPMSEChangeTail07Size" AutoReadOnly
string Property CALLBACK_TAIL_08_SCALE = "XPMSEChangeTail08Size" AutoReadOnly
string Property CALLBACK_TAIL_01_THICK = "XPMSEChangeTail01Thick" AutoReadOnly
string Property CALLBACK_TAIL_02_THICK = "XPMSEChangeTail02Thick" AutoReadOnly
string Property CALLBACK_TAIL_03_THICK = "XPMSEChangeTail03Thick" AutoReadOnly
string Property CALLBACK_TAIL_04_THICK = "XPMSEChangeTail04Thick" AutoReadOnly
string Property CALLBACK_TAIL_05_THICK = "XPMSEChangeTail05Thick" AutoReadOnly
string Property CALLBACK_TAIL_06_THICK = "XPMSEChangeTail06Thick" AutoReadOnly
string Property CALLBACK_TAIL_07_THICK = "XPMSEChangeTail07Thick" AutoReadOnly
string Property CALLBACK_TAIL_01_LENGTH = "XPMSEChangeTail01Length" AutoReadOnly
string Property CALLBACK_TAIL_02_LENGTH = "XPMSEChangeTail02Length" AutoReadOnly
string Property CALLBACK_TAIL_03_LENGTH = "XPMSEChangeTail03Length" AutoReadOnly
string Property CALLBACK_TAIL_04_LENGTH = "XPMSEChangeTail04Length" AutoReadOnly
string Property CALLBACK_TAIL_05_LENGTH = "XPMSEChangeTail05Length" AutoReadOnly
string Property CALLBACK_TAIL_06_LENGTH = "XPMSEChangeTail06Length" AutoReadOnly
string Property CALLBACK_TAIL_07_LENGTH = "XPMSEChangeTail07Length" AutoReadOnly
string Property CALLBACK_TAIL_POSX = "XPMSEChangeTailPosX" AutoReadOnly
string Property CALLBACK_TAIL_POSY = "XPMSEChangeTailPosY" AutoReadOnly
string Property CALLBACK_TAIL_POSZ = "XPMSEChangeTailPosZ" AutoReadOnly

string Property TAIL_THICKNESS1_KEY = "Tail Thickness 1" AutoReadOnly
string Property TAIL_THICKNESS2_KEY = "Tail Thickness 2" AutoReadOnly
string Property TAIL_LENGTH_KEY = "Tail Length" AutoReadOnly

;Arrays
float[] _tail_position
float[] _tail_01_length
float[] _tail_02_length
float[] _tail_03_length
float[] _tail_04_length
float[] _tail_05_length
float[] _tail_06_length
float[] _tail_07_length
float[] _tail_hdt_length

string Property CATEGORY_BEASTS = "rsm_beast" AutoReadOnly

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

bool _versionValid = false

Event OnCategoryRequest()
	AddCategory(CATEGORY_BEASTS, "$CATEGORY BEAST")
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
	
	If BEAST_ENABLED && requirement
		_tail_position = GetNodePosition(target, isFemale, NINODE_TAIL_PELVIS)
		AddSliderEx("$Tail Pos X", CATEGORY_BEASTS, CALLBACK_TAIL_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_position[0])
		AddSliderEx("$Tail Pos Y", CATEGORY_BEASTS, CALLBACK_TAIL_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_position[1])
		AddSliderEx("$Tail Pos Z", CATEGORY_BEASTS, CALLBACK_TAIL_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_position[2])
		AddSliderEx("$Tail01", CATEGORY_BEASTS, CALLBACK_TAIL_01_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL01))
		AddSliderEx("$Tail02", CATEGORY_BEASTS, CALLBACK_TAIL_02_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL02))
		AddSliderEx("$Tail03", CATEGORY_BEASTS, CALLBACK_TAIL_03_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL03))
		AddSliderEx("$Tail04", CATEGORY_BEASTS, CALLBACK_TAIL_04_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL04))
		AddSliderEx("$Tail05", CATEGORY_BEASTS, CALLBACK_TAIL_05_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL05))
		AddSliderEx("$Tail06", CATEGORY_BEASTS, CALLBACK_TAIL_06_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_JACTAIL06))
		AddSliderEx("$Tail07", CATEGORY_BEASTS, CALLBACK_TAIL_07_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_JACTAIL07))
		AddSliderEx("$Tail08", CATEGORY_BEASTS, CALLBACK_TAIL_08_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_JACTAIL08))
		AddSliderEx("$Tail01 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_01_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL01, TAIL_THICKNESS1_KEY))
		AddSliderEx("$Tail02 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_02_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL02, TAIL_THICKNESS1_KEY))
		AddSliderEx("$Tail03 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_03_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL03, TAIL_THICKNESS1_KEY))
		AddSliderEx("$Tail04 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_04_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_TAIL04, TAIL_THICKNESS1_KEY))
		AddSliderEx("$Tail05 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_05_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_JACTAIL05, TAIL_THICKNESS1_KEY))
		AddSliderEx("$Tail06 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_06_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_JACTAIL06, TAIL_THICKNESS1_KEY))
		AddSliderEx("$Tail07 Thick", CATEGORY_BEASTS, CALLBACK_TAIL_07_THICK, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_JACTAIL07, TAIL_THICKNESS1_KEY))
		_tail_01_length = GetNodePosition(target, isFemale, NINODE_TAIL01_CME, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail01 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_01_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_01_length[2])
		_tail_02_length = GetNodePosition(target, isFemale, NINODE_TAIL02_CME, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail02 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_02_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_02_length[2])
		_tail_03_length = GetNodePosition(target, isFemale, NINODE_TAIL03_CME, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail03 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_03_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_03_length[2])
		_tail_04_length = GetNodePosition(target, isFemale, NINODE_TAIL04_CME, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail04 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_04_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_04_length[2])
		_tail_05_length = GetNodePosition(target, isFemale, NINODE_JACTAIL06_POS, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail05 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_05_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_05_length[2])
		_tail_06_length = GetNodePosition(target, isFemale, NINODE_JACTAIL07_POS, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail06 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_06_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_06_length[2])
		_tail_07_length = GetNodePosition(target, isFemale, NINODE_JACTAIL08_POS, TAIL_LENGTH_KEY)
		AddSliderEx("$Tail07 Lenght", CATEGORY_BEASTS, CALLBACK_TAIL_07_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _tail_07_length[2])
	Endif
EndEvent

Event OnSliderChanged(string callback, float value)
	bool isFemale = _targetActorBase.GetSex() as bool
	If _versionValid
		If callback == CALLBACK_TAIL_01_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL01, value)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL01, value)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL01, value)
		ElseIf callback == CALLBACK_TAIL_02_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL02, value)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL02, value)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL02, value)
		Elseif callback == CALLBACK_TAIL_03_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL03, value)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL03, value)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL03, value)
		Elseif callback == CALLBACK_TAIL_04_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL04, value)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL04, value)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL04, value)
		Elseif callback == CALLBACK_TAIL_05_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL05, value)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL05, value)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL05, value)
		Elseif callback == CALLBACK_TAIL_06_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL06, value)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL06, value)
		Elseif callback == CALLBACK_TAIL_07_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL07, value)
		Elseif callback == CALLBACK_TAIL_08_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL08, value)
		Elseif callback == CALLBACK_TAIL_01_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL01, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL01_CME, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL01, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL02, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL01, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL02, 1/value, TAIL_THICKNESS2_KEY)
		ElseIf callback == CALLBACK_TAIL_02_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL02, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL02_CME, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL02, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL03, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL02, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL03, 1/value, TAIL_THICKNESS2_KEY)
		Elseif callback == CALLBACK_TAIL_03_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL03, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL03_CME, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL03, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL04, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL03, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL04, 1/value, TAIL_THICKNESS2_KEY)
		Elseif callback == CALLBACK_TAIL_04_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL04, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_TAIL04_CME, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL04, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL05, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL04, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL05, 1/value, TAIL_THICKNESS2_KEY)
		Elseif callback == CALLBACK_TAIL_05_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL05, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_HDTTAIL06, 1/value, TAIL_THICKNESS2_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL05, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL06, 1/value, TAIL_THICKNESS2_KEY)
		Elseif callback == CALLBACK_TAIL_06_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL06, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL07, 1/value, TAIL_THICKNESS2_KEY)
		Elseif callback == CALLBACK_TAIL_07_THICK
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL07, value, TAIL_THICKNESS1_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_JACTAIL08, 1/value, TAIL_THICKNESS2_KEY)
		Elseif callback == CALLBACK_TAIL_POSX || callback == CALLBACK_TAIL_POSY || callback == CALLBACK_TAIL_POSZ
			If callback == CALLBACK_TAIL_POSX
				_tail_position[0] = value
			ElseIf callback == CALLBACK_TAIL_POSY
				_tail_position[1] = value
			ElseIf callback == CALLBACK_TAIL_POSZ
				_tail_position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL_PELVIS, _tail_position)
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL_SPINE, _tail_position)
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL_SPINE1, _tail_position)
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL_LEFT_THIGH, _tail_position)
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL_RIGHT_THIGH, _tail_position)
		Elseif callback == CALLBACK_TAIL_01_LENGTH
			_tail_01_length[2] = value
			_tail_hdt_length = _tail_01_length
			_tail_hdt_length[2] = value/4.0
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL01_CME, _tail_01_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL02_POS, _tail_01_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL01_1, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL01_2, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL01_3, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL02, _tail_hdt_length, TAIL_LENGTH_KEY)
		Elseif callback == CALLBACK_TAIL_02_LENGTH
			_tail_02_length[2] = value
			_tail_hdt_length = _tail_02_length
			_tail_hdt_length[2] = value/4.0
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL02_CME, _tail_02_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL03_POS, _tail_02_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL02_1, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL02_2, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL02_3, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL03, _tail_hdt_length, TAIL_LENGTH_KEY)
		Elseif callback == CALLBACK_TAIL_03_LENGTH
			_tail_03_length[2] = value
			_tail_hdt_length = _tail_03_length
			_tail_hdt_length[2] = value/4.0
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL03_CME, _tail_03_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL04_POS, _tail_03_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL03_1, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL03_2, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL03_3, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL04, _tail_hdt_length, TAIL_LENGTH_KEY)
		Elseif callback == CALLBACK_TAIL_04_LENGTH
			_tail_04_length[2] = value
			_tail_hdt_length = _tail_04_length
			_tail_hdt_length[2] = value/4.0
			SetNodePosition(_targetActor, isFemale, NINODE_TAIL04_CME, _tail_04_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL05_POS, _tail_04_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL04_1, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL04_2, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL04_3, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL05, _tail_hdt_length, TAIL_LENGTH_KEY)
		Elseif callback == CALLBACK_TAIL_05_LENGTH
			_tail_05_length[2] = value
			_tail_hdt_length = _tail_05_length
			_tail_hdt_length[2] = value/4.0
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL06_POS, _tail_05_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL05_1, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL05_2, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL05_3, _tail_hdt_length, TAIL_LENGTH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_HDTTAIL06, _tail_hdt_length, TAIL_LENGTH_KEY)
		Elseif callback == CALLBACK_TAIL_06_LENGTH
			_tail_06_length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL07_POS, _tail_06_length, TAIL_LENGTH_KEY)
		Elseif callback == CALLBACK_TAIL_07_LENGTH
			_tail_07_length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_JACTAIL08_POS, _tail_07_length, TAIL_LENGTH_KEY)
		Endif
	Endif		
EndEvent

Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey = "RMBPlugin")
	XPMSELib.SetNodeScale(akActor, isFemale, nodeName, value, modkey)
EndFunction

Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMBPlugin")
	XPMSELib.SetNodePosition(akActor, isFemale, nodeName, values, modkey)
EndFunction

float Function GetNodeScale(Actor akActor, bool isFemale, string nodeName, string modkey = "RMBPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

float[] Function GetNodePosition(Actor akActor, bool isFemale, string nodeName, string modkey = "RMBPlugin")
	return NiOverride.GetNodeTransformPosition(akActor, false, isFemale, nodeName, modkey)
EndFunction

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION)
EndFunction