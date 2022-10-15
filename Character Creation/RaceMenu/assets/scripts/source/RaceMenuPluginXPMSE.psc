Scriptname RaceMenuPluginXPMSE extends RaceMenuBase

;Ranges
float Property SCALE_MIN = 0.10 AutoReadOnly ; Set this to the min value for a scale slider, cannot be negative nor zero, do no make it smaller than 0.01, if you want smaller than that, you can use the hidden slider.
float Property SCALE_MAX = 3.00 AutoReadOnly ; Set this to the max value for a scale slider
float Property POSITION_RANGE = 10.00 AutoReadOnly ; Set this to the negative min and positive max value for a position slider
float Property SCALE_STEPPING = 0.01 AutoReadOnly ; Set this to the value a scale slider steps to
float Property POSITION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a position slider steps to

;Camera
string Property NINODE_CAMERA1 = "CME Camera1st [Cam1]" AutoReadOnly
string Property NINODE_CAMERA3 = "CME Camera3rd [Cam3]" AutoReadOnly

string Property NINODE_ROOT = "NPC Root [Root]" AutoReadOnly
string Property NINODE_COM = "NPC COM [COM ]" AutoReadOnly
string Property NINODE_BODY_CME = "CME Body [Body]" AutoReadOnly
string Property NINODE_BODY_LOWER_CME = "CME LBody [LBody]" AutoReadOnly
string Property NINODE_BODY_UPPER_CME = "CME UBody [UBody]" AutoReadOnly
string Property NINODE_NECK_CME = "CME Neck [Neck]" AutoReadOnly
string Property NINODE_PELVIS = "NPC Pelvis [Pelv]" AutoReadOnly
string Property NINODE_PELVIS_CME = "CME Pelvis [Pelv]" AutoReadOnly
string Property NINODE_SPINE = "NPC Spine [Spn0]" AutoReadOnly
string Property NINODE_SPINE_CME = "CME Spine [Spn0]" AutoReadOnly
string Property NINODE_SPINE_1 = "NPC Spine1 [Spn1]" AutoReadOnly
string Property NINODE_SPINE_1_CME = "CME Spine1 [Spn1]" AutoReadOnly
string Property NINODE_SPINE_2 = "NPC Spine2 [Spn2]" AutoReadOnly
string Property NINODE_SPINE_2_CME = "CME Spine2 [Spn2]" AutoReadOnly
string Property NINODE_LEFT_THIGH = "NPC L Thigh [LThg]" AutoReadOnly
string Property NINODE_LEFT_THIGH_CME = "CME L Thigh [LThg]" AutoReadOnly
string Property NINODE_RIGHT_THIGH = "NPC R Thigh [RThg]" AutoReadOnly
string Property NINODE_RIGHT_THIGH_FAIL = "NPC R Thigh [LThg]" AutoReadOnly
string Property NINODE_RIGHT_THIGH_CME = "CME R Thigh [RThg]" AutoReadOnly
string Property NINODE_LEFT_CALF = "NPC L Calf [LClf]" AutoReadOnly
string Property NINODE_LEFT_CALF_CME = "CME L Calf [LClf]" AutoReadOnly
string Property NINODE_RIGHT_CALF = "NPC R Calf [RClf]" AutoReadOnly
string Property NINODE_RIGHT_CALF_FAIL = "NPC R Calf [LClf]" AutoReadOnly
string Property NINODE_RIGHT_CALF_CME = "CME R Calf [RClf]" AutoReadOnly
string Property NINODE_LEFT_FOOT = "NPC L Foot [Lft ]" AutoReadOnly
string Property NINODE_LEFT_FOOT_CME = "CME L Foot [Lft ]" AutoReadOnly
string Property NINODE_RIGHT_FOOT = "NPC R Foot [Rft ]" AutoReadOnly
string Property NINODE_RIGHT_FOOT_FAIL = "NPC R Foot [Lft ]" AutoReadOnly
string Property NINODE_RIGHT_FOOT_CME = "CME R Foot [Rft ]" AutoReadOnly
string Property NINODE_LEFT_TOE0 = "NPC L Toe0 [LToe]" AutoReadOnly
string Property NINODE_LEFT_TOE0_CME = "CME L Toe0 [LToe]" AutoReadOnly
string Property NINODE_RIGHT_TOE0 = "NPC R Toe0 [RToe]" AutoReadOnly
string Property NINODE_RIGHT_TOE0_FAIL = "NPC R Toe0 [LToe]" AutoReadOnly
string Property NINODE_RIGHT_TOE0_CME = "CME R Toe0 [RToe]" AutoReadOnly		
string Property NINODE_LEFT_CLAVICLE = "NPC L Clavicle [LClv]" AutoReadOnly
string Property NINODE_LEFT_CLAVICLE_FAIL = "NPC L Clavicle [RClv]" AutoReadOnly
string Property NINODE_LEFT_CLAVICLE_CME = "CME L Clavicle [LClv]" AutoReadOnly
string Property NINODE_RIGHT_CLAVICLE = "NPC R Clavicle [RClv]" AutoReadOnly
string Property NINODE_RIGHT_CLAVICLE_CME = "CME R Clavicle [RClv]" AutoReadOnly
string Property NINODE_LEFT_UPPERARM = "NPC L UpperArm [LUar]" AutoReadOnly
string Property NINODE_LEFT_UPPERARM_FAIL = "NPC L UpperArm [RUar]" AutoReadOnly
string Property NINODE_LEFT_UPPERARM_CME = "CME L UpperArm [LUar]" AutoReadOnly
string Property NINODE_RIGHT_UPPERARM = "NPC R UpperArm [RUar]" AutoReadOnly
string Property NINODE_RIGHT_UPPERARM_CME = "CME R UpperArm [RUar]" AutoReadOnly
string Property NINODE_LEFT_FOREARM = "NPC L Forearm [LLar]" AutoReadOnly
string Property NINODE_LEFT_FOREARM_FAIL = "NPC L Forearm [RLar]" AutoReadOnly
string Property NINODE_LEFT_FOREARM_CME = "CME L Forearm [LLar]" AutoReadOnly
string Property NINODE_RIGHT_FOREARM = "NPC R Forearm [RLar]" AutoReadOnly
string Property NINODE_RIGHT_FOREARM_CME = "CME R Forearm [RLar]" AutoReadOnly
string Property NINODE_LEFT_HAND = "NPC L Hand [LHnd]" AutoReadOnly
string Property NINODE_LEFT_HAND_FAIL = "NPC L Hand [RHnd]" AutoReadOnly
string Property NINODE_LEFT_HAND_CME = "CME L Hand [LHnd]" AutoReadOnly
string Property NINODE_RIGHT_HAND = "NPC R Hand [RHnd]" AutoReadOnly
string Property NINODE_RIGHT_HAND_CME = "CME R Hand [RHnd]" AutoReadOnly
string Property NINODE_LEFT_THUMB0 = "NPC L Finger00 [LF00]" AutoReadOnly
string Property NINODE_LEFT_THUMB0_FAIL = "NPC L Finger00 [RF00]" AutoReadOnly
string Property NINODE_LEFT_THUMB0_CME = "CME L Finger00 [LF00]" AutoReadOnly
string Property NINODE_LEFT_THUMB1 = "NPC L Finger01 [LF01]" AutoReadOnly
string Property NINODE_LEFT_THUMB1_FAIL = "NPC L Finger01 [RF01]" AutoReadOnly
string Property NINODE_LEFT_THUMB1_CME = "CME L Finger01 [LF01]" AutoReadOnly
string Property NINODE_LEFT_THUMB2 = "NPC L Finger02 [LF02]" AutoReadOnly
string Property NINODE_LEFT_THUMB2_FAIL = "NPC L Finger02 [RF02]" AutoReadOnly
string Property NINODE_RIGHT_THUMB0 = "NPC R Finger00 [RF00]" AutoReadOnly
string Property NINODE_RIGHT_THUMB0_CME = "CME R Finger00 [RF00]" AutoReadOnly
string Property NINODE_RIGHT_THUMB1 = "NPC R Finger01 [RF01]" AutoReadOnly
string Property NINODE_RIGHT_THUMB1_CME = "CME R Finger01 [RF01]" AutoReadOnly
string Property NINODE_RIGHT_THUMB2 = "NPC R Finger02 [RF02]" AutoReadOnly
string Property NINODE_LEFT_INDEX0 = "NPC L Finger10 [LF10]" AutoReadOnly
string Property NINODE_LEFT_INDEX0_FAIL = "NPC L Finger10 [RF10]" AutoReadOnly
string Property NINODE_LEFT_INDEX0_CME = "CME L Finger10 [LF10]" AutoReadOnly
string Property NINODE_LEFT_INDEX1 = "NPC L Finger11 [LF11]" AutoReadOnly
string Property NINODE_LEFT_INDEX1_FAIL = "NPC L Finger11 [RF11]" AutoReadOnly
string Property NINODE_LEFT_INDEX1_CME = "CME L Finger11 [LF11]" AutoReadOnly
string Property NINODE_LEFT_INDEX2 = "NPC L Finger12 [LF12]" AutoReadOnly
string Property NINODE_LEFT_INDEX2_FAIL = "NPC L Finger12 [RF12]" AutoReadOnly
string Property NINODE_RIGHT_INDEX0 = "NPC R Finger10 [RF10]" AutoReadOnly
string Property NINODE_RIGHT_INDEX0_CME = "CME R Finger10 [RF10]" AutoReadOnly
string Property NINODE_RIGHT_INDEX1 = "NPC R Finger11 [RF11]" AutoReadOnly
string Property NINODE_RIGHT_INDEX1_CME = "CME R Finger11 [RF11]" AutoReadOnly
string Property NINODE_RIGHT_INDEX2 = "NPC R Finger12 [RF12]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE0 = "NPC L Finger20 [LF20]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE0_FAIL = "NPC L Finger20 [RF20]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE0_CME = "CME L Finger20 [LF20]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE1 = "NPC L Finger21 [LF21]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE1_FAIL = "NPC L Finger21 [RF21]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE1_CME = "CME L Finger21 [LF21]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE2 = "NPC L Finger22 [LF22]" AutoReadOnly
string Property NINODE_LEFT_MIDDLE2_FAIL = "NPC L Finger22 [RF22]" AutoReadOnly
string Property NINODE_RIGHT_MIDDLE0 = "NPC R Finger20 [RF20]" AutoReadOnly
string Property NINODE_RIGHT_MIDDLE0_CME = "CME R Finger20 [RF20]" AutoReadOnly
string Property NINODE_RIGHT_MIDDLE1 = "NPC R Finger21 [RF21]" AutoReadOnly
string Property NINODE_RIGHT_MIDDLE1_CME = "CME R Finger21 [RF21]" AutoReadOnly
string Property NINODE_RIGHT_MIDDLE2 = "NPC R Finger22 [RF22]" AutoReadOnly
string Property NINODE_LEFT_RING0 = "NPC L Finger30 [LF30]" AutoReadOnly
string Property NINODE_LEFT_RING0_FAIL = "NPC L Finger30 [RF30]" AutoReadOnly
string Property NINODE_LEFT_RING0_CME = "CME L Finger30 [LF30]" AutoReadOnly
string Property NINODE_LEFT_RING1 = "NPC L Finger31 [LF31]" AutoReadOnly
string Property NINODE_LEFT_RING1_FAIL = "NPC L Finger31 [RF31]" AutoReadOnly
string Property NINODE_LEFT_RING1_CME = "CME L Finger31 [LF31]" AutoReadOnly
string Property NINODE_LEFT_RING2 = "NPC L Finger32 [LF32]" AutoReadOnly
string Property NINODE_LEFT_RING2_FAIL = "NPC L Finger32 [RF32]" AutoReadOnly
string Property NINODE_RIGHT_RING0 = "NPC R Finger30 [RF30]" AutoReadOnly
string Property NINODE_RIGHT_RING0_CME = "CME R Finger30 [RF30]" AutoReadOnly
string Property NINODE_RIGHT_RING1 = "NPC R Finger31 [RF31]" AutoReadOnly
string Property NINODE_RIGHT_RING1_CME = "CME R Finger31 [RF31]" AutoReadOnly
string Property NINODE_RIGHT_RING2 = "NPC R Finger32 [RF32]" AutoReadOnly
string Property NINODE_LEFT_PINKY0 = "NPC L Finger40 [LF40]" AutoReadOnly
string Property NINODE_LEFT_PINKY0_FAIL = "NPC L Finger40 [RF40]" AutoReadOnly
string Property NINODE_LEFT_PINKY0_CME = "CME L Finger40 [LF40]" AutoReadOnly
string Property NINODE_LEFT_PINKY1 = "NPC L Finger41 [LF41]" AutoReadOnly
string Property NINODE_LEFT_PINKY1_FAIL = "NPC L Finger41 [RF41]" AutoReadOnly
string Property NINODE_LEFT_PINKY1_CME = "CME L Finger41 [LF41]" AutoReadOnly
string Property NINODE_LEFT_PINKY2 = "NPC L Finger42 [LF42]" AutoReadOnly
string Property NINODE_LEFT_PINKY2_FAIL = "NPC L Finger42 [RF42]" AutoReadOnly
string Property NINODE_RIGHT_PINKY0 = "NPC R Finger40 [RF40]" AutoReadOnly
string Property NINODE_RIGHT_PINKY0_CME = "CME R Finger40 [RF40]" AutoReadOnly
string Property NINODE_RIGHT_PINKY1 = "NPC R Finger41 [RF41]" AutoReadOnly
string Property NINODE_RIGHT_PINKY1_CME = "CME R Finger41 [RF41]" AutoReadOnly
string Property NINODE_RIGHT_PINKY2 = "NPC R Finger42 [RF42]" AutoReadOnly
string Property NINODE_LEFT_FOREARMTWIST_1 = "NPC L ForearmTwist1 [LLt1]" AutoReadOnly
string Property NINODE_RIGHT_FOREARMTWIST_1 = "NPC R ForearmTwist1 [RLt1]" AutoReadOnly
string Property NINODE_LEFT_FOREARMTWIST_2 = "NPC L ForearmTwist2 [LLt2]" AutoReadOnly
string Property NINODE_RIGHT_FOREARMTWIST_2 = "NPC R ForearmTwist2 [RLt2]" AutoReadOnly

