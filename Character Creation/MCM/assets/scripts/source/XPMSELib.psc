Scriptname XPMSELib Hidden

;-------------------------------------------------------------------------------
; XPMSE checks
;-------------------------------------------------------------------------------

; Gets the XPMSE Lib version number
float Function GetXPMSELibVersion() global
	return 4.20
EndFunction

; Gets the XPMSE skeleton version number from the XPMSE ExtraData
float Function GetXPMSEVersion(Actor akActor, bool isFemale) global
	return NiOverride.GetFloatExtraData(akActor, false, "NPC", "XPMSE")
EndFunction

; Checks if the required XPMSE is installed (usable for XPMSE 2.6 and newer, as single float, ex. 2.60)
bool Function CheckXPMSEVersion(Actor akActor, bool isFemale, float XPMSEVersion = 2.0, bool abSilent = false) global
	if GetXPMSEVersion(akActor, isFemale) >= XPMSEVersion
		if !abSilent
			if(Game.GetModByName("SkyUI.esp") == 255)
				Debug.Notification("Groovtama: XPMSE2 successfully detected on Actor: " + akActor.GetBaseObject().GetName() + ". Have a nice day!")
			endif
		endif
		return true
	Else
		if !abSilent
			if(Game.GetModByName("SkyUI.esp") == 255)
				Debug.Notification("Groovtama: Incorrect XPMSE2 skeleton on Actor: " + akActor.GetBaseObject().GetName() + "(XPMSE Version: " + GetXPMSEVersion(akActor, isFemale) + "). XPMSE2 features on actor disabled.")
			endif
		endif
		return false
	Endif
EndFunction

; Checks if the required XPMSE Lib is installed (usable for XPMSE 2.6 and newer)
bool Function CheckXPMSELibVersion(float XPMSELibVersion = 2.0) global 
	if GetXPMSELibVersion() >= XPMSELibVersion
		return true
	Else
		Debug.Notification("$XPMSE_VERSION_LIB_OLD")
		return false
	Endif
EndFunction


;-------------------------------------------------------------------------------
; XPMSE node manipulation
;-------------------------------------------------------------------------------

; Sets a transformation with the given key in 3rd and 1st person skeleton to the given scale (Quicker, Recommended if not 3rd or 1st person dependent)
Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey) global
	If value != 1.0
		NiOverride.AddNodeTransformScale(akActor, false, isFemale, nodeName, modkey, value)
		NiOverride.AddNodeTransformScale(akActor, true, isFemale, nodeName, modkey, value)
	Else
		NiOverride.RemoveNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
		NiOverride.RemoveNodeTransformScale(akActor, true, isFemale, nodeName, modkey)
	Endif
	NiOverride.UpdateNodeTransform(akActor, false, isFemale, nodeName)
	NiOverride.UpdateNodeTransform(akActor, true, isFemale, nodeName)
EndFunction

; Sets a transformation with the given key  in the chosen skeleton to the given scale (3rd person by default)
Function SetNodeScaleSkeleton(Actor akActor, bool isFemale, string nodeName, float value, string modkey, bool isFirstPerson = false) global
	If value != 1.0
		NiOverride.AddNodeTransformScale(akActor, isFirstPerson, isFemale, nodeName, modkey, value)
	Else
		NiOverride.RemoveNodeTransformScale(akActor, isFirstPerson, isFemale, nodeName, modkey)
	Endif
	NiOverride.UpdateNodeTransform(akActor, isFirstPerson, isFemale, nodeName)
EndFunction

; Sets a transformation with the given key in 3rd and 1st person skeleton to the given translation (Quicker, Recommended if not 3rd or 1st person dependent)
Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey) global
	If values[0] != 0.0 || values[1] != 0.0 || values[2] != 0.0
		NiOverride.AddNodeTransformPosition(akActor, false, isFemale, nodeName, modkey, values)
		NiOverride.AddNodeTransformPosition(akActor, true, isFemale, nodeName, modkey, values)
	Else
		NiOverride.RemoveNodeTransformPosition(akActor, false, isFemale, nodeName, modkey)
		NiOverride.RemoveNodeTransformPosition(akActor, true, isFemale, nodeName, modkey)
	Endif
	NiOverride.UpdateNodeTransform(akActor, false, isFemale, nodeName)
	NiOverride.UpdateNodeTransform(akActor, true, isFemale, nodeName)
EndFunction

; Sets a transformation with the given key  in the chosen skeleton to the given translation (3rd person by default)
Function SetNodePositionSkeleton(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey, bool isFirstPerson = false) global
	If values[0] != 0.0 || values[1] != 0.0 || values[2] != 0.0
		NiOverride.AddNodeTransformPosition(akActor, isFirstPerson, isFemale, nodeName, modkey, values)
	Else
		NiOverride.RemoveNodeTransformPosition(akActor, isFirstPerson, isFemale, nodeName, modkey)
	Endif
	NiOverride.UpdateNodeTransform(akActor, isFirstPerson, isFemale, nodeName)
EndFunction

; Sets a transformation with the given key in 3rd and 1st person skeleton to the given rotation (Quicker, Recommended if not 3rd or 1st person dependent)
Function SetNodeRotation(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey) global
	If values[0] != 0.0 || values[1] != 0.0 || values[2] != 0.0
		NiOverride.AddNodeTransformRotation(akActor, false, isFemale, nodeName, modkey, values)
		NiOverride.AddNodeTransformRotation(akActor, true, isFemale, nodeName, modkey, values)
	Else
		NiOverride.RemoveNodeTransformRotation(akActor, false, isFemale, nodeName, modkey)
		NiOverride.RemoveNodeTransformRotation(akActor, true, isFemale, nodeName, modkey)
	Endif
	NiOverride.UpdateNodeTransform(akActor, false, isFemale, nodeName)
	NiOverride.UpdateNodeTransform(akActor, true, isFemale, nodeName)
EndFunction

; Sets a transformation with the given key in the chosen skeleton to the given rotation (3rd person by default)
Function SetNodeRotationSkeleton(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey, bool isFirstPerson = false) global
	If values[0] != 0.0 || values[1] != 0.0 || values[2] != 0.0
		NiOverride.AddNodeTransformRotation(akActor, isFirstPerson, isFemale, nodeName, modkey, values)
	Else
		NiOverride.RemoveNodeTransformRotation(akActor, isFirstPerson, isFemale, nodeName, modkey)
	Endif
	NiOverride.UpdateNodeTransform(akActor, isFirstPerson, isFemale, nodeName)
EndFunction

; Sets a node to a new parent node in 3rd and 1st person skeleton (Quicker, Recommended if not 3rd or 1st person dependent)
; Removing a node destination does not move the node back it just removes it from the save, making a node manual edits visible need a game restart.
Function SetNodeParent(Actor akActor, bool isFemale, string nodeName, string newParent) global
	If (newParent != "")
		NiOverride.SetNodeDestination(akActor, false, isFemale, nodeName, newParent)
		NiOverride.SetNodeDestination(akActor, true, isFemale, nodeName, newParent)
	Else
		NiOverride.RemoveNodeDestination(akActor, false, isFemale, nodeName)
		NiOverride.RemoveNodeDestination(akActor, true, isFemale, nodeName)
	Endif
	NiOverride.UpdateNodeTransform(akActor, false, isFemale, nodeName)
	NiOverride.UpdateNodeTransform(akActor, true, isFemale, nodeName)
EndFunction

; Sets for a value of true a transform that is nearly zero [0.001] that would make anything else nearly zero for a value of 1.0 it gets visible again.
Function SetNodeHidden(Actor akActor, bool isFemale, string nodeName, bool value, string modkey) global
	if value
		SetNodeScale(akActor, isFemale, nodeName, 0.001, modkey)
	else
		SetNodeScale(akActor, isFemale, nodeName, 1.0, modkey)
	endif
EndFunction