;Werewolf
string Property NINODE_LEFT_BREAST_P1 = "NPC L Breast P1" AutoReadOnly
string Property NINODE_RIGHT_BREAST_P1 = "NPC R Breast P1" AutoReadOnly
string Property NINODE_LEFT_BREAST_P1_FORWARD = "NPC L Breast01 P1" AutoReadOnly
string Property NINODE_RIGHT_BREAST_P1_FORWARD = "NPC R Breast01 P1" AutoReadOnly
string Property NINODE_LEFT_BREAST_P2 = "NPC L Breast P2" AutoReadOnly
string Property NINODE_RIGHT_BREAST_P2 = "NPC R Breast P2" AutoReadOnly
string Property NINODE_LEFT_BREAST_P2_FORWARD = "NPC L Breast01 P2" AutoReadOnly
string Property NINODE_RIGHT_BREAST_P2_FORWARD = "NPC R Breast01 P2" AutoReadOnly
string Property NINODE_LEFT_BREAST_P3 = "NPC L Breast P3" AutoReadOnly
string Property NINODE_RIGHT_BREAST_P3 = "NPC R Breast P3" AutoReadOnly
string Property NINODE_LEFT_BREAST_P3_FORWARD = "NPC L Breast01 P3" AutoReadOnly
string Property NINODE_RIGHT_BREAST_P3_FORWARD = "NPC R Breast01 P3" AutoReadOnly

string Property NINODE_AXE = "WeaponAxe" AutoReadOnly
string Property NINODE_MACE = "WeaponMace" AutoReadOnly
string Property NINODE_SWORD = "WeaponSword" AutoReadOnly
string Property NINODE_DAGGER = "WeaponDagger" AutoReadOnly
string Property NINODE_QUIVER = "QUIVER" AutoReadOnly
string Property NINODE_AXE_LEFT = "WeaponAxeLeft" AutoReadOnly
string Property NINODE_MACE_LEFT = "WeaponMaceLeft" AutoReadOnly
string Property NINODE_SWORD_LEFT = "WeaponSwordLeft" AutoReadOnly
string Property NINODE_DAGGER_LEFT = "WeaponDaggerLeft" AutoReadOnly
string Property NINODE_BOLT = "BOLT" AutoReadOnly
string Property NINODE_BOLT_QUIVER = "BOLT_QUIVER" AutoReadOnly
string Property NINODE_SWORD_ALT = "WeaponSwordOnBack" AutoReadOnly
string Property NINODE_SWORD_LEFT_ALT = "WeaponSwordLeftOnBack" AutoReadOnly
string Property NINODE_DAGGER_ALT = "WeaponDaggerAnkle" AutoReadOnly
string Property NINODE_DAGGER_LEFT_ALT = "WeaponDaggerLeftAnkle" AutoReadOnly
string Property NINODE_QUIVER_ALT = "QUIVERLeftHipBolt" AutoReadOnly