; Sets a node to a new parent node in the chosen skeleton (3rd person by default)
; Removing a node destination does not move the node back it just removes it from the save, making a node manual edits visible need a game restart.
Function SetNodeParentSkeleton(Actor akActor, bool isFemale, string nodeName, string newParent, bool isFirstPerson = false) global
	If (newParent != "")
		NiOverride.SetNodeDestination(akActor, isFirstPerson, isFemale, nodeName, newParent)
	Else
		NiOverride.RemoveNodeDestination(akActor, isFirstPerson, isFemale, nodeName)
	Endif
	NiOverride.UpdateNodeTransform(akActor, isFirstPerson, isFemale, nodeName)
EndFunction

; Checks if a skeleton node exists in the chosen skeleton (3rd person by default)
bool Function HasNode(Actor akActor, string nodeName, bool isFirstPerson = false) global
	return NetImmerse.HasNode(akActor, nodeName, isFirstPerson)
EndFunction

;-------------------------------------------------------------------------------
; XPMSE data manipulation
;-------------------------------------------------------------------------------

; Reads an extra value to the actor in form of a morph (Needs to be in the script where it is used)
; savelevels:
; 0 = temporal
; 1 = presistent
; 2 = RSMBodyGen
;float Function ReadXPMSEData(Actor akActor, string keyName, int savelevel)
;	if savelevel == 1
;		return NiOverride.GetBodyMorph(akActor, keyName, "XPMSE")
;	elseif savelevel == 0
;		return NiOverride.GetBodyMorph(akActor, keyName, "XPMSE.esp")
;	else
;		return NiOverride.GetBodyMorph(akActor, keyName, "RSMBodyGen")
;	endif
;EndFunction

; Adds an extra value to the actor in form of a morph
; savelevels:
; 0 = temporal
; 1 = presistent
; 2 = RSMBodyGen
Function WriteXPMSEData(Actor akActor, string keyName, int savelevel, float value) global
	if savelevel == 1
		NiOverride.SetBodyMorph(akActor, keyName, "XPMSE", value)
	elseif savelevel == 0
		NiOverride.SetBodyMorph(akActor, keyName, "XPMSE.esp", value)
	else
		NiOverride.SetBodyMorph(akActor, keyName, "RSMBodyGen", value)
	endif
EndFunction

; Deletes an extra value from the actor
; savelevels:
; 0 = temporal
; 1 = presistent
; 2 = RSMBodyGen
Function RemoveXPMSEData(Actor akActor, string keyName, int savelevel) global
	if savelevel == 1
		NiOverride.ClearBodyMorph(akActor, keyName, "XPMSE")
	elseif savelevel == 0
		NiOverride.ClearBodyMorph(akActor, keyName, "XPMSE.esp")
	else
		NiOverride.ClearBodyMorph(akActor, keyName, "RSMBodyGen")
	endif
EndFunction


;-------------------------------------------------------------------------------
; XPMSE alternate animation
;-------------------------------------------------------------------------------

; Sets an alternative animation for an animation group from XPMSE sets
; mybase or myset as zero resets the group to the vanilla one
;
; Possible animation group names
; "_1hmeqp" = one-handed sword equip
; "_2hmeqp" = two-handed sword equip
; "_2hweqp" = two-handed mace/axe equip
; "_axeeqp" = one-handed axe equip
; "_bowatk" = bow attack/draw
; "_bowidle" = bow idle/bow sneak idle
; "_maceqp" = one-handed mace equip
; "_dageqp" = dagger equip
; "_magatk" = magic attack
; "_magcastmt" = magic cast movement
; "_magcon" = magic concentration attacks
; "_magidle" = magic idle
; "_magmt" = magic movement
; "_shout" = shouts
; "_sprint" = sprints (used in magic styles)
Function SetAA(Actor akActor, string groupName, float myBase, float myset, string mymod = "XPMSE", int writeback = 0) global
	if ( myset <= 0.0 )
		if writeback > 0
			RevertAnimGroupTo(akActor, groupName, writeback)
		else
			FNIS_aa.SetAnimGroupEX(akActor, groupName, 0, 0, mymod, skipForce3D = true)
		endif
	else
		FNIS_aa.SetAnimGroupEX(akActor, groupName, (myBase as int), (myset as int) - 1, mymod, skipForce3D = true)
	endif
EndFunction

bool Function RevertAnimGroupTo(actor akActor, string animGroup, int writeback) global
	if ( writeback >= 0 ) && ( akActor != none )
		if !akActor.is3dloaded()
 			return false
		endif
		
		akActor.SetAnimationVariableInt("FNISaa" + animGroup, writeback)
			
		return true
	endif
endFunction

Bool Function isValidForDualWielding(Actor akActor) global
	int rightHandType = akActor.GetEquippedItemType(1)
	int leftHandType = akActor.GetEquippedItemType(0)
	return (rightHandType != 0 && leftHandType != 0 && rightHandType < 5 && (rightHandType == leftHandType || leftHandType == 10))
EndFunction

Int Function isValidForDualWieldingInt(Actor akActor) global
	return isValidForDualWielding(akActor) as int
EndFunction

Bool Function isValidFNISaaCameraState() global
	int camerastate = Game.GetCameraState()
	return (camerastate == 8 || camerastate == 9)
EndFunction


;-------------------------------------------------------------------------------
; XPMSE old functions (DO NOT USE THEM ANYMORE)
;-------------------------------------------------------------------------------

; Sets an alternative animation for equip and unequip animations
; 1hm (sword, regular and dual)
; dag (dagger, regular and dual)
; 2hm (great sword - note: the standard 2hm equip/unequip animations start with "2hc")
; 2hw (warhammer)
; axe (axe, regular and dual)
; bow
;
; The custom animations are activated by animation variables
; FNIS_1hm_Select
; FNIS_1hm_dual_Select
; FNIS_Dag_Select
; FNIS_Dag_dual_Select
; FNIS_2hm_Select
; FNIS_2hw_Select
; FNIS_axe_Select
; FNIS_axe_dual_Select
; FNIS_Bow_Select
;
; values:
; 0		standard animation
; 1-3		custom animation 1-3
Function SetAltAnimation(Actor akActor, string animationVariableName, int value) global
	int myModID = FNIS_aa.GetAAmodID("xpe", "XPMSE")
	int myBase
	int groupId
	string groupname
	
	if ( animationVariableName == "FNIS_1hm_Select" ) || ( animationVariableName == "FNIS_1hm_dual_Select" )
		groupId = FNIS_aa._1hmeqp()
		groupName = "_1hmeqp"
	elseif ( animationVariableName == "FNIS_Dag_Select" ) || ( animationVariableName == "FNIS_Dag_dual_Select" )
		groupId = FNIS_aa._dageqp()
		groupName = "_dageqp"
	elseif ( animationVariableName == "FNIS_2hm_Select" )
		groupId = FNIS_aa._2hmeqp()
		groupName = "_2hmeqp"
	elseif ( animationVariableName == "FNIS_2hw_Select" )
		groupId = FNIS_aa._2hweqp()
		groupName = "_2hweqp"
	elseif ( animationVariableName == "FNIS_axe_Select" ) || ( animationVariableName == "FNIS_axe_dual_Select" )
		groupId = FNIS_aa._axeeqp()
		groupName = "_axeeqp"
	elseif ( animationVariableName == "FNIS_Bow_Select" )
		groupId = FNIS_aa._boweqp()
		groupName = "_boweqp"
	endif
	
	if ( value == 0 )
		SetAA(akActor, groupName, 0.0, 0.0)
	else
		myBase = FNIS_aa.GetGroupBaseValue(myModID, groupId, "XPMSE")
		SetAA(akActor, groupName, myBase as float, (value - 1) as float)
	endif
EndFunction


; Adds an extra value to the actor in form of a morph (careful)
Function SetExtraInfo(Actor akActor, string keyName, float value) global
	NiOverride.SetMorphValue(akActor, keyName, value)
EndFunction

; Deletess an extra value from the actor
Function RemoveExtraInfo(Actor akActor, string keyName) global
	NiOverride.ClearMorphValue(akActor, keyName)
EndFunction