;Callbacks Table
string Property CALLBACK_HEAD_POSZ = "XPMSEChangeHeadPosZ" AutoReadOnly
string Property CALLBACK_HEAD_POSY = "XPMSEChangeHeadPosY" AutoReadOnly
string Property CALLBACK_LEFT_UPPERARM_SCALE = "XPMSEChangeLeftUpperArmSize" AutoReadOnly
string Property CALLBACK_RIGHT_UPPERARM_SCALE = "XPMSEChangeRightUpperArmSize" AutoReadOnly
string Property CALLBACK_LEFT_FOREARM_SCALE = "XPMSEChangeLeftForeArmSize" AutoReadOnly
string Property CALLBACK_RIGHT_FOREARM_SCALE = "XPMSEChangeRightForeArmSize" AutoReadOnly
string Property CALLBACK_LEFT_FOREARMTWIST_1_SCALE = "XPMSEChangeLeftForearmTwist" AutoReadOnly
string Property CALLBACK_RIGHT_FOREARMTWIST_1_SCALE = "XPMSEChangeRightForearmTwist" AutoReadOnly
string Property CALLBACK_LEFT_FOREARMTWIST_2_SCALE = "XPMSEChangeLeftForearmTwist2" AutoReadOnly
string Property CALLBACK_RIGHT_FOREARMTWIST_2_SCALE = "XPMSEChangeRightForearmTwist2" AutoReadOnly
string Property CALLBACK_LEFT_HAND_SCALE = "XPMSEChangeLeftHandSize" AutoReadOnly
string Property CALLBACK_RIGHT_HAND_SCALE = "XPMSEChangeRightHandSize" AutoReadOnly
string Property CALLBACK_LEFT_THUMB_SCALE = "XPMSEChangeLeftThumbSize" AutoReadOnly
string Property CALLBACK_LEFT_INDEX_SCALE = "XPMSEChangeLeftIndexSize" AutoReadOnly
string Property CALLBACK_LEFT_MIDDLE_SCALE = "XPMSEChangeLeftMiddleSize" AutoReadOnly
string Property CALLBACK_LEFT_RING_SCALE = "XPMSEChangeLeftRingSize" AutoReadOnly
string Property CALLBACK_LEFT_PINKY_SCALE = "XPMSEChangeLeftPinkySize" AutoReadOnly
string Property CALLBACK_RIGHT_THUMB_SCALE = "XPMSEChangeRightThumbSize" AutoReadOnly
string Property CALLBACK_RIGHT_INDEX_SCALE = "XPMSEChangeRightIndexSize" AutoReadOnly
string Property CALLBACK_RIGHT_MIDDLE_SCALE = "XPMSEChangeRightMiddleSize" AutoReadOnly
string Property CALLBACK_RIGHT_RING_SCALE = "XPMSEChangeRightRingSize" AutoReadOnly
string Property CALLBACK_RIGHT_PINKY_SCALE = "XPMSEChangeRightPinkySize" AutoReadOnly
string Property CALLBACK_LEFT_PALM_SCALE = "XPMSEChangeLeftPalmSize" AutoReadOnly
string Property CALLBACK_RIGHT_PALM_SCALE = "XPMSEChangeRighPalmSize" AutoReadOnly
string Property CALLBACK_LEFT_CLAVICLE_SCALE = "XPMSEChangeLeftClavicleSize" AutoReadOnly
string Property CALLBACK_RIGHT_CLAVICLE_SCALE = "XPMSEChangeRightClavicleSize" AutoReadOnly
string Property CALLBACK_PELVIS_SCALE = "XPMSEChangePelvisSize" AutoReadOnly
string Property CALLBACK_WAIST_SCALE = "XPMSEChangeWaistSize" AutoReadOnly
string Property CALLBACK_SPINE_SCALE = "XPMSEChangeSpineSize" AutoReadOnly
string Property CALLBACK_SPINE1_SCALE = "XPMSEChangeSpine1Size" AutoReadOnly
string Property CALLBACK_SPINE2_SCALE = "XPMSEChangeSpine2Size" AutoReadOnly
string Property CALLBACK_LEFT_THIGH_SCALE = "XPMSEChangeLeftThighSize" AutoReadOnly
string Property CALLBACK_RIGHT_THIGH_SCALE = "XPMSEChangeRightThighSize" AutoReadOnly
string Property CALLBACK_LEFT_CALF_SCALE = "XPMSEChangeLeftCalfSize" AutoReadOnly
string Property CALLBACK_RIGHT_CALF_SCALE = "XPMSEChangeRightCalfSize" AutoReadOnly
string Property CALLBACK_LEFT_FOOT_SCALE = "XPMSEChangeLeftFootSize" AutoReadOnly
string Property CALLBACK_RIGHT_FOOT_SCALE = "XPMSEChangeRightFootSize" AutoReadOnly
string Property CALLBACK_LEFT_TOE0_SCALE = "XPMSEChangeLeftToe0Size" AutoReadOnly
string Property CALLBACK_RIGHT_TOE0_SCALE = "XPMSEChangeRightToe0Size" AutoReadOnly
string Property CALLBACK_LEG_SCALE = "XPMSEChangeLegSize" AutoReadOnly
string Property CALLBACK_UPPERARM_LENGTH = "XPMSEChangeUpperArmLength" AutoReadOnly
string Property CALLBACK_FOREARM_LENGTH = "XPMSEChangeForeArmLength" AutoReadOnly
string Property CALLBACK_THUMB_LENGTH = "XPMSEChangeThumbLength" AutoReadOnly
string Property CALLBACK_INDEX_LENGTH = "XPMSEChangeIndexLength" AutoReadOnly
string Property CALLBACK_MIDDLE_LENGTH = "XPMSEChangeMiddleLength" AutoReadOnly
string Property CALLBACK_RING_LENGTH = "XPMSEChangeRingLength" AutoReadOnly
string Property CALLBACK_PINKY_LENGTH = "XPMSEChangePinkyLength" AutoReadOnly
string Property CALLBACK_LEG_LENGTH_THIGH = "XPMSEChangeLegLengthThigh" AutoReadOnly
string Property CALLBACK_LEG_LENGTH_CALF = "XPMSEChangeLegLengthCalf" AutoReadOnly
string Property CALLBACK_SPINE0_LENGTH = "XPMSEChangeSpine0Length" AutoReadOnly
string Property CALLBACK_SPINE1_LENGTH = "XPMSEChangeSpine1Length" AutoReadOnly
string Property CALLBACK_SPINE2_LENGTH = "XPMSEChangeSpine2Length" AutoReadOnly
string Property CALLBACK_SPINE3_LENGTH = "XPMSEChangeSpine3Length" AutoReadOnly

;Extended Callbacks
string Property CALLBACK_BREAST_LEFT_SCALE = "ChangeLeftBreastScale" AutoReadOnly
string Property CALLBACK_BREAST_RIGHT_SCALE = "ChangeRightBreastScale" AutoReadOnly
string Property CALLBACK_BREAST_FORWARD_LEFT_SCALE = "ChangeLeftBreastScaleCurve" AutoReadOnly
string Property CALLBACK_BREAST_FORWARD_RIGHT_SCALE = "ChangeRightBreastScaleCurve" AutoReadOnly

;Arrays
float[] _head_Position
float[] _upperArm_Length
float[] _foreArm_Length
float[] _thumb_Length
float[] _index_Length
float[] _middle_Length
float[] _ring_Length
float[] _pinky_Length
float[] _thigh_Length
float[] _calf_Length
float[] _spine0_Length
float[] _spine1_Length
float[] _spine2_Length
float[] _spine3_Length

; If you are making your own scaling mod, use your own key name
string Property RMX_HEAD_KEY = "RMX_Head" AutoReadOnly
string Property RMX_HAND_KEY = "RMX_Hand" AutoReadOnly
string Property RMX_LEG_KEY = "RMX_Leg" AutoReadOnly
string Property RMX_LEG_THIGH_KEY = "RMX_Leg_Thigh" AutoReadOnly
string Property RMX_LEG_CALF_KEY = "RMX_Leg_Calf" AutoReadOnly
string Property RMX_SPINE_KEY = "RMX_Spine" AutoReadOnly
string Property RMX_SPINE0_KEY = "RMX_Spine0" AutoReadOnly
string Property RMX_SPINE1_KEY = "RMX_Spine1" AutoReadOnly
string Property RMX_SPINE2_KEY = "RMX_Spine2" AutoReadOnly
string Property RMX_SPINE3_KEY = "RMX_Spine3" AutoReadOnly

string Property CATEGORY_KEY = "rsm_body_scale" AutoReadOnly

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
		_head_Position = GetNodePosition(target, isFemale, NINODE_NECK_CME)
		AddSlider("$HeadPosZ", CATEGORY_HEAD, CALLBACK_HEAD_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _head_Position[2])
		AddSlider("$HeadPosY", CATEGORY_HEAD, CALLBACK_HEAD_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _head_Position[1])

		AddSliderEx("$Left Upper Arm", CATEGORY_KEY, CALLBACK_LEFT_UPPERARM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_UPPERARM))
		AddSliderEx("$Right Upper Arm", CATEGORY_KEY, CALLBACK_RIGHT_UPPERARM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_UPPERARM))
			
		_upperArm_Length = GetNodePosition(target, isFemale, NINODE_LEFT_UPPERARM_CME)
		AddSliderEx("$Upper Arm Length", CATEGORY_KEY, CALLBACK_UPPERARM_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _upperArm_Length[2])

		AddSliderEx("$Left Fore Arm", CATEGORY_KEY, CALLBACK_LEFT_FOREARM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_FOREARM))
		AddSliderEx("$Right Fore Arm", CATEGORY_KEY, CALLBACK_RIGHT_FOREARM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_FOREARM))
		
		_foreArm_Length = GetNodePosition(target, isFemale, NINODE_LEFT_FOREARM_CME)
		AddSliderEx("$Fore Arm Length", CATEGORY_KEY, CALLBACK_FOREARM_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _foreArm_Length[2])

		AddSliderEx("$Left ForearmTwist", CATEGORY_KEY, CALLBACK_LEFT_FOREARMTWIST_1_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_FOREARMTWIST_1))
		AddSliderEx("$Right ForearmTwist", CATEGORY_KEY, CALLBACK_RIGHT_FOREARMTWIST_1_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_FOREARMTWIST_1))
		AddSliderEx("$Left ForearmTwist 2", CATEGORY_KEY, CALLBACK_LEFT_FOREARMTWIST_2_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_FOREARMTWIST_2))
		AddSliderEx("$Right ForearmTwist 2", CATEGORY_KEY, CALLBACK_RIGHT_FOREARMTWIST_2_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_FOREARMTWIST_2))
		AddSliderEx("$Left Hand Size", CATEGORY_KEY, CALLBACK_LEFT_HAND_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_HAND, RMX_HAND_KEY))
		AddSliderEx("$Right Hand Size", CATEGORY_KEY, CALLBACK_RIGHT_HAND_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_HAND, RMX_HAND_KEY))
	
		AddSliderEx("$Left Palm", CATEGORY_KEY, CALLBACK_LEFT_PALM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_HAND))	
		AddSliderEx("$Right Palm", CATEGORY_KEY, CALLBACK_RIGHT_PALM_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_HAND))
	
		AddSliderEx("$Left Thumb", CATEGORY_KEY, CALLBACK_LEFT_THUMB_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_THUMB0))
		AddSliderEx("$Right Thumb", CATEGORY_KEY, CALLBACK_RIGHT_THUMB_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_THUMB0))
		_thumb_Length = GetNodePosition(target, isFemale, NINODE_LEFT_THUMB0_CME)
		AddSliderEx("$Thumb Length", CATEGORY_KEY, CALLBACK_THUMB_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _thumb_Length[2])
	
		AddSliderEx("$Left Index", CATEGORY_KEY, CALLBACK_LEFT_INDEX_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_INDEX0))
		AddSliderEx("$Right Index", CATEGORY_KEY, CALLBACK_RIGHT_INDEX_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_INDEX0))
		_index_Length = GetNodePosition(target, isFemale, NINODE_LEFT_INDEX0_CME)
		AddSliderEx("$Index Length", CATEGORY_KEY, CALLBACK_INDEX_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _index_Length[2])
	
		AddSliderEx("$Left Middle", CATEGORY_KEY, CALLBACK_LEFT_MIDDLE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_MIDDLE0))
		AddSliderEx("$Right Middle", CATEGORY_KEY, CALLBACK_RIGHT_MIDDLE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_MIDDLE0))
		_middle_Length = GetNodePosition(target, isFemale, NINODE_LEFT_MIDDLE0_CME)
		AddSliderEx("$Middle Length", CATEGORY_KEY, CALLBACK_MIDDLE_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _middle_Length[2])
	
		AddSliderEx("$Left Ring", CATEGORY_KEY, CALLBACK_LEFT_RING_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_RING0))
		AddSliderEx("$Right Ring", CATEGORY_KEY, CALLBACK_RIGHT_RING_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_RING0))
		_ring_Length = GetNodePosition(target, isFemale, NINODE_LEFT_RING0_CME)
		AddSliderEx("$Ring Length", CATEGORY_KEY, CALLBACK_RING_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _ring_Length[2])
	
		AddSliderEx("$Left Pinky", CATEGORY_KEY, CALLBACK_LEFT_PINKY_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_PINKY0))
		AddSliderEx("$Right Pinky", CATEGORY_KEY, CALLBACK_RIGHT_PINKY_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_PINKY0))
		_pinky_Length = GetNodePosition(target, isFemale, NINODE_LEFT_PINKY0_CME)
		AddSliderEx("$Pinky Length", CATEGORY_KEY, CALLBACK_PINKY_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _pinky_Length[2])
	
		AddSliderEx("$Left Clavicle", CATEGORY_KEY, CALLBACK_LEFT_CLAVICLE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_CLAVICLE))
		AddSliderEx("$Right Clavicle", CATEGORY_KEY, CALLBACK_RIGHT_CLAVICLE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_CLAVICLE))
			
		AddSliderEx("$Pelvis Size", CATEGORY_KEY, CALLBACK_PELVIS_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_PELVIS))
		AddSliderEx("$Waist", CATEGORY_KEY, CALLBACK_WAIST_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SPINE_CME))
		AddSliderEx("$Spine Size", CATEGORY_KEY, CALLBACK_SPINE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SPINE, RMX_SPINE_KEY))
		AddSliderEx("$Spine1 Size", CATEGORY_KEY, CALLBACK_SPINE1_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SPINE_1, RMX_SPINE_KEY))
		AddSliderEx("$Spine2 Size", CATEGORY_KEY, CALLBACK_SPINE2_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SPINE_2, RMX_SPINE_KEY))
		
		_spine0_Length = GetNodePosition(target, isFemale, NINODE_BODY_UPPER_CME, RMX_SPINE0_KEY)
		AddSliderEx("$Spine0 Length", CATEGORY_KEY, CALLBACK_SPINE0_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _spine0_Length[2])
		_spine1_Length = GetNodePosition(target, isFemale, NINODE_SPINE_CME, RMX_SPINE1_KEY)
		AddSliderEx("$Spine1 Length", CATEGORY_KEY, CALLBACK_SPINE1_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _spine1_Length[2])
		_spine2_Length = GetNodePosition(target, isFemale, NINODE_SPINE_1_CME, RMX_SPINE2_KEY)
		AddSliderEx("$Spine2 Length", CATEGORY_KEY, CALLBACK_SPINE2_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _spine2_Length[2])
		_spine3_Length = GetNodePosition(target, isFemale, NINODE_SPINE_2_CME, RMX_SPINE3_KEY)
		AddSliderEx("$Spine3 Length", CATEGORY_KEY, CALLBACK_SPINE3_LENGTH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _spine3_Length[2])

		AddSliderEx("$Left Thigh", CATEGORY_KEY, CALLBACK_LEFT_THIGH_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_THIGH))
		AddSliderEx("$Right Thigh", CATEGORY_KEY, CALLBACK_RIGHT_THIGH_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_THIGH))
		AddSliderEx("$Left Calf", CATEGORY_KEY, CALLBACK_LEFT_CALF_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_CALF))
		AddSliderEx("$Right Calf", CATEGORY_KEY, CALLBACK_RIGHT_CALF_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_CALF))
		AddSliderEx("$Left Foot", CATEGORY_KEY, CALLBACK_LEFT_FOOT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_FOOT))
		AddSliderEx("$Right Foot", CATEGORY_KEY, CALLBACK_RIGHT_FOOT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_FOOT))
		AddSliderEx("$Left Toe0", CATEGORY_KEY, CALLBACK_LEFT_TOE0_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_TOE0))
		AddSliderEx("$Right Toe0", CATEGORY_KEY, CALLBACK_RIGHT_TOE0_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_RIGHT_TOE0))
		
		AddSliderEx("$Leg Length", CATEGORY_KEY, CALLBACK_LEG_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_LEFT_THIGH, RMX_LEG_KEY))
		_thigh_Length = GetNodePosition(target, isFemale, NINODE_LEFT_THIGH_CME, RMX_LEG_THIGH_KEY)
		AddSliderEx("$Leg Length Thigh", CATEGORY_KEY, CALLBACK_LEG_LENGTH_THIGH, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _thigh_Length[2])
		_calf_Length = GetNodePosition(target, isFemale, NINODE_LEFT_CALF_CME, RMX_LEG_CALF_KEY)
		AddSliderEx("$Leg Length Calf", CATEGORY_KEY, CALLBACK_LEG_LENGTH_CALF, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _calf_Length[2])
	Endif
EndEvent

Event OnSliderChanged(string callback, float value)
	bool isFemale = _targetActorBase.GetSex() as bool
	If _versionValid
		If callback == CALLBACK_HEAD_POSY || callback == CALLBACK_HEAD_POSZ
			If callback == CALLBACK_HEAD_POSY
				_head_Position[1] = value
			ElseIf callback == CALLBACK_HEAD_POSZ
				_head_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_NECK_CME, _head_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA3, _head_Position, RMX_HEAD_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA1, _head_Position, RMX_HEAD_KEY)
		Elseif callback == CALLBACK_BREAST_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_P1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_P2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_P3, value)
		Elseif callback == CALLBACK_BREAST_RIGHT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_P1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_P2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_P3, value)
		Elseif callback == CALLBACK_BREAST_FORWARD_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_P1_FORWARD, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_P2_FORWARD, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_BREAST_P3_FORWARD, value)
		Elseif callback == CALLBACK_BREAST_FORWARD_RIGHT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_P1_FORWARD, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_P2_FORWARD, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_BREAST_P3_FORWARD, value)
		Elseif callback == CALLBACK_LEFT_UPPERARM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_UPPERARM, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_UPPERARM_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_UPPERARM_FAIL, value)
		Elseif callback == CALLBACK_RIGHT_UPPERARM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_UPPERARM, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_UPPERARM_CME, 1/value)
		Elseif callback == CALLBACK_UPPERARM_LENGTH
			_upperArm_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_UPPERARM_CME, _upperArm_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_UPPERARM_CME, _upperArm_Length)		
		Elseif callback == CALLBACK_LEFT_FOREARM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOREARM, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOREARM_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOREARM_FAIL, value)
		Elseif callback == CALLBACK_RIGHT_FOREARM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOREARM, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOREARM_CME, 1/value)
		Elseif callback == CALLBACK_FOREARM_LENGTH
			_foreArm_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_FOREARM_CME, _foreArm_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_FOREARM_CME, _foreArm_Length)
		Elseif callback == CALLBACK_LEFT_FOREARMTWIST_1_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOREARMTWIST_1, value)
		Elseif callback == CALLBACK_RIGHT_FOREARMTWIST_1_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOREARMTWIST_1, value)
		Elseif callback == CALLBACK_LEFT_FOREARMTWIST_2_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOREARMTWIST_2, value)
		Elseif callback == CALLBACK_RIGHT_FOREARMTWIST_2_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOREARMTWIST_2, value)
		Elseif callback == CALLBACK_LEFT_HAND_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_HAND, value, RMX_HAND_KEY)
		Elseif callback == CALLBACK_RIGHT_HAND_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_HAND, value, RMX_HAND_KEY)
		Elseif callback == CALLBACK_LEFT_PALM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_HAND, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_HAND_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_HAND_FAIL, value)
		Elseif callback == CALLBACK_RIGHT_PALM_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_HAND, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_HAND_CME, 1/value)
		Elseif callback == CALLBACK_LEFT_THUMB_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB0_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB1_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THUMB2_FAIL, value)
		Elseif callback == CALLBACK_LEFT_INDEX_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX2_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX2_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_INDEX2_FAIL, value)
		Elseif callback == CALLBACK_LEFT_MIDDLE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE0_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE1_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_MIDDLE2_FAIL, value)
		Elseif callback == CALLBACK_LEFT_RING_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING0_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING1_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_RING2_FAIL, value)
		Elseif callback == CALLBACK_LEFT_PINKY_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY2, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY0_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY1_FAIL, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_PINKY2_FAIL, value)
		Elseif callback == CALLBACK_RIGHT_THUMB_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THUMB0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THUMB0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THUMB1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THUMB1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THUMB2, value)
		Elseif callback == CALLBACK_RIGHT_INDEX_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_INDEX0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_INDEX0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_INDEX1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_INDEX1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_INDEX2, value)
		Elseif callback == CALLBACK_RIGHT_MIDDLE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_MIDDLE0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_MIDDLE0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_MIDDLE1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_MIDDLE1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_MIDDLE2, value)
		Elseif callback == CALLBACK_RIGHT_RING_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_RING0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_RING0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_RING1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_RING1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_RING2, value)
		Elseif callback == CALLBACK_RIGHT_PINKY_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_PINKY0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_PINKY0_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_PINKY1, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_PINKY1_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_PINKY2, value)
		Elseif callback == CALLBACK_THUMB_LENGTH
			_thumb_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_THUMB0_CME, _thumb_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_THUMB1_CME, _thumb_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_THUMB0_CME, _thumb_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_THUMB1_CME, _thumb_Length)
		Elseif callback == CALLBACK_INDEX_LENGTH
			_index_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_INDEX0_CME, _index_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_INDEX1_CME, _index_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_INDEX0_CME, _index_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_INDEX1_CME, _index_Length)
		Elseif callback == CALLBACK_MIDDLE_LENGTH
			_middle_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_MIDDLE0_CME, _middle_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_MIDDLE1_CME, _middle_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_MIDDLE0_CME, _middle_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_MIDDLE1_CME, _middle_Length)
		Elseif callback == CALLBACK_RING_LENGTH
			_ring_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_RING0_CME, _ring_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_RING1_CME, _ring_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_RING0_CME, _ring_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_RING1_CME, _ring_Length)
		Elseif callback == CALLBACK_PINKY_LENGTH
			_pinky_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_PINKY0_CME, _pinky_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_PINKY1_CME, _pinky_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_PINKY0_CME, _pinky_Length)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_PINKY1_CME, _pinky_Length)
		Elseif callback == CALLBACK_LEFT_CLAVICLE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_CLAVICLE, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_CLAVICLE_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_CLAVICLE_FAIL, value)
		Elseif callback == CALLBACK_RIGHT_CLAVICLE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CLAVICLE, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CLAVICLE_CME, 1/value)	
		Elseif callback == CALLBACK_PELVIS_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_PELVIS, value)
			SetNodeScale(_targetActor, isFemale, NINODE_PELVIS_CME, 1/value)
		Elseif callback == CALLBACK_WAIST_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_CME, value)
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_1_CME, 1/value)
		Elseif callback == CALLBACK_SPINE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE, value, RMX_SPINE_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_CME, 1/value, RMX_SPINE_KEY)
		Elseif callback == CALLBACK_SPINE1_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_1, value, RMX_SPINE_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_1_CME, 1/value, RMX_SPINE_KEY)
		Elseif callback == CALLBACK_SPINE2_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_2, value, RMX_SPINE_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_SPINE_2_CME, 1/value, RMX_SPINE_KEY)	
		Elseif callback == CALLBACK_LEFT_THIGH_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THIGH, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THIGH_CME, 1/value)		
		Elseif callback == CALLBACK_RIGHT_THIGH_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THIGH, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THIGH_CME, 1/value)	
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THIGH_FAIL, value)
		Elseif callback == CALLBACK_LEFT_CALF_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_CALF, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_CALF_CME, 1/value)		
		Elseif callback == CALLBACK_RIGHT_CALF_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CALF, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CALF_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CALF_FAIL, value)
		Elseif callback == CALLBACK_LEFT_FOOT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOOT, value)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_FOOT_CME, 1/value)		
		Elseif callback == CALLBACK_RIGHT_FOOT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOOT, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOOT_CME, 1/value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_FOOT_FAIL, value)
		Elseif callback == CALLBACK_LEFT_TOE0_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_TOE0, value)
			;SetNodeScale(_targetActor, isFemale, NINODE_LEFT_TOE0_CME, 1/value)
		Elseif callback == CALLBACK_RIGHT_TOE0_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_TOE0, value)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_TOE0_FAIL, value)
			;SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_TOE0_CME, 1/value)
		Elseif callback == CALLBACK_LEG_LENGTH_THIGH
			_thigh_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_THIGH_CME, _thigh_Length, RMX_LEG_THIGH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_THIGH_CME, _thigh_Length, RMX_LEG_THIGH_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_BODY_CME, _thigh_Length, RMX_LEG_THIGH_KEY)
		Elseif callback == CALLBACK_LEG_LENGTH_CALF
			_calf_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_LEFT_CALF_CME, _calf_Length, RMX_LEG_CALF_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_RIGHT_CALF_CME, _calf_Length, RMX_LEG_CALF_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_BODY_CME, _calf_Length, RMX_LEG_CALF_KEY)	
		Elseif callback == CALLBACK_SPINE0_LENGTH
			_spine0_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_BODY_UPPER_CME, _spine0_Length, RMX_SPINE0_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA3, _spine0_Length, RMX_SPINE0_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA1, _spine0_Length, RMX_SPINE0_KEY)
		Elseif callback == CALLBACK_SPINE1_LENGTH
			_spine1_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SPINE_CME, _spine1_Length, RMX_SPINE1_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA3, _spine1_Length, RMX_SPINE1_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA1, _spine1_Length, RMX_SPINE1_KEY)
		Elseif callback == CALLBACK_SPINE2_LENGTH
			_spine2_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SPINE_1_CME, _spine2_Length, RMX_SPINE2_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA3, _spine2_Length, RMX_SPINE2_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA1, _spine2_Length, RMX_SPINE2_KEY)
		Elseif callback == CALLBACK_SPINE3_LENGTH
			_spine3_Length[2] = value
			SetNodePosition(_targetActor, isFemale, NINODE_SPINE_2_CME, _spine3_Length, RMX_SPINE3_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA3, _spine3_Length, RMX_SPINE3_KEY)
			SetNodePosition(_targetActor, isFemale, NINODE_CAMERA1, _spine3_Length, RMX_SPINE3_KEY)
		Elseif callback == CALLBACK_LEG_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_THIGH, value, RMX_LEG_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THIGH, value, RMX_LEG_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_THIGH_FAIL, value, RMX_LEG_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_LEFT_CALF, ((value - 1) * 0.2 + 1), RMX_LEG_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CALF, ((value - 1) * 0.2 + 1), RMX_LEG_KEY)
			SetNodeScale(_targetActor, isFemale, NINODE_RIGHT_CALF_FAIL, ((value - 1) * 0.2 + 1), RMX_LEG_KEY)
			if value < 1.0
				SetNodeScale(_targetActor, isFemale, NINODE_PELVIS, value, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_COM, (68.9113 / (value * value * (9.7 * value + 59.2113))), RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_ROOT,((125.0 * value * value) / (9.7 * ((value + 6.10426) * value * value + 5.78234))), RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_AXE, value, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_AXE_LEFT, value, RMX_LEG_KEY)	
				SetNodeScale(_targetActor, isFemale, NINODE_MACE, value, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_MACE_LEFT, value, RMX_LEG_KEY)	
				If HasNode(_targetActor, NINODE_SWORD_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_SWORD, value, RMX_LEG_KEY)	
				EndIf
				If HasNode(_targetActor, NINODE_SWORD_LEFT_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_SWORD_LEFT, value, RMX_LEG_KEY)	
				EndIf
				If HasNode(_targetActor, NINODE_DAGGER_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_DAGGER, value, RMX_LEG_KEY)	
				EndIf
				If HasNode(_targetActor, NINODE_DAGGER_LEFT_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_DAGGER_LEFT, value, RMX_LEG_KEY)	
				EndIf
				If !HasNode(_targetActor, NINODE_QUIVER_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_QUIVER, value, RMX_LEG_KEY)	
				EndIf
				SetNodeScale(_targetActor, isFemale, NINODE_BOLT, value, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_BOLT_QUIVER, value, RMX_LEG_KEY)	
			else
				SetNodeScale(_targetActor, isFemale, NINODE_PELVIS, 1.0, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_COM, (68.9113 / (value * (value * 9.7 + 59.2113))), RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_ROOT, ((125 * value) / (9.7 *((value + 1.17246) * (value + 4.9318)))), RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_AXE, 1.0, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_AXE_LEFT, 1.0, RMX_LEG_KEY)	
				SetNodeScale(_targetActor, isFemale, NINODE_MACE, 1.0, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_AXE_LEFT, 1.0, RMX_LEG_KEY)	
				If HasNode(_targetActor, NINODE_SWORD_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_SWORD, 1.0, RMX_LEG_KEY)	
				EndIf
				If HasNode(_targetActor, NINODE_SWORD_LEFT_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_SWORD_LEFT, 1.0, RMX_LEG_KEY)	
				EndIf
				If HasNode(_targetActor, NINODE_DAGGER_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_DAGGER, 1.0, RMX_LEG_KEY)	
				EndIf
				If HasNode(_targetActor, NINODE_DAGGER_LEFT_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_DAGGER_LEFT, 1.0, RMX_LEG_KEY)	
				EndIf
				If !HasNode(_targetActor, NINODE_QUIVER_ALT)
					SetNodeScale(_targetActor, isFemale, NINODE_QUIVER, 1.0, RMX_LEG_KEY)	
				EndIf
				SetNodeScale(_targetActor, isFemale, NINODE_BOLT, 1.0, RMX_LEG_KEY)
				SetNodeScale(_targetActor, isFemale, NINODE_BOLT_QUIVER, 1.0, RMX_LEG_KEY)	
			Endif
		Endif	
	Endif
EndEvent

Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey = "RMXPlugin")
	XPMSELib.SetNodeScale(akActor, isFemale, nodeName, value, modkey)
EndFunction

float Function GetNodeScale(Actor akActor, bool isFemale, string nodeName, string modkey = "RMXPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMXPlugin")
	XPMSELib.SetNodePosition(akActor, isFemale, nodeName, values, modkey)
EndFunction

float[] Function GetNodePosition(Actor akActor, bool isFemale, string nodeName, string modkey = "RMXPlugin")
	return NiOverride.GetNodeTransformPosition(akActor, false, isFemale, nodeName, modkey)
EndFunction

bool Function HasNode(Actor akActor, string nodeName, bool isFirstPerson = false)
	return XPMSELib.HasNode(akActor, nodeName, isFirstPerson)
EndFunction

bool Function CheckXPMSERequirements(Actor akActor, bool isFemale)
	return XPMSELib.CheckXPMSEVersion(akActor, isFemale, XPMSE_VERSION) && XPMSELib.CheckXPMSELibVersion(XPMSELIB_VERSION)
EndFunction