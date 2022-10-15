Scriptname RaceMenuPluginWeapons extends RaceMenuBase

bool Property WEAPONS_ENABLED = true AutoReadOnly ; Set this to false to rebuild if you don't want weapon scales

bool Property QUIVER_ENABLED = true AutoReadOnly ; Set this to false to rebuild if you don't want quiver styles

;Ranges
float Property SCALE_MIN = 0.10 AutoReadOnly ; Set this to the min value for a scale slider, cannot be negative nor zero, do no make it smaller than 0.01, if you want smaller than that, you can use the hidden slider.
float Property SCALE_MAX = 3.00 AutoReadOnly ; Set this to the max value for a scale slider
float Property POSITION_RANGE = 60.00 AutoReadOnly ; Set this to the negative min and positive max value for a position slider
float Property ROTATION_RANGE = 180.00 AutoReadOnly ; Set this to the negative min and positive max value for a rotation slider, 180.00 = 360 degree, 120 = 240 degree range
float Property SCALE_STEPPING = 0.01 AutoReadOnly ; Set this to the value a scale slider steps to
float Property POSITION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a position slider steps to
float Property ROTATION_STEPPING = 0.10 AutoReadOnly ; Set this to the value a rotation slider steps to

;Common Nodes
string Property NINODE_AXE = "WeaponAxe" AutoReadOnly
string Property NINODE_MACE = "WeaponMace" AutoReadOnly
string Property NINODE_SWORD = "WeaponSword" AutoReadOnly
string Property NINODE_DAGGER = "WeaponDagger" AutoReadOnly
string Property NINODE_WEAPON_BACK = "WeaponBack" AutoReadOnly
string Property NINODE_BOW = "WeaponBow" AutoReadOnly
string Property NINODE_QUIVER = "QUIVER" AutoReadOnly

;Dual Sheath Nodes
string Property NINODE_AXE_LEFT = "WeaponAxeLeft" AutoReadOnly
string Property NINODE_MACE_LEFT = "WeaponMaceLeft" AutoReadOnly
string Property NINODE_SWORD_LEFT = "WeaponSwordLeft" AutoReadOnly
string Property NINODE_DAGGER_LEFT = "WeaponDaggerLeft" AutoReadOnly
string Property NINODE_SHIELD_BACK = "ShieldBack" AutoReadOnly
string Property NINODE_STAFF = "WeaponStaff" AutoReadOnly
string Property NINODE_STAFF_LEFT = "WeaponStaffLeft" AutoReadOnly

;XPMSE specific (CME)
string Property NINODE_AXE_DEFAULT_CME = "CME WeaponAxeDefault" AutoReadOnly
string Property NINODE_AXE_REVERSE_CME = "CME WeaponAxeReverse" AutoReadOnly
string Property NINODE_AXE_BACK_CME = "CME WeaponAxeOnBack" AutoReadOnly
string Property NINODE_AXE_LEFT_DEFAULT_CME = "CME WeaponAxeLeftDefault" AutoReadOnly
string Property NINODE_AXE_REVERSE_LEFT_CME = "CME WeaponAxeLeftReverse" AutoReadOnly
string Property NINODE_AXE_BACK_LEFT_CME = "CME WeaponAxeLeftOnBack" AutoReadOnly
string Property NINODE_MACE_DEFAULT_CME = "CME WeaponMaceDefault" AutoReadOnly
string Property NINODE_MACE_LEFT_DEFAULT_CME = "CME WeaponMaceLeftDefault" AutoReadOnly
string Property NINODE_SWORD_DEFAULT_CME = "CME WeaponSwordDefault" AutoReadOnly
string Property NINODE_SWORD_BACK_CME = "CME WeaponSwordOnBack" AutoReadOnly
string Property NINODE_SWORD_SWP_CME = "CME WeaponSwordSWP" AutoReadOnly
string Property NINODE_SWORD_FSM_CME = "CME WeaponSwordFSM" AutoReadOnly
string Property NINODE_SWORD_LEFTHIP_CME = "CME WeaponSwordLeftHip" AutoReadOnly
string Property NINODE_SWORD_NMD_CME = "CME WeaponSwordNMD" AutoReadOnly
string Property NINODE_SWORD_LEFT_DEFAULT_CME = "CME WeaponSwordLeftDefault" AutoReadOnly
string Property NINODE_SWORD_LEFT_BACK_CME = "CME WeaponSwordLeftOnBack" AutoReadOnly
string Property NINODE_SWORD_LEFT_SWP_CME = "CME WeaponSwordLeftSWP" AutoReadOnly
string Property NINODE_SWORD_LEFT_FSM_CME = "CME WeaponSwordLeftFSM" AutoReadOnly
string Property NINODE_SWORD_LEFT_LEFTHIP_CME = "CME WeaponSwordLeftLeftHip" AutoReadOnly
string Property NINODE_SWORD_LEFT_NMD_CME = "CME WeaponSwordLeftNMD" AutoReadOnly
string Property NINODE_DAGGER_DEFAULT_CME = "CME WeaponDaggerDefault" AutoReadOnly
string Property NINODE_DAGGER_BACKHIP_CME = "CME WeaponDaggerBackHip" AutoReadOnly
string Property NINODE_DAGGER_ANKLE_CME = "CME WeaponDaggerAnkle" AutoReadOnly
string Property NINODE_DAGGER_LEFT_DEFAULT_CME = "CME WeaponDaggerLeftDefault" AutoReadOnly
string Property NINODE_DAGGER_LEFT_BACKHIP_CME = "CME WeaponDaggerLeftBackHip" AutoReadOnly
string Property NINODE_DAGGER_LEFT_ANKLE_CME = "CME WeaponDaggerLeftAnkle" AutoReadOnly
string Property NINODE_WEAPON_BACK_DEFAULT_CME = "CME WeaponBackDefault" AutoReadOnly
string Property NINODE_WEAPON_BACK_SWP_CME = "CME WeaponBackSWP" AutoReadOnly
string Property NINODE_WEAPON_BACK_FSM_CME = "CME WeaponBackFSM" AutoReadOnly
string Property NINODE_WEAPON_BACK_AM_DEFAULT_CME = "CME WeaponBackAxeMaceDefault" AutoReadOnly
string Property NINODE_WEAPON_BACK_AM_SWP_CME = "CME WeaponBackAxeMaceSWP" AutoReadOnly
string Property NINODE_WEAPON_BACK_AM_FSM_CME = "CME WeaponBackAxeMaceFSM" AutoReadOnly
string Property NINODE_SHIELD_BACK_DEFAULT_CME = "CME ShieldBackDefault" AutoReadOnly
string Property NINODE_STAFF_DEFAULT_CME = "CME WeaponStaffDefault" AutoReadOnly
string Property NINODE_STAFF_LEFT_DEFAULT_CME = "CME WeaponStaffLeftDefault" AutoReadOnly
string Property NINODE_BOW_DEFAULT_CME = "CME WeaponBowDefault" AutoReadOnly
string Property NINODE_BOW_CHESKO_CME = "CME WeaponBowChesko" AutoReadOnly
string Property NINODE_BOW_BETTER_CME = "CME WeaponBowBetter" AutoReadOnly
string Property NINODE_BOW_FSM_CME = "CME WeaponBowFSM" AutoReadOnly
string Property NINODE_CROSSBOW_DEFAULT_CME = "CME WeaponCrossbowDefault" AutoReadOnly
string Property NINODE_CROSSBOW_CHESKO_CME = "CME WeaponCrossbowChesko" AutoReadOnly
string Property NINODE_QUIVER_DEFAULT_CME = "CME QUIVERDefault" AutoReadOnly
string Property NINODE_QUIVER_CHESKO_CME = "CME QUIVERChesko" AutoReadOnly
string Property NINODE_QUIVER_LEFTHIP_CME = "CME QUIVERLeftHipBolt" AutoReadOnly
string Property NINODE_BOLT_DEFAULT_CME = "CME BOLTDefault" AutoReadOnly
string Property NINODE_BOLT_CHESKO_CME = "CME BOLTChesko" AutoReadOnly
string Property NINODE_BOLT_LEFTHIP_CME = "CME BOLTLeftHipBolt" AutoReadOnly
string Property NINODE_BOLT_XP32_CME = "CME BOLTXP32" AutoReadOnly
string Property NINODE_BOLT_ABQ_CME = "CME BOLTABQ" AutoReadOnly

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

;Callbacks Table
string Property CALLBACK_AXE_STYLE = "XPMSEChangeAxeStyle" AutoReadOnly
string Property CALLBACK_AXE_ALL_STYLE = "XPMSEChangeAxeAllStyle" AutoReadOnly
string Property CALLBACK_AXE_SCALE = "XPMSEChangeAxeScale" AutoReadOnly
string Property CALLBACK_AXE_HIDE = "XPMSEChangeAxeHide" AutoReadOnly
string Property CALLBACK_AXE_POSX = "XPMSEChangeAxePosX" AutoReadOnly
string Property CALLBACK_AXE_POSY = "XPMSEChangeAxePosY" AutoReadOnly
string Property CALLBACK_AXE_POSZ = "XPMSEChangeAxePosZ" AutoReadOnly
string Property CALLBACK_AXE_ROTY = "XPMSEChangeAxeRotY" AutoReadOnly
string Property CALLBACK_AXE_ROTP = "XPMSEChangeAxeRotP" AutoReadOnly
string Property CALLBACK_AXE_ROTR = "XPMSEChangeAxeRotR" AutoReadOnly
string Property CALLBACK_AXE_LEFT_STYLE = "XPMSEChangeAxeLeftStyle" AutoReadOnly
string Property CALLBACK_AXE_LEFT_ALL_STYLE = "XPMSEChangeAxeLeftAllStyle" AutoReadOnly
string Property CALLBACK_AXE_LEFT_SCALE = "XPMSEChangeAxeLeftScale" AutoReadOnly
string Property CALLBACK_AXE_LEFT_HIDE = "XPMSEChangeAxeLeftHide" AutoReadOnly
string Property CALLBACK_AXE_LEFT_POSX = "XPMSEChangeAxeLeftPosX" AutoReadOnly
string Property CALLBACK_AXE_LEFT_POSY = "XPMSEChangeAxeLeftPosY" AutoReadOnly
string Property CALLBACK_AXE_LEFT_POSZ = "XPMSEChangeAxeLeftPosZ" AutoReadOnly
string Property CALLBACK_AXE_LEFT_ROTY = "XPMSEChangeAxeLeftRotY" AutoReadOnly
string Property CALLBACK_AXE_LEFT_ROTP = "XPMSEChangeAxeLeftRotP" AutoReadOnly
string Property CALLBACK_AXE_LEFT_ROTR = "XPMSEChangeAxeLeftRotR" AutoReadOnly
string Property CALLBACK_MACE_STYLE = "XPMSEChangeMaceStyle" AutoReadOnly
string Property CALLBACK_MACE_ALL_STYLE = "XPMSEChangeMaceAllStyle" AutoReadOnly
string Property CALLBACK_MACE_SCALE = "XPMSEChangeMaceScale" AutoReadOnly
string Property CALLBACK_MACE_HIDE = "XPMSEChangeMaceHide" AutoReadOnly
string Property CALLBACK_MACE_POSX = "XPMSEChangeMacePosX" AutoReadOnly
string Property CALLBACK_MACE_POSY = "XPMSEChangeMacePosY" AutoReadOnly
string Property CALLBACK_MACE_POSZ = "XPMSEChangeMacePosZ" AutoReadOnly
string Property CALLBACK_MACE_ROTY = "XPMSEChangeMaceRotY" AutoReadOnly
string Property CALLBACK_MACE_ROTP = "XPMSEChangeMaceRotP" AutoReadOnly
string Property CALLBACK_MACE_ROTR = "XPMSEChangeMaceRotR" AutoReadOnly
string Property CALLBACK_MACE_LEFT_STYLE = "XPMSEChangeMaceLeftStyle" AutoReadOnly
string Property CALLBACK_MACE_LEFT_ALL_STYLE = "XPMSEChangeMaceLeftAllStyle" AutoReadOnly
string Property CALLBACK_MACE_LEFT_SCALE = "XPMSEChangeMaceLeftScale" AutoReadOnly
string Property CALLBACK_MACE_LEFT_HIDE = "XPMSEChangeMaceLeftHide" AutoReadOnly
string Property CALLBACK_MACE_LEFT_POSX = "XPMSEChangeMaceLeftPosX" AutoReadOnly
string Property CALLBACK_MACE_LEFT_POSY = "XPMSEChangeMaceLeftPosY" AutoReadOnly
string Property CALLBACK_MACE_LEFT_POSZ = "XPMSEChangeMaceLeftPosZ" AutoReadOnly
string Property CALLBACK_MACE_LEFT_ROTY = "XPMSEChangeMaceLeftRotY" AutoReadOnly
string Property CALLBACK_MACE_LEFT_ROTP = "XPMSEChangeMaceLeftRotP" AutoReadOnly
string Property CALLBACK_MACE_LEFT_ROTR = "XPMSEChangeMaceLeftRotR" AutoReadOnly
string Property CALLBACK_SWORD_STYLE = "XPMSEChangeSwordStyle" AutoReadOnly
string Property CALLBACK_SWORD_ALL_STYLE = "XPMSEChangeSwordAllStyle" AutoReadOnly
string Property CALLBACK_SWORD_SCALE = "XPMSEChangeSwordScale" AutoReadOnly
string Property CALLBACK_SWORD_HIDE = "XPMSEChangeSwordHide" AutoReadOnly
string Property CALLBACK_SWORD_POSX = "XPMSEChangeSwordPosX" AutoReadOnly
string Property CALLBACK_SWORD_POSY = "XPMSEChangeSwordPosY" AutoReadOnly
string Property CALLBACK_SWORD_POSZ = "XPMSEChangeSwordPosZ" AutoReadOnly
string Property CALLBACK_SWORD_ROTY = "XPMSEChangeSwordRotY" AutoReadOnly
string Property CALLBACK_SWORD_ROTP = "XPMSEChangeSwordRotP" AutoReadOnly
string Property CALLBACK_SWORD_ROTR = "XPMSEChangeSwordRotR" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_STYLE = "XPMSEChangeSwordLeftStyle" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_All_STYLE = "XPMSEChangeSwordLeftAllStyle" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_SCALE = "XPMSEChangeSwordLeftScale" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_HIDE = "XPMSEChangeSwordLeftHide" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_POSX = "XPMSEChangeSwordLeftPosX" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_POSY = "XPMSEChangeSwordLeftPosY" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_POSZ = "XPMSEChangeSwordLeftPosZ" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_ROTY = "XPMSEChangeSwordLeftRotY" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_ROTP = "XPMSEChangeSwordLeftRotP" AutoReadOnly
string Property CALLBACK_SWORD_LEFT_ROTR = "XPMSEChangeSwordLeftRotR" AutoReadOnly
string Property CALLBACK_DAGGER_STYLE = "XPMSEChangeDaggerStyle" AutoReadOnly
string Property CALLBACK_DAGGER_ALL_STYLE = "XPMSEChangeDaggerAllStyle" AutoReadOnly
string Property CALLBACK_DAGGER_SCALE = "XPMSEChangeDaggerScale" AutoReadOnly
string Property CALLBACK_DAGGER_HIDE = "XPMSEChangeDaggerHide" AutoReadOnly
string Property CALLBACK_DAGGER_POSX = "XPMSEChangeDaggerPosX" AutoReadOnly
string Property CALLBACK_DAGGER_POSY = "XPMSEChangeDaggerPosY" AutoReadOnly
string Property CALLBACK_DAGGER_POSZ = "XPMSEChangeDaggerPosZ" AutoReadOnly
string Property CALLBACK_DAGGER_ROTY = "XPMSEChangeDaggerRotY" AutoReadOnly
string Property CALLBACK_DAGGER_ROTP = "XPMSEChangeDaggerRotP" AutoReadOnly
string Property CALLBACK_DAGGER_ROTR = "XPMSEChangeDaggerRotR" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_STYLE = "XPMSEChangeDaggerLeftStyle" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_ALL_STYLE = "XPMSEChangeDaggerLeftAllStyle" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_SCALE = "XPMSEChangeDaggerLeftScale" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_HIDE = "XPMSEChangeDaggerLeftHide" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_POSX = "XPMSEChangeDaggerLeftPosX" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_POSY = "XPMSEChangeDaggerLeftPosY" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_POSZ = "XPMSEChangeDaggerLeftPosZ" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_ROTY = "XPMSEChangeDaggerLeftRotY" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_ROTP = "XPMSEChangeDaggerLeftRotP" AutoReadOnly
string Property CALLBACK_DAGGER_LEFT_ROTR = "XPMSEChangeDaggerLeftRotR" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_STYLE = "XPMSEChangeWeaponBackStyle" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_S_STYLE = "XPMSEChangeWeaponBackSwordStyle" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_S_ALL_STYLE = "XPMSEChangeWeaponBackSwordAllStyle" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_STYLE = "XPMSEChangeWeaponBackAxeMaceStyle" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_ALL_STYLE = "XPMSEChangeWeaponBackAxeMaceAllStyle" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_SCALE = "XPMSEChangeWeaponBackScale" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_HIDE = "XPMSEChangeWeaponBackHide" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_POSX = "XPMSEChangeWeaponBackPosX" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_POSY = "XPMSEChangeWeaponBackPosY" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_POSZ = "XPMSEChangeWeaponBackPosZ" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_ROTY = "XPMSEChangeWeaponBackRotY" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_ROTP = "XPMSEChangeWeaponBackRotP" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_ROTR = "XPMSEChangeWeaponBackRotR" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_POSX = "XPMSEChangeWeaponBackAxeMacePosX" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_POSY = "XPMSEChangeWeaponBackAxeMacePosY" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_POSZ = "XPMSEChangeWeaponBackAxeMacePosZ" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_ROTY = "XPMSEChangeWeaponBackAxeMaceRotY" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_ROTP = "XPMSEChangeWeaponBackAxeMaceRotP" AutoReadOnly
string Property CALLBACK_WEAPON_BACK_AM_ROTR = "XPMSEChangeWeaponBackAxeMaceRotR" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_STYLE = "XPMSEChangeShieldBackStyle" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_ALL_STYLE = "XPMSEChangeShieldBackAllStyle" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_SCALE = "XPMSEChangeShieldBackScale" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_HIDE = "XPMSEChangeShieldBackHide" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_POSX = "XPMSEChangeShieldBackPosX" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_POSY = "XPMSEChangeShieldBackPosY" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_POSZ = "XPMSEChangeShieldBackPosZ" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_ROTY = "XPMSEChangeShieldBackRotY" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_ROTP = "XPMSEChangeShieldBackRotP" AutoReadOnly
string Property CALLBACK_SHIELD_BACK_ROTR = "XPMSEChangeShieldBackRotR" AutoReadOnly
string Property CALLBACK_STAFF_STYLE = "XPMSEChangeStaffStyle" AutoReadOnly
string Property CALLBACK_STAFF_ALL_STYLE = "XPMSEChangeStaffAllStyle" AutoReadOnly
string Property CALLBACK_STAFF_SCALE = "XPMSEChangeStaffScale" AutoReadOnly
string Property CALLBACK_STAFF_HIDE = "XPMSEChangeStaffHide" AutoReadOnly
string Property CALLBACK_STAFF_POSX = "XPMSEChangeStaffPosX" AutoReadOnly
string Property CALLBACK_STAFF_POSY = "XPMSEChangeStaffPosY" AutoReadOnly
string Property CALLBACK_STAFF_POSZ = "XPMSEChangeStaffPosZ" AutoReadOnly
string Property CALLBACK_STAFF_ROTY = "XPMSEChangeStaffRotY" AutoReadOnly
string Property CALLBACK_STAFF_ROTP = "XPMSEChangeStaffRotP" AutoReadOnly
string Property CALLBACK_STAFF_ROTR = "XPMSEChangeStaffRotR" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_STYLE = "XPMSEChangeStaffLeftStyle" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_ALL_STYLE = "XPMSEChangeStaffLeftAllStyle" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_SCALE = "XPMSEChangeStaffLeftScale" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_HIDE = "XPMSEChangeStaffLeftHide" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_POSX = "XPMSEChangeStaffLeftPosX" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_POSY = "XPMSEChangeStaffLeftPosY" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_POSZ = "XPMSEChangeStaffLeftPosZ" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_ROTY = "XPMSEChangeStaffLeftRotY" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_ROTP = "XPMSEChangeStaffLeftRotP" AutoReadOnly
string Property CALLBACK_STAFF_LEFT_ROTR = "XPMSEChangeStaffLeftRotR" AutoReadOnly
string Property CALLBACK_BOW_STYLE = "XPMSEChangeBowStyle" AutoReadOnly
string Property CALLBACK_BOW_ALL_STYLE = "XPMSEChangeBowAllStyle" AutoReadOnly
string Property CALLBACK_CROSSBOW_STYLE = "XPMSEChangeCrossbowStyle" AutoReadOnly
string Property CALLBACK_CROSSBOW_ALL_STYLE = "XPMSEChangeCrossbowAllStyle" AutoReadOnly
string Property CALLBACK_BOW_SCALE = "XPMSEChangeBowScale" AutoReadOnly
string Property CALLBACK_BOW_HIDE = "XPMSEChangeBowHide" AutoReadOnly
string Property CALLBACK_BOW_POSX = "XPMSEChangeBowPosX" AutoReadOnly
string Property CALLBACK_BOW_POSY = "XPMSEChangeBowPosY" AutoReadOnly
string Property CALLBACK_BOW_POSZ = "XPMSEChangeBowPosZ" AutoReadOnly
string Property CALLBACK_BOW_ROTY = "XPMSEChangeBowRotY" AutoReadOnly
string Property CALLBACK_BOW_ROTP = "XPMSEChangeBowRotP" AutoReadOnly
string Property CALLBACK_BOW_ROTR = "XPMSEChangeBowRotR" AutoReadOnly
string Property CALLBACK_CROSSBOW_POSX = "XPMSEChangeCrossbowPosX" AutoReadOnly
string Property CALLBACK_CROSSBOW_POSY = "XPMSEChangeCrossbowPosY" AutoReadOnly
string Property CALLBACK_CROSSBOW_POSZ = "XPMSEChangeCrossbowPosZ" AutoReadOnly
string Property CALLBACK_CROSSBOW_ROTY = "XPMSEChangeCrossbowRotY" AutoReadOnly
string Property CALLBACK_CROSSBOW_ROTP = "XPMSEChangeCrossbowRotP" AutoReadOnly
string Property CALLBACK_CROSSBOW_ROTR = "XPMSEChangeCrossbowRotR" AutoReadOnly
string Property CALLBACK_QUIVER_STYLE = "XPMSEChangeQuiverStyle" AutoReadOnly
string Property CALLBACK_QUIVER_ALL_STYLE = "XPMSEChangeQuiverAllStyle" AutoReadOnly
string Property CALLBACK_BOLT_STYLE = "XPMSEChangeBoltStyle" AutoReadOnly
string Property CALLBACK_BOLT_ALL_STYLE = "XPMSEChangeBoltALLStyle" AutoReadOnly
string Property CALLBACK_QUIVER_SCALE = "XPMSEChangeQuiverScale" AutoReadOnly
string Property CALLBACK_QUIVER_HIDE = "XPMSEChangeQuiverHide" AutoReadOnly
string Property CALLBACK_QUIVER_POSX = "XPMSEChangeQuiverPosX" AutoReadOnly
string Property CALLBACK_QUIVER_POSY = "XPMSEChangeQuiverPosY" AutoReadOnly
string Property CALLBACK_QUIVER_POSZ = "XPMSEChangeQuiverPosZ" AutoReadOnly
string Property CALLBACK_QUIVER_ROTY = "XPMSEChangeQuiverRotY" AutoReadOnly
string Property CALLBACK_QUIVER_ROTP = "XPMSEChangeQuiverRotP" AutoReadOnly
string Property CALLBACK_QUIVER_ROTR = "XPMSEChangeQuiverRotR" AutoReadOnly
string Property CALLBACK_BOLT_POSX = "XPMSEChangeBoltPosX" AutoReadOnly
string Property CALLBACK_BOLT_POSY = "XPMSEChangeBoltPosY" AutoReadOnly
string Property CALLBACK_BOLT_POSZ = "XPMSEChangeBoltPosZ" AutoReadOnly
string Property CALLBACK_BOLT_ROTY = "XPMSEChangeBoltRotY" AutoReadOnly
string Property CALLBACK_BOLT_ROTP = "XPMSEChangeBoltRotP" AutoReadOnly
string Property CALLBACK_BOLT_ROTR = "XPMSEChangeBoltRotR" AutoReadOnly

string Property CATEGORY_WEAPON = "rsm_weapon" AutoReadOnly

; NiOverride version data
int Property NIOVERRIDE_VERSION = 6 AutoReadOnly
int Property SKEE_VERSION = 1 AutoReadOnly
int Property NIOVERRIDE_SCRIPT_VERSION = 6 AutoReadOnly

; XPMSE version data
float Property XPMSE_VERSION = 3.6 AutoReadOnly
float Property XPMSELIB_VERSION = 3.6 AutoReadOnly

bool _versionValid = false

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

;Arrays
float[] _axe_Position
float[] _axe_Rotation
float[] _axeLeft_Position
float[] _axeLeft_Rotation
float[] _mace_Position
float[] _mace_Rotation
float[] _maceLeft_Position
float[] _maceLeft_Rotation
float[] _sword_Position
float[] _sword_Rotation
float[] _swordLeft_Position
float[] _swordLeft_Rotation
float[] _dagger_Position
float[] _dagger_Rotation
float[] _daggerLeft_Position
float[] _daggerLeft_Rotation
float[] _weaponBack_Position
float[] _weaponBack_Rotation
float[] _weaponBack_AM_Position
float[] _weaponBack_AM_Rotation
float[] _shieldBack_Position
float[] _shieldBack_Rotation
float[] _staff_Position
float[] _staff_Rotation
float[] _staffLeft_Position
float[] _staffLeft_Rotation
float[] _bow_Position
float[] _bow_Rotation
float[] _crossbow_Position
float[] _crossbow_Rotation
float[] _quiver_Position
float[] _quiver_Rotation
float[] _bolt_Position
float[] _bolt_Rotation

Event OnCategoryRequest()
	AddCategory(CATEGORY_WEAPON, "$CATEGORY WEAPONS")
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
	If WEAPONS_ENABLED && requirement
		String style = ""
		
		;;Axe
		If isPlayer
			If (ReadXPMSEData(target, AXE_KEY, 1) - 1) < 0.0
				AddSliderEx("$Axe Style", CATEGORY_WEAPON, CALLBACK_AXE_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, AXE_KEY, 1))
			Else
				AddSliderEx("$Axe Style", CATEGORY_WEAPON, CALLBACK_AXE_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, AXE_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Axe Style", CATEGORY_WEAPON, CALLBACK_AXE_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, AXE_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Axe Style All", CATEGORY_WEAPON, CALLBACK_AXE_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, AXE_ALL_KEY, 1))
		EndIf

		AddSliderEx("$Axe Hidden", CATEGORY_WEAPON, CALLBACK_AXE_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_AXE))
		AddSliderEx("$Axe Scale", CATEGORY_WEAPON, CALLBACK_AXE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_AXE))

		_axe_Position = GetNodePosition(target, isFemale, NINODE_AXE_DEFAULT_CME)
		AddSliderEx("$Axe Pos X", CATEGORY_WEAPON, CALLBACK_AXE_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _axe_Position[0])
		AddSliderEx("$Axe Pos Y", CATEGORY_WEAPON, CALLBACK_AXE_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _axe_Position[1])
		AddSliderEx("$Axe Pos Z", CATEGORY_WEAPON, CALLBACK_AXE_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _axe_Position[2])
		_axe_Rotation = GetNodeRotation(target, isFemale, NINODE_AXE_DEFAULT_CME)
		AddSliderEx("$Axe Rot Y", CATEGORY_WEAPON, CALLBACK_AXE_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _axe_Rotation[0])
		AddSliderEx("$Axe Rot P", CATEGORY_WEAPON, CALLBACK_AXE_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _axe_Rotation[1])
		AddSliderEx("$Axe Rot R", CATEGORY_WEAPON, CALLBACK_AXE_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _axe_Rotation[2])
		
		;;Axe Left
		If isPlayer
			If (ReadXPMSEData(target, AXE_LEFT_KEY, 1) - 1) < 0.0
				AddSliderEx("$Axe Left Style", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, AXE_LEFT_KEY, 1))
			Else
				AddSliderEx("$Axe Left Style", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, AXE_LEFT_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Axe Left Style", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, AXE_LEFT_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Axe Left Style All", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, AXE_LEFT_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Axe Left Hidden", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_AXE_LEFT))
		AddSliderEx("$Axe Left Scale", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_AXE_LEFT))
		
		_axeLeft_Position = GetNodePosition(target, isFemale, NINODE_AXE_LEFT_DEFAULT_CME)
		AddSliderEx("$Axe Left Pos X", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _axeLeft_Position[0])
		AddSliderEx("$Axe Left Pos Y", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _axeLeft_Position[1])
		AddSliderEx("$Axe Left Pos Z", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _axeLeft_Position[2])
		_axeLeft_Rotation = GetNodeRotation(target, isFemale, NINODE_AXE_LEFT_DEFAULT_CME)
		AddSliderEx("$Axe Left Rot Y", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _axeLeft_Rotation[0])
		AddSliderEx("$Axe Left Rot P", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _axeLeft_Rotation[1])
		AddSliderEx("$Axe Left Rot R", CATEGORY_WEAPON, CALLBACK_AXE_LEFT_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _axeLeft_Rotation[2])
		
		;;Mace
		If isPlayer
			If (ReadXPMSEData(target, MACE_KEY, 1) - 1) < 0.0
				AddSliderEx("$Mace Style", CATEGORY_WEAPON, CALLBACK_MACE_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, MACE_KEY, 1))
			Else
				AddSliderEx("$Mace Style", CATEGORY_WEAPON, CALLBACK_MACE_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, MACE_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Mace Style", CATEGORY_WEAPON, CALLBACK_MACE_STYLE, -1.00, 0.00, 1.00, ReadXPMSEData(target, MACE_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Mace Style All", CATEGORY_WEAPON, CALLBACK_MACE_ALL_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, MACE_ALL_KEY, 1))
		EndIf

		AddSliderEx("$Mace Hidden", CATEGORY_WEAPON, CALLBACK_MACE_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_MACE))
		AddSliderEx("$Mace Scale", CATEGORY_WEAPON, CALLBACK_MACE_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_MACE))

		_mace_Position = GetNodePosition(target, isFemale, NINODE_MACE_DEFAULT_CME)
		AddSliderEx("$Mace Pos X", CATEGORY_WEAPON, CALLBACK_MACE_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _mace_Position[0])
		AddSliderEx("$Mace Pos Y", CATEGORY_WEAPON, CALLBACK_MACE_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _mace_Position[1])
		AddSliderEx("$Mace Pos Z", CATEGORY_WEAPON, CALLBACK_MACE_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _mace_Position[2])
		_mace_Rotation = GetNodeRotation(target, isFemale, NINODE_MACE_DEFAULT_CME)
		AddSliderEx("$Mace Rot Y", CATEGORY_WEAPON, CALLBACK_MACE_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _mace_Rotation[0])
		AddSliderEx("$Mace Rot P", CATEGORY_WEAPON, CALLBACK_MACE_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _mace_Rotation[1])
		AddSliderEx("$Mace Rot R", CATEGORY_WEAPON, CALLBACK_MACE_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _mace_Rotation[2])
			
		;;Mace Left
		If isPlayer
			If (ReadXPMSEData(target, MACE_LEFT_KEY, 1) - 1) < 0.0
				AddSliderEx("$Mace Left Style", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, MACE_LEFT_KEY, 1))
			Else
				AddSliderEx("$Mace Left Style", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, MACE_LEFT_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Mace Left Style", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_STYLE, -1.00, 0.00, 1.00, ReadXPMSEData(target, MACE_LEFT_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Mace Left Style All", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_ALL_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, MACE_LEFT_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Mace Left Hidden", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_MACE_LEFT))
		AddSliderEx("$Mace Left Scale", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_MACE_LEFT))

		_maceLeft_Position = GetNodePosition(target, isFemale, NINODE_MACE_LEFT_DEFAULT_CME)
		AddSliderEx("$Mace Left Pos X", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _maceLeft_Position[0])
		AddSliderEx("$Mace Left Pos Y", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _maceLeft_Position[1])
		AddSliderEx("$Mace Left Pos Z", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _maceLeft_Position[2])
		_maceLeft_Rotation = GetNodeRotation(target, isFemale, NINODE_MACE_LEFT_DEFAULT_CME)
		AddSliderEx("$Mace Left Rot Y", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _maceLeft_Rotation[0])
		AddSliderEx("$Mace Left Rot P", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _maceLeft_Rotation[1])
		AddSliderEx("$Mace Left Rot R", CATEGORY_WEAPON, CALLBACK_MACE_LEFT_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _maceLeft_Rotation[2])
		
		;;Sword
		If isPlayer
			If (ReadXPMSEData(target, SWORD_KEY, 1) - 1) < 0.0
				AddSliderEx("$Sword Style", CATEGORY_WEAPON, CALLBACK_SWORD_STYLE, 0.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_KEY, 1))
			Else
				AddSliderEx("$Sword Style", CATEGORY_WEAPON, CALLBACK_SWORD_STYLE, 0.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Sword Style", CATEGORY_WEAPON, CALLBACK_SWORD_STYLE, -1.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Sword Style All", CATEGORY_WEAPON, CALLBACK_SWORD_ALL_STYLE, 0.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_ALL_KEY, 1))
		EndIf

		AddSliderEx("$Sword Hidden", CATEGORY_WEAPON, CALLBACK_SWORD_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_SWORD))
		AddSliderEx("$Sword Scale", CATEGORY_WEAPON, CALLBACK_SWORD_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SWORD))

		_sword_Position = GetNodePosition(target, isFemale, NINODE_SWORD_DEFAULT_CME)
		AddSliderEx("$Sword Pos X", CATEGORY_WEAPON, CALLBACK_SWORD_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _sword_Position[0])
		AddSliderEx("$Sword Pos Y", CATEGORY_WEAPON, CALLBACK_SWORD_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _sword_Position[1])
		AddSliderEx("$Sword Pos Z", CATEGORY_WEAPON, CALLBACK_SWORD_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _sword_Position[2])
		_sword_Rotation = GetNodeRotation(target, isFemale, NINODE_SWORD_DEFAULT_CME)
		AddSliderEx("$Sword Rot Y", CATEGORY_WEAPON, CALLBACK_SWORD_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _sword_Rotation[0])
		AddSliderEx("$Sword Rot P", CATEGORY_WEAPON, CALLBACK_SWORD_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _sword_Rotation[1])
		AddSliderEx("$Sword Rot R", CATEGORY_WEAPON, CALLBACK_SWORD_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _sword_Rotation[2])
		
		;;Sword Left
		If isPlayer
			If (ReadXPMSEData(target, SWORD_LEFT_KEY, 1) - 1) < 0.0
				AddSliderEx("$Sword Left Style", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_STYLE, 0.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_LEFT_KEY, 1))
			Else
				AddSliderEx("$Sword Left Style", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_STYLE, 0.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_LEFT_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Sword Left Style", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_STYLE, -1.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_LEFT_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Sword Left Style All", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_ALL_STYLE, 0.00, 5.00, 1.00, ReadXPMSEData(target, SWORD_LEFT_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Sword Left Hidden", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_SWORD_LEFT))
		AddSliderEx("$Sword Left Scale", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SWORD_LEFT))
		
		_swordLeft_Position = GetNodePosition(target, isFemale, NINODE_SWORD_LEFT_DEFAULT_CME)
		AddSliderEx("$Sword Left Pos X", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _swordLeft_Position[0])
		AddSliderEx("$Sword Left Pos Y", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _swordLeft_Position[1])
		AddSliderEx("$Sword Left Pos Z", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _swordLeft_Position[2])
		_swordLeft_Rotation = GetNodeRotation(target, isFemale, NINODE_SWORD_LEFT_DEFAULT_CME)
		AddSliderEx("$Sword Left Rot Y", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _swordLeft_Rotation[0])
		AddSliderEx("$Sword Left Rot P", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _swordLeft_Rotation[1])
		AddSliderEx("$Sword Left Rot R", CATEGORY_WEAPON, CALLBACK_SWORD_LEFT_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _swordLeft_Rotation[2])
		
		
		;;Dagger
		If isPlayer
			If (ReadXPMSEData(target, DAGGER_KEY, 1) - 1) < 0.0
				AddSliderEx("$Dagger Style", CATEGORY_WEAPON, CALLBACK_DAGGER_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_KEY, 1))
			Else
				AddSliderEx("$Dagger Style", CATEGORY_WEAPON, CALLBACK_DAGGER_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Dagger Style", CATEGORY_WEAPON, CALLBACK_DAGGER_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Dagger Style All", CATEGORY_WEAPON, CALLBACK_DAGGER_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Dagger Hidden", CATEGORY_WEAPON, CALLBACK_DAGGER_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_DAGGER))
		AddSliderEx("$Dagger Scale", CATEGORY_WEAPON, CALLBACK_DAGGER_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_DAGGER))

		_dagger_Position = GetNodePosition(target, isFemale, NINODE_DAGGER_DEFAULT_CME)
		AddSliderEx("$Dagger Pos X", CATEGORY_WEAPON, CALLBACK_DAGGER_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _dagger_Position[0])
		AddSliderEx("$Dagger Pos Y", CATEGORY_WEAPON, CALLBACK_DAGGER_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _dagger_Position[1])
		AddSliderEx("$Dagger Pos Z", CATEGORY_WEAPON, CALLBACK_DAGGER_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _dagger_Position[2])
		_dagger_Rotation = GetNodeRotation(target, isFemale, NINODE_DAGGER_DEFAULT_CME)
		AddSliderEx("$Dagger Rot Y", CATEGORY_WEAPON, CALLBACK_DAGGER_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _dagger_Rotation[0])
		AddSliderEx("$Dagger Rot P", CATEGORY_WEAPON, CALLBACK_DAGGER_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _dagger_Rotation[1])
		AddSliderEx("$Dagger Rot R", CATEGORY_WEAPON, CALLBACK_DAGGER_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _dagger_Rotation[2])
		
		;;Dagger
		If isPlayer
			If (ReadXPMSEData(target, DAGGER_LEFT_KEY, 1) - 1) < 0.0
				AddSliderEx("$Dagger Left Style", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_LEFT_KEY, 1))
			Else
				AddSliderEx("$Dagger Left Style", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_LEFT_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Dagger Left Style", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_LEFT_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Dagger Left Style All", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, DAGGER_LEFT_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Dagger Left Hidden", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_DAGGER_LEFT))
		AddSliderEx("$Dagger Left Scale", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_DAGGER_LEFT))
		
		_daggerLeft_Position = GetNodePosition(target, isFemale, NINODE_DAGGER_LEFT_DEFAULT_CME)
		AddSliderEx("$Dagger Left Pos X", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _daggerLeft_Position[0])
		AddSliderEx("$Dagger Left Pos Y", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _daggerLeft_Position[1])
		AddSliderEx("$Dagger Left Pos Z", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _daggerLeft_Position[2])
		_daggerLeft_Rotation = GetNodeRotation(target, isFemale, NINODE_DAGGER_LEFT_DEFAULT_CME)
		AddSliderEx("$Dagger Left Rot Y", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _daggerLeft_Rotation[0])
		AddSliderEx("$Dagger Left Rot P", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _daggerLeft_Rotation[1])
		AddSliderEx("$Dagger Left Rot R", CATEGORY_WEAPON, CALLBACK_DAGGER_LEFT_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _daggerLeft_Rotation[2])
		
		;;Two-Handed
		If isPlayer
			If (ReadXPMSEData(target, TH_S_KEY, 1) - 1) < 0.0
				AddSliderEx("$Weapon Back Sword Style", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_S_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, TH_S_KEY, 1))
			Else
				AddSliderEx("$Weapon Back Sword Style", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_S_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, TH_S_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Weapon Back Sword Style", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_S_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, TH_S_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Weapon Back Sword Style All", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_S_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, TH_SWORD_ALL_KEY, 1))
		EndIf
		
		If isPlayer
			If (ReadXPMSEData(target, TH_AM_KEY, 1) - 1) < 0.0
				AddSliderEx("$Weapon Back Axe Style", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, TH_AM_KEY, 1))
			Else
				AddSliderEx("$Weapon Back Axe Style", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, TH_AM_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Weapon Back Axe Style", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, TH_AM_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Weapon Back Axe Style All", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, TH_AXE_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Weapon Back Hidden", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_WEAPON_BACK))
		AddSliderEx("$Weapon Back Scale", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_WEAPON_BACK))

		_weaponBack_Position = GetNodePosition(target, isFemale, NINODE_WEAPON_BACK_DEFAULT_CME)
		AddSliderEx("$Weapon Back Pos X", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _weaponBack_Position[0])
		AddSliderEx("$Weapon Back Pos Y", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _weaponBack_Position[1])
		AddSliderEx("$Weapon Back Pos Z", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _weaponBack_Position[2])
		_weaponBack_Rotation = GetNodeRotation(target, isFemale, NINODE_WEAPON_BACK_DEFAULT_CME)
		AddSliderEx("$Weapon Back Rot Y", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _weaponBack_Rotation[0])
		AddSliderEx("$Weapon Back Rot P", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _weaponBack_Rotation[1])
		AddSliderEx("$Weapon Back Rot R", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _weaponBack_Rotation[2])
		_weaponBack_AM_Position = GetNodePosition(target, isFemale, NINODE_WEAPON_BACK_AM_DEFAULT_CME)
		AddSliderEx("$Weapon Back Axe Pos X", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _weaponBack_AM_Position[0])
		AddSliderEx("$Weapon Back Axe Pos Y", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _weaponBack_AM_Position[1])
		AddSliderEx("$Weapon Back Axe Pos Z", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _weaponBack_AM_Position[2])
		_weaponBack_AM_Rotation = GetNodeRotation(target, isFemale, NINODE_WEAPON_BACK_AM_DEFAULT_CME)
		AddSliderEx("$Weapon Back Axe Rot Y", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _weaponBack_AM_Rotation[0])
		AddSliderEx("$Weapon Back Axe Rot P", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _weaponBack_AM_Rotation[1])
		AddSliderEx("$Weapon Back Axe Rot R", CATEGORY_WEAPON, CALLBACK_WEAPON_BACK_AM_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _weaponBack_AM_Rotation[2])
		
		;;Shield
		If isPlayer
			If (ReadXPMSEData(target, SHIELD_KEY, 1) - 1) < 0.0
				AddSliderEx("$Shield Back Style", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, SHIELD_KEY, 1))
			Else
				AddSliderEx("$Shield Back Style", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, SHIELD_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Shield Back Style", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_STYLE, -1.00, 0.00, 1.00, ReadXPMSEData(target, SHIELD_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Shield Back Style All", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_ALL_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, SHIELD_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Shield Back Hidden", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_SHIELD_BACK))
		AddSliderEx("$Shield Back Scale", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_SHIELD_BACK))
		
		_shieldBack_Position = GetNodePosition(target, isFemale, NINODE_SHIELD_BACK_DEFAULT_CME)
		AddSliderEx("$Shield Back Pos X", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _shieldBack_Position[0])
		AddSliderEx("$Shield Back Pos Y", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _shieldBack_Position[1])
		AddSliderEx("$Shield Back Pos Z", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _shieldBack_Position[2])
		_shieldBack_Rotation = GetNodeRotation(target, isFemale, NINODE_SHIELD_BACK_DEFAULT_CME)
		AddSliderEx("$Shield Back Rot Y", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _shieldBack_Rotation[0])
		AddSliderEx("$Shield Back Rot P", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _shieldBack_Rotation[1])
		AddSliderEx("$Shield Back Rot R", CATEGORY_WEAPON, CALLBACK_SHIELD_BACK_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _shieldBack_Rotation[2])
		
		;;Staff
		If isPlayer
			If (ReadXPMSEData(target, STAFF_KEY, 1) - 1) < 0.0
				AddSliderEx("$Staff Style", CATEGORY_WEAPON, CALLBACK_STAFF_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_KEY, 1))
			Else
				AddSliderEx("$Staff Style", CATEGORY_WEAPON, CALLBACK_STAFF_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Staff Style", CATEGORY_WEAPON, CALLBACK_STAFF_STYLE, -1.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Staff Style All", CATEGORY_WEAPON, CALLBACK_STAFF_ALL_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Staff Hidden", CATEGORY_WEAPON, CALLBACK_STAFF_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_STAFF))
		AddSliderEx("$Staff Scale", CATEGORY_WEAPON, CALLBACK_STAFF_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_STAFF))
		
		_staff_Position = GetNodePosition(target, isFemale, NINODE_STAFF_DEFAULT_CME)
		AddSliderEx("$Staff Pos X", CATEGORY_WEAPON, CALLBACK_STAFF_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _staff_Position[0])
		AddSliderEx("$Staff Pos Y", CATEGORY_WEAPON, CALLBACK_STAFF_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _staff_Position[1])
		AddSliderEx("$Staff Pos Z", CATEGORY_WEAPON, CALLBACK_STAFF_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _staff_Position[2])
		_staff_Rotation = GetNodeRotation(target, isFemale, NINODE_STAFF_DEFAULT_CME)
		AddSliderEx("$Staff Rot Y", CATEGORY_WEAPON, CALLBACK_STAFF_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _staff_Rotation[0])
		AddSliderEx("$Staff Rot P", CATEGORY_WEAPON, CALLBACK_STAFF_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _staff_Rotation[1])
		AddSliderEx("$Staff Rot R", CATEGORY_WEAPON, CALLBACK_STAFF_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _staff_Rotation[2])
		
		;;Staff Left
		If isPlayer
			If (ReadXPMSEData(target, STAFF_LEFT_KEY, 1) - 1) < 0.0
				AddSliderEx("$Staff Left Style", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_LEFT_KEY, 1))
			Else
				AddSliderEx("$Staff Left Style", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_LEFT_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Staff Left Style", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_LEFT_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Staff Left Style All", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_ALL_STYLE, 0.00, 0.00, 1.00, ReadXPMSEData(target, STAFF_LEFT_ALL_KEY, 1))
		EndIf
		
		AddSliderEx("$Staff Left Hidden", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_STAFF_LEFT))
		AddSliderEx("$Staff Left Scale", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_STAFF_LEFT))
		
		_staffLeft_Position = GetNodePosition(target, isFemale, NINODE_STAFF_LEFT_DEFAULT_CME)
		AddSliderEx("$Staff Left Pos X", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _staffLeft_Position[0])
		AddSliderEx("$Staff Left Pos Y", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _staffLeft_Position[1])
		AddSliderEx("$Staff Left Pos Z", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _staffLeft_Position[2])
		_staffLeft_Rotation = GetNodeRotation(target, isFemale, NINODE_STAFF_LEFT_DEFAULT_CME)
		AddSliderEx("$Staff Left Rot Y", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _staffLeft_Rotation[0])
		AddSliderEx("$Staff Left Rot P", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _staffLeft_Rotation[1])
		AddSliderEx("$Staff Left Rot R", CATEGORY_WEAPON, CALLBACK_STAFF_LEFT_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _staffLeft_Rotation[2])
		
		;;Bow
		If isPlayer
			If (ReadXPMSEData(target, BOW_KEY, 1) - 1) < 0.0
				AddSliderEx("$Bow Style", CATEGORY_WEAPON, CALLBACK_BOW_STYLE, 0.00, 3.00, 1.00, ReadXPMSEData(target, BOW_KEY, 1))
			Else
				AddSliderEx("$Bow Style", CATEGORY_WEAPON, CALLBACK_BOW_STYLE, 0.00, 3.00, 1.00, ReadXPMSEData(target, BOW_KEY, 1) - 1)
			Endif
		Else
			AddSliderEx("$Bow Style", CATEGORY_WEAPON, CALLBACK_BOW_STYLE, -1.00, 3.00, 1.00, ReadXPMSEData(target, BOW_KEY, 1) - 1)
		Endif
		If isPlayer
			AddSliderEx("$Bow Style All", CATEGORY_WEAPON, CALLBACK_BOW_ALL_STYLE, 0.00, 3.00, 1.00, ReadXPMSEData(target, BOW_ALL_KEY, 1))
		EndIf
		
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			;;CrossBow
			If isPlayer
				If (ReadXPMSEData(target, CROSSBOW_KEY, 1) - 1) < 0.0
					AddSliderEx("$Crossbow Style", CATEGORY_WEAPON, CALLBACK_CROSSBOW_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, CROSSBOW_KEY, 1))
				Else
					AddSliderEx("$Crossbow Style", CATEGORY_WEAPON, CALLBACK_CROSSBOW_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, CROSSBOW_KEY, 1) - 1)
				Endif
			Else
				AddSliderEx("$Crossbow Style", CATEGORY_WEAPON, CALLBACK_CROSSBOW_STYLE, -1.00, 1.00, 1.00, ReadXPMSEData(target, CROSSBOW_KEY, 1) - 1)
			Endif
			If isPlayer
				AddSliderEx("$Crossbow Style All", CATEGORY_WEAPON, CALLBACK_CROSSBOW_ALL_STYLE, 0.00, 1.00, 1.00, ReadXPMSEData(target, CROSSBOW_ALL_KEY, 1))
			EndIf
		EndIf
		
		AddSliderEx("$Bow Hidden", CATEGORY_WEAPON, CALLBACK_BOW_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_BOW))
		AddSliderEx("$Bow Scale", CATEGORY_WEAPON, CALLBACK_BOW_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_BOW))
		
		_bow_Position = GetNodePosition(target, isFemale, NINODE_BOW_DEFAULT_CME)
		AddSliderEx("$Bow Pos X", CATEGORY_WEAPON, CALLBACK_BOW_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _bow_Position[0])
		AddSliderEx("$Bow Pos Y", CATEGORY_WEAPON, CALLBACK_BOW_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _bow_Position[1])
		AddSliderEx("$Bow Pos Z", CATEGORY_WEAPON, CALLBACK_BOW_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _bow_Position[2])
		_bow_Rotation = GetNodeRotation(target, isFemale, NINODE_BOW_DEFAULT_CME)
		AddSliderEx("$Bow Rot Y", CATEGORY_WEAPON, CALLBACK_BOW_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _bow_Rotation[0])
		AddSliderEx("$Bow Rot P", CATEGORY_WEAPON, CALLBACK_BOW_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _bow_Rotation[1])
		AddSliderEx("$Bow Rot R", CATEGORY_WEAPON, CALLBACK_BOW_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _bow_Rotation[2])
			
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			_crossbow_Position = GetNodePosition(target, isFemale, NINODE_CROSSBOW_DEFAULT_CME)
			AddSliderEx("$Crossbow Pos X", CATEGORY_WEAPON, CALLBACK_CROSSBOW_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _crossbow_Position[0])
			AddSliderEx("$Crossbow Pos Y", CATEGORY_WEAPON, CALLBACK_CROSSBOW_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _crossbow_Position[1])
			AddSliderEx("$Crossbow Pos Z", CATEGORY_WEAPON, CALLBACK_CROSSBOW_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _crossbow_Position[2])
			_crossbow_Rotation = GetNodeRotation(target, isFemale, NINODE_CROSSBOW_DEFAULT_CME)
			AddSliderEx("$Crossbow Rot Y", CATEGORY_WEAPON, CALLBACK_CROSSBOW_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _crossbow_Rotation[0])
			AddSliderEx("$Crossbow Rot P", CATEGORY_WEAPON, CALLBACK_CROSSBOW_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _crossbow_Rotation[1])
			AddSliderEx("$Crossbow Rot R", CATEGORY_WEAPON, CALLBACK_CROSSBOW_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _crossbow_Rotation[2])
		Endif
		
		If QUIVER_ENABLED
			If isPlayer
				If (ReadXPMSEData(target, QUIVER_KEY, 1) - 1) < 0.0
					AddSliderEx("$Quiver Style", CATEGORY_WEAPON, CALLBACK_QUIVER_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, QUIVER_KEY, 1))
				Else
					AddSliderEx("$Quiver Style", CATEGORY_WEAPON, CALLBACK_QUIVER_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, QUIVER_KEY, 1) - 1)
				Endif
			Else
				AddSliderEx("$Quiver Style", CATEGORY_WEAPON, CALLBACK_QUIVER_STYLE, -1.00, 2.00, 1.00, ReadXPMSEData(target, QUIVER_KEY, 1) - 1)
			Endif
			If isPlayer
				AddSliderEx("$Quiver Style All", CATEGORY_WEAPON, CALLBACK_QUIVER_ALL_STYLE, 0.00, 2.00, 1.00, ReadXPMSEData(target, QUIVER_ALL_KEY, 1))
			Endif
			If (Game.GetModByName("Dawnguard.esm")!= 255)
				If isPlayer
					If (ReadXPMSEData(target, BOLT_KEY, 1) - 1) < 0.0
						AddSliderEx("$Bolt Style", CATEGORY_WEAPON, CALLBACK_BOLT_STYLE, 0.00, 4.00, 1.00, ReadXPMSEData(target, BOLT_KEY, 1))
					Else
						AddSliderEx("$Bolt Style", CATEGORY_WEAPON, CALLBACK_BOLT_STYLE, 0.00, 4.00, 1.00, ReadXPMSEData(target, BOLT_KEY, 1) - 1)
					Endif
				Else
					AddSliderEx("$Bolt Style", CATEGORY_WEAPON, CALLBACK_BOLT_STYLE, -1.00, 4.00, 1.00, ReadXPMSEData(target, BOLT_KEY, 1) - 1)
				Endif
				If isPlayer
					AddSliderEx("$Bolt Style All", CATEGORY_WEAPON, CALLBACK_BOLT_ALL_STYLE, 0.00, 4.00, 1.00, ReadXPMSEData(target, BOLT_ALL_KEY, 1))
				Endif
			Endif
		Endif

		AddSliderEx("$Quiver Hidden", CATEGORY_WEAPON, CALLBACK_QUIVER_HIDE, 0.00, 1.00, 1.00, isNodeHidden(target, isFemale, NINODE_QUIVER))
		AddSliderEx("$Quiver Scale", CATEGORY_WEAPON, CALLBACK_QUIVER_SCALE, SCALE_MIN, SCALE_MAX, SCALE_STEPPING, GetNodeScale(target, isFemale, NINODE_QUIVER))
		
		_quiver_Position = GetNodePosition(target, isFemale, NINODE_QUIVER_DEFAULT_CME)
		AddSliderEx("$Quiver Pos X", CATEGORY_WEAPON, CALLBACK_QUIVER_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _quiver_Position[0])
		AddSliderEx("$Quiver Pos Y", CATEGORY_WEAPON, CALLBACK_QUIVER_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _quiver_Position[1])
		AddSliderEx("$Quiver Pos Z", CATEGORY_WEAPON, CALLBACK_QUIVER_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _quiver_Position[2])
		_quiver_Rotation = GetNodeRotation(target, isFemale, NINODE_QUIVER_DEFAULT_CME)
		AddSliderEx("$Quiver Rot Y", CATEGORY_WEAPON, CALLBACK_QUIVER_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _quiver_Rotation[0])
		AddSliderEx("$Quiver Rot P", CATEGORY_WEAPON, CALLBACK_QUIVER_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _quiver_Rotation[1])
		AddSliderEx("$Quiver Rot R", CATEGORY_WEAPON, CALLBACK_QUIVER_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _quiver_Rotation[2])
		
		If (Game.GetModByName("Dawnguard.esm")!= 255)
			_bolt_Position = GetNodePosition(target, isFemale, NINODE_BOLT_DEFAULT_CME)
			AddSliderEx("$Bolt Pos X", CATEGORY_WEAPON, CALLBACK_BOLT_POSX, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _bolt_Position[0])
			AddSliderEx("$Bolt Pos Y", CATEGORY_WEAPON, CALLBACK_BOLT_POSY, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _bolt_Position[1])
			AddSliderEx("$Bolt Pos Z", CATEGORY_WEAPON, CALLBACK_BOLT_POSZ, -POSITION_RANGE, POSITION_RANGE, POSITION_STEPPING, _bolt_Position[2])
			_bolt_Rotation = GetNodeRotation(target, isFemale, NINODE_BOLT_DEFAULT_CME)
			AddSliderEx("$Bolt Rot Y", CATEGORY_WEAPON, CALLBACK_BOLT_ROTY, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _bolt_Rotation[0])
			AddSliderEx("$Bolt Rot P", CATEGORY_WEAPON, CALLBACK_BOLT_ROTP, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _bolt_Rotation[1])
			AddSliderEx("$Bolt Rot R", CATEGORY_WEAPON, CALLBACK_BOLT_ROTR, -ROTATION_RANGE, ROTATION_RANGE, ROTATION_STEPPING, _bolt_Rotation[2])
		Endif
	Endif
EndEvent

Event OnSliderChanged(string callback, float value)
	bool isFemale = _targetActorBase.GetSex() as bool
	If _versionValid
		If callback == CALLBACK_AXE_STYLE
			WriteXPMSEData(_targetActor, AXE_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_AXE_LEFT_STYLE
			WriteXPMSEData(_targetActor, AXE_LEFT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MACE_STYLE
			WriteXPMSEData(_targetActor, MACE_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MACE_LEFT_STYLE
			WriteXPMSEData(_targetActor, MACE_LEFT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SWORD_STYLE
			WriteXPMSEData(_targetActor, SWORD_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SWORD_LEFT_STYLE
			WriteXPMSEData(_targetActor, SWORD_LEFT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_DAGGER_STYLE
			WriteXPMSEData(_targetActor, DAGGER_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_DAGGER_LEFT_STYLE
			WriteXPMSEData(_targetActor, DAGGER_LEFT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_WEAPON_BACK_S_STYLE
			WriteXPMSEData(_targetActor, TH_S_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_WEAPON_BACK_AM_STYLE
			WriteXPMSEData(_targetActor, TH_AM_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SHIELD_BACK_STYLE
			WriteXPMSEData(_targetActor, SHIELD_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_STAFF_STYLE
			WriteXPMSEData(_targetActor, STAFF_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_STAFF_LEFT_STYLE
			WriteXPMSEData(_targetActor, STAFF_LEFT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_BOW_STYLE
			WriteXPMSEData(_targetActor, BOW_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_CROSSBOW_STYLE
			WriteXPMSEData(_targetActor, CROSSBOW_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_QUIVER_STYLE
			WriteXPMSEData(_targetActor, QUIVER_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_BOLT_STYLE
			WriteXPMSEData(_targetActor, BOLT_KEY, 1, value + 1.0)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_AXE_ALL_STYLE
			WriteXPMSEData(_targetActor, AXE_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_AXE_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, AXE_LEFT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MACE_ALL_STYLE
			WriteXPMSEData(_targetActor, MACE_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_MACE_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, MACE_LEFT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SWORD_ALL_STYLE
			WriteXPMSEData(_targetActor, SWORD_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SWORD_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, SWORD_LEFT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_DAGGER_ALL_STYLE
			WriteXPMSEData(_targetActor, DAGGER_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_DAGGER_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, DAGGER_LEFT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_WEAPON_BACK_S_ALL_STYLE
			WriteXPMSEData(_targetActor, TH_SWORD_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_WEAPON_BACK_AM_ALL_STYLE
			WriteXPMSEData(_targetActor, TH_AXE_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_SHIELD_BACK_ALL_STYLE
			WriteXPMSEData(_targetActor, SHIELD_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_STAFF_ALL_STYLE
			WriteXPMSEData(_targetActor, STAFF_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_STAFF_LEFT_ALL_STYLE
			WriteXPMSEData(_targetActor, STAFF_LEFT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_BOW_ALL_STYLE
			WriteXPMSEData(_targetActor, BOW_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_CROSSBOW_ALL_STYLE
			WriteXPMSEData(_targetActor, CROSSBOW_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_QUIVER_ALL_STYLE
			WriteXPMSEData(_targetActor, QUIVER_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_BOLT_ALL_STYLE
			WriteXPMSEData(_targetActor, BOLT_ALL_KEY, 1, value)
			int handle = ModEvent.Create("XPMSE_WeaponUpdate")
			if (handle)
				ModEvent.Send(handle)
			endIf
		Elseif callback == CALLBACK_AXE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_AXE, value)
		Elseif callback == CALLBACK_AXE_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_AXE, value)
		Elseif callback == CALLBACK_MACE_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_MACE, value)
		Elseif callback == CALLBACK_MACE_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_MACE, value)
		Elseif callback == CALLBACK_SWORD_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SWORD, value)
		Elseif callback == CALLBACK_SWORD_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_SWORD, value)
		Elseif callback == CALLBACK_DAGGER_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_DAGGER, value)
		Elseif callback == CALLBACK_DAGGER_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_DAGGER, value)
		Elseif callback == CALLBACK_WEAPON_BACK_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_WEAPON_BACK, value)
		Elseif callback == CALLBACK_WEAPON_BACK_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_WEAPON_BACK, value)
		Elseif callback == CALLBACK_BOW_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_BOW, value)
		Elseif callback == CALLBACK_BOW_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_BOW, value)
		Elseif callback == CALLBACK_QUIVER_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_QUIVER, value)
		Elseif callback == CALLBACK_QUIVER_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_QUIVER, value)
		Elseif callback == CALLBACK_AXE_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_AXE_LEFT, value)
		Elseif callback == CALLBACK_AXE_LEFT_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_AXE_LEFT, value)
		Elseif callback == CALLBACK_MACE_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_MACE_LEFT, value)
		Elseif callback == CALLBACK_MACE_LEFT_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_MACE_LEFT, value)
		Elseif callback == CALLBACK_SWORD_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SWORD_LEFT, value)
		Elseif callback == CALLBACK_SWORD_LEFT_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_SWORD_LEFT, value)
		Elseif callback == CALLBACK_DAGGER_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_DAGGER_LEFT, value)
		Elseif callback == CALLBACK_DAGGER_LEFT_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_DAGGER_LEFT, value)
		Elseif callback == CALLBACK_SHIELD_BACK_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_SHIELD_BACK, value)
		Elseif callback == CALLBACK_SHIELD_BACK_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_SHIELD_BACK, value)
		Elseif callback == CALLBACK_STAFF_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_STAFF, value)
		Elseif callback == CALLBACK_STAFF_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_STAFF, value)
		Elseif callback == CALLBACK_STAFF_LEFT_SCALE
			SetNodeScale(_targetActor, isFemale, NINODE_STAFF_LEFT, value)
		Elseif callback == CALLBACK_STAFF_LEFT_HIDE
			SetNodeHidden(_targetActor, isFemale, NINODE_STAFF_LEFT, value)
		Elseif callback == CALLBACK_AXE_POSX || callback == CALLBACK_AXE_POSY || callback == CALLBACK_AXE_POSZ
			If callback == CALLBACK_AXE_POSX
				_axe_Position[0] = value
			ElseIf callback == CALLBACK_AXE_POSY
				_axe_Position[1] = value
			ElseIf callback == CALLBACK_AXE_POSZ
				_axe_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_AXE_DEFAULT_CME, _axe_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_AXE_REVERSE_CME, _axe_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_AXE_BACK_CME, _axe_Position)
		Elseif callback == CALLBACK_AXE_ROTY || callback == CALLBACK_AXE_ROTP || callback == CALLBACK_AXE_ROTR
			If callback == CALLBACK_AXE_ROTY
				_axe_Rotation[0] = value
			ElseIf callback == CALLBACK_AXE_ROTP
				_axe_Rotation[1] = value
			ElseIf callback == CALLBACK_AXE_ROTR
				_axe_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_AXE_DEFAULT_CME, _axe_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_AXE_REVERSE_CME, _axe_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_AXE_BACK_CME, _axe_Rotation)
		Elseif callback == CALLBACK_AXE_LEFT_POSX || callback == CALLBACK_AXE_LEFT_POSY || callback == CALLBACK_AXE_LEFT_POSZ
			If callback == CALLBACK_AXE_LEFT_POSX
				_axeLeft_Position[0] = value
			ElseIf callback == CALLBACK_AXE_LEFT_POSY
				_axeLeft_Position[1] = value
			ElseIf callback == CALLBACK_AXE_LEFT_POSZ
				_axeLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_AXE_LEFT_DEFAULT_CME, _axeLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_AXE_REVERSE_LEFT_CME, _axeLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_AXE_BACK_LEFT_CME, _axeLeft_Position)
		Elseif callback == CALLBACK_AXE_LEFT_ROTY || callback == CALLBACK_AXE_LEFT_ROTP || callback == CALLBACK_AXE_LEFT_ROTR
			If callback == CALLBACK_AXE_LEFT_ROTY
				_axeLeft_Rotation[0] = value
			ElseIf callback == CALLBACK_AXE_LEFT_ROTP
				_axeLeft_Rotation[1] = value
			ElseIf callback == CALLBACK_AXE_LEFT_ROTR
				_axeLeft_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_AXE_LEFT_DEFAULT_CME, _axeLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_AXE_REVERSE_LEFT_CME, _axeLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_AXE_BACK_LEFT_CME, _axeLeft_Rotation)
		Elseif callback == CALLBACK_MACE_POSX || callback == CALLBACK_MACE_POSY || callback == CALLBACK_MACE_POSZ
			If callback == CALLBACK_MACE_POSX
				_mace_Position[0] = value
			ElseIf callback == CALLBACK_MACE_POSY
				_mace_Position[1] = value
			ElseIf callback == CALLBACK_MACE_POSZ
				_mace_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_MACE_DEFAULT_CME, _mace_Position)
		Elseif callback == CALLBACK_MACE_ROTY || callback == CALLBACK_MACE_ROTP || callback == CALLBACK_MACE_ROTR
			If callback == CALLBACK_MACE_ROTY
				_mace_Rotation[0] = value
			ElseIf callback == CALLBACK_MACE_ROTP
				_mace_Rotation[1] = value
			ElseIf callback == CALLBACK_MACE_ROTR
				_mace_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_MACE_DEFAULT_CME, _mace_Rotation)
		Elseif callback == CALLBACK_MACE_LEFT_POSX || callback == CALLBACK_MACE_LEFT_POSY || callback == CALLBACK_MACE_LEFT_POSZ
			If callback == CALLBACK_MACE_LEFT_POSX
				_maceLeft_Position[0] = value
			ElseIf callback == CALLBACK_MACE_LEFT_POSY
				_maceLeft_Position[1] = value
			ElseIf callback == CALLBACK_MACE_LEFT_POSZ
				_maceLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_MACE_LEFT_DEFAULT_CME, _maceLeft_Position)
		Elseif callback == CALLBACK_MACE_LEFT_ROTY || callback == CALLBACK_MACE_LEFT_ROTP || callback == CALLBACK_MACE_LEFT_ROTR
			If callback == CALLBACK_MACE_LEFT_ROTY
				_maceLeft_Rotation[0] = value
			ElseIf callback == CALLBACK_MACE_LEFT_ROTP
				_maceLeft_Rotation[1] = value
			ElseIf callback == CALLBACK_MACE_LEFT_ROTR
				_maceLeft_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_MACE_LEFT_DEFAULT_CME, _maceLeft_Rotation)
		Elseif callback == CALLBACK_SWORD_POSX || callback == CALLBACK_SWORD_POSY || callback == CALLBACK_SWORD_POSZ
			If callback == CALLBACK_SWORD_POSX
				_sword_Position[0] = value
			ElseIf callback == CALLBACK_SWORD_POSY
				_sword_Position[1] = value
			ElseIf callback == CALLBACK_SWORD_POSZ
				_sword_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_DEFAULT_CME, _sword_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_BACK_CME, _sword_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_SWP_CME, _sword_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_FSM_CME, _sword_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFTHIP_CME, _sword_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_NMD_CME, _sword_Position)
		Elseif callback == CALLBACK_SWORD_ROTY || callback == CALLBACK_SWORD_ROTP || callback == CALLBACK_SWORD_ROTR
			If callback == CALLBACK_SWORD_ROTY
				_sword_Rotation[0] = value
			ElseIf callback == CALLBACK_SWORD_ROTP
				_sword_Rotation[1] = value
			ElseIf callback == CALLBACK_SWORD_ROTR
				_sword_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_DEFAULT_CME, _sword_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_BACK_CME, _sword_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_SWP_CME, _sword_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_FSM_CME, _sword_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFTHIP_CME, _sword_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_NMD_CME, _sword_Rotation)
		Elseif callback == CALLBACK_SWORD_LEFT_POSX || callback == CALLBACK_SWORD_LEFT_POSY || callback == CALLBACK_SWORD_LEFT_POSZ
			If callback == CALLBACK_SWORD_LEFT_POSX
				_swordLeft_Position[0] = value
			ElseIf callback == CALLBACK_SWORD_LEFT_POSY
				_swordLeft_Position[1] = value
			ElseIf callback == CALLBACK_SWORD_LEFT_POSZ
				_swordLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFT_DEFAULT_CME, _swordLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFT_BACK_CME, _swordLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFT_SWP_CME, _swordLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFT_FSM_CME, _swordLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFT_LEFTHIP_CME, _swordLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_SWORD_LEFT_NMD_CME, _swordLeft_Position)
		Elseif callback == CALLBACK_SWORD_LEFT_ROTY || callback == CALLBACK_SWORD_LEFT_ROTP || callback == CALLBACK_SWORD_LEFT_ROTR
			If callback == CALLBACK_SWORD_LEFT_ROTY
				_swordLeft_Rotation[0] = value
			ElseIf callback == CALLBACK_SWORD_LEFT_ROTP
				_swordLeft_Rotation[1] = value
			ElseIf callback == CALLBACK_SWORD_LEFT_ROTR
				_swordLeft_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFT_DEFAULT_CME, _swordLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFT_BACK_CME, _swordLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFT_SWP_CME, _swordLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFT_FSM_CME, _swordLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFT_LEFTHIP_CME, _swordLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_SWORD_LEFT_NMD_CME, _swordLeft_Rotation)
		Elseif callback == CALLBACK_DAGGER_POSX || callback == CALLBACK_DAGGER_POSY || callback == CALLBACK_DAGGER_POSZ
			If callback == CALLBACK_DAGGER_POSX
				_dagger_Position[0] = value
			ElseIf callback == CALLBACK_DAGGER_POSY
				_dagger_Position[1] = value
			ElseIf callback == CALLBACK_DAGGER_POSZ
				_dagger_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_DAGGER_DEFAULT_CME, _dagger_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_DAGGER_BACKHIP_CME, _dagger_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_DAGGER_ANKLE_CME, _dagger_Position)
		Elseif callback == CALLBACK_DAGGER_ROTY || callback == CALLBACK_DAGGER_ROTP || callback == CALLBACK_DAGGER_ROTR
			If callback == CALLBACK_DAGGER_ROTY
				_dagger_Rotation[0] = value
			ElseIf callback == CALLBACK_DAGGER_ROTP
				_dagger_Rotation[1] = value
			ElseIf callback == CALLBACK_DAGGER_ROTR
				_dagger_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_DAGGER_DEFAULT_CME, _dagger_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_DAGGER_BACKHIP_CME, _dagger_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_DAGGER_ANKLE_CME, _dagger_Rotation)
		Elseif callback == CALLBACK_DAGGER_LEFT_POSX || callback == CALLBACK_DAGGER_LEFT_POSY || callback == CALLBACK_DAGGER_LEFT_POSZ
			If callback == CALLBACK_DAGGER_LEFT_POSX
				_daggerLeft_Position[0] = value
			ElseIf callback == CALLBACK_DAGGER_LEFT_POSY
				_daggerLeft_Position[1] = value
			ElseIf callback == CALLBACK_DAGGER_LEFT_POSZ
				_daggerLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_DAGGER_LEFT_DEFAULT_CME, _daggerLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_DAGGER_LEFT_BACKHIP_CME, _daggerLeft_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_DAGGER_LEFT_ANKLE_CME, _daggerLeft_Position)
		Elseif callback == CALLBACK_DAGGER_LEFT_ROTY || callback == CALLBACK_DAGGER_LEFT_ROTP || callback == CALLBACK_DAGGER_LEFT_ROTR
			If callback == CALLBACK_DAGGER_LEFT_ROTY
				_daggerLeft_Rotation[0] = value
			ElseIf callback == CALLBACK_DAGGER_LEFT_ROTP
				_daggerLeft_Rotation[1] = value
			ElseIf callback == CALLBACK_DAGGER_LEFT_ROTR
				_daggerLeft_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_DAGGER_LEFT_DEFAULT_CME, _daggerLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_DAGGER_LEFT_BACKHIP_CME, _daggerLeft_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_DAGGER_LEFT_ANKLE_CME, _daggerLeft_Rotation)
		Elseif callback == CALLBACK_WEAPON_BACK_POSX || callback == CALLBACK_WEAPON_BACK_POSY || callback == CALLBACK_WEAPON_BACK_POSZ
			If callback == CALLBACK_WEAPON_BACK_POSX
				_weaponBack_Position[0] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_POSY
				_weaponBack_Position[1] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_POSZ
				_weaponBack_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_WEAPON_BACK_DEFAULT_CME, _weaponBack_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_WEAPON_BACK_SWP_CME, _weaponBack_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_WEAPON_BACK_FSM_CME, _weaponBack_Position)
		Elseif callback == CALLBACK_WEAPON_BACK_ROTY || callback == CALLBACK_WEAPON_BACK_ROTP || callback == CALLBACK_WEAPON_BACK_ROTR
			If callback == CALLBACK_WEAPON_BACK_ROTY
				_weaponBack_Rotation[0] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_ROTP
				_weaponBack_Rotation[1] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_ROTR
				_weaponBack_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_WEAPON_BACK_DEFAULT_CME, _weaponBack_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_WEAPON_BACK_SWP_CME, _weaponBack_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_WEAPON_BACK_FSM_CME, _weaponBack_Rotation)
		Elseif callback == CALLBACK_WEAPON_BACK_AM_POSX || callback == CALLBACK_WEAPON_BACK_AM_POSY || callback == CALLBACK_WEAPON_BACK_AM_POSZ
			If callback == CALLBACK_WEAPON_BACK_AM_POSX
				_weaponBack_AM_Position[0] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_AM_POSY
				_weaponBack_AM_Position[1] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_AM_POSZ
				_weaponBack_AM_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_WEAPON_BACK_AM_DEFAULT_CME, _weaponBack_AM_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_WEAPON_BACK_AM_SWP_CME, _weaponBack_AM_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_WEAPON_BACK_AM_FSM_CME, _weaponBack_AM_Position)
		Elseif callback == CALLBACK_WEAPON_BACK_AM_ROTY || callback == CALLBACK_WEAPON_BACK_AM_ROTP || callback == CALLBACK_WEAPON_BACK_AM_ROTR
			If callback == CALLBACK_WEAPON_BACK_AM_ROTY
				_weaponBack_AM_Rotation[0] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_AM_ROTP
				_weaponBack_AM_Rotation[1] = value
			ElseIf callback == CALLBACK_WEAPON_BACK_AM_ROTR
				_weaponBack_AM_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_WEAPON_BACK_AM_DEFAULT_CME, _weaponBack_AM_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_WEAPON_BACK_AM_SWP_CME, _weaponBack_AM_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_WEAPON_BACK_AM_FSM_CME, _weaponBack_AM_Rotation)
		Elseif callback == CALLBACK_SHIELD_BACK_POSX || callback == CALLBACK_SHIELD_BACK_POSY || callback == CALLBACK_SHIELD_BACK_POSZ
			If callback == CALLBACK_SHIELD_BACK_POSX
				_shieldBack_Position[0] = value
			ElseIf callback == CALLBACK_SHIELD_BACK_POSY
				_shieldBack_Position[1] = value
			ElseIf callback == CALLBACK_SHIELD_BACK_POSZ
				_shieldBack_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_SHIELD_BACK_DEFAULT_CME, _shieldBack_Position)
		Elseif callback == CALLBACK_SHIELD_BACK_ROTY || callback == CALLBACK_SHIELD_BACK_ROTP || callback == CALLBACK_SHIELD_BACK_ROTR
			If callback == CALLBACK_SHIELD_BACK_ROTY
				_shieldBack_Rotation[0] = value
			ElseIf callback == CALLBACK_SHIELD_BACK_ROTP
				_shieldBack_Rotation[1] = value
			ElseIf callback == CALLBACK_SHIELD_BACK_ROTR
				_shieldBack_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_SHIELD_BACK_DEFAULT_CME, _shieldBack_Rotation)	
		Elseif callback == CALLBACK_STAFF_POSX || callback == CALLBACK_STAFF_POSY || callback == CALLBACK_STAFF_POSZ
			If callback == CALLBACK_STAFF_POSX
				_staff_Position[0] = value
			ElseIf callback == CALLBACK_STAFF_POSY
				_staff_Position[1] = value
			ElseIf callback == CALLBACK_STAFF_POSZ
				_staff_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_STAFF_DEFAULT_CME, _staff_Position)
		Elseif callback == CALLBACK_STAFF_ROTY || callback == CALLBACK_STAFF_ROTP || callback == CALLBACK_STAFF_ROTR
			If callback == CALLBACK_STAFF_ROTY
				_staff_Rotation[0] = value
			ElseIf callback == CALLBACK_STAFF_ROTP
				_staff_Rotation[1] = value
			ElseIf callback == CALLBACK_STAFF_ROTR
				_staff_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_STAFF_DEFAULT_CME, _staff_Rotation)		
		Elseif callback == CALLBACK_STAFF_LEFT_POSX || callback == CALLBACK_STAFF_LEFT_POSY || callback == CALLBACK_STAFF_LEFT_POSZ
			If callback == CALLBACK_STAFF_LEFT_POSX
				_staffLeft_Position[0] = value
			ElseIf callback == CALLBACK_STAFF_LEFT_POSY
				_staffLeft_Position[1] = value
			ElseIf callback == CALLBACK_STAFF_LEFT_POSZ
				_staffLeft_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_STAFF_LEFT_DEFAULT_CME, _staffLeft_Position)
		Elseif callback == CALLBACK_STAFF_LEFT_ROTY || callback == CALLBACK_STAFF_LEFT_ROTP || callback == CALLBACK_STAFF_LEFT_ROTR
			If callback == CALLBACK_STAFF_LEFT_ROTY
				_staffLeft_Rotation[0] = value
			ElseIf callback == CALLBACK_STAFF_LEFT_ROTP
				_staffLeft_Rotation[1] = value
			ElseIf callback == CALLBACK_STAFF_LEFT_ROTR
				_staffLeft_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_STAFF_LEFT_DEFAULT_CME, _staffLeft_Rotation)	
		Elseif callback == CALLBACK_BOW_POSX || callback == CALLBACK_BOW_POSY || callback == CALLBACK_BOW_POSZ
			If callback == CALLBACK_BOW_POSX
				_bow_Position[0] = value
			ElseIf callback == CALLBACK_BOW_POSY
				_bow_Position[1] = value
			ElseIf callback == CALLBACK_BOW_POSZ
				_bow_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_BOW_DEFAULT_CME, _bow_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOW_CHESKO_CME, _bow_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOW_BETTER_CME, _bow_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOW_FSM_CME, _bow_Position)
		Elseif callback == CALLBACK_BOW_ROTY || callback == CALLBACK_BOW_ROTP || callback == CALLBACK_BOW_ROTR
			If callback == CALLBACK_BOW_ROTY
				_bow_Rotation[0] = value
			ElseIf callback == CALLBACK_BOW_ROTP
				_bow_Rotation[1] = value
			ElseIf callback == CALLBACK_BOW_ROTR
				_bow_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_BOW_DEFAULT_CME, _bow_Rotation)		
			SetNodeRotation(_targetActor, isFemale, NINODE_BOW_CHESKO_CME, _bow_Rotation)		
			SetNodeRotation(_targetActor, isFemale, NINODE_BOW_BETTER_CME, _bow_Rotation)		
			SetNodeRotation(_targetActor, isFemale, NINODE_BOW_FSM_CME, _bow_Rotation)
		Elseif callback == CALLBACK_CROSSBOW_POSX || callback == CALLBACK_CROSSBOW_POSY || callback == CALLBACK_CROSSBOW_POSZ
			If callback == CALLBACK_CROSSBOW_POSX
				_crossbow_Position[0] = value
			ElseIf callback == CALLBACK_CROSSBOW_POSY
				_crossbow_Position[1] = value
			ElseIf callback == CALLBACK_CROSSBOW_POSZ
				_crossbow_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_CROSSBOW_DEFAULT_CME, _crossbow_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_CROSSBOW_CHESKO_CME, _crossbow_Position)
		Elseif callback == CALLBACK_CROSSBOW_ROTY || callback == CALLBACK_CROSSBOW_ROTP || callback == CALLBACK_CROSSBOW_ROTR
			If callback == CALLBACK_CROSSBOW_ROTY
				_crossbow_Rotation[0] = value
			ElseIf callback == CALLBACK_CROSSBOW_ROTP
				_crossbow_Rotation[1] = value
			ElseIf callback == CALLBACK_CROSSBOW_ROTR
				_crossbow_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_CROSSBOW_DEFAULT_CME, _crossbow_Rotation)		
			SetNodeRotation(_targetActor, isFemale, NINODE_CROSSBOW_CHESKO_CME, _crossbow_Rotation)
		Elseif callback == CALLBACK_QUIVER_POSX || callback == CALLBACK_QUIVER_POSY || callback == CALLBACK_QUIVER_POSZ
			If callback == CALLBACK_QUIVER_POSX
				_quiver_Position[0] = value
			ElseIf callback == CALLBACK_QUIVER_POSY
				_quiver_Position[1] = value
			ElseIf callback == CALLBACK_QUIVER_POSZ
				_quiver_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_QUIVER_DEFAULT_CME, _quiver_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_QUIVER_CHESKO_CME, _quiver_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_QUIVER_LEFTHIP_CME, _quiver_Position)
		Elseif callback == CALLBACK_QUIVER_ROTY || callback == CALLBACK_QUIVER_ROTP || callback == CALLBACK_QUIVER_ROTR
			If callback == CALLBACK_QUIVER_ROTY
				_quiver_Rotation[0] = value
			ElseIf callback == CALLBACK_QUIVER_ROTP
				_quiver_Rotation[1] = value
			ElseIf callback == CALLBACK_QUIVER_ROTR
				_quiver_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_QUIVER_DEFAULT_CME, _quiver_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_QUIVER_CHESKO_CME, _quiver_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_QUIVER_LEFTHIP_CME, _quiver_Rotation)
		Elseif callback == CALLBACK_BOLT_POSX || callback == CALLBACK_BOLT_POSY || callback == CALLBACK_BOLT_POSZ
			If callback == CALLBACK_BOLT_POSX
				_bolt_Position[0] = value
			ElseIf callback == CALLBACK_BOLT_POSY
				_bolt_Position[1] = value
			ElseIf callback == CALLBACK_BOLT_POSZ
				_bolt_Position[2] = value
			EndIf
			SetNodePosition(_targetActor, isFemale, NINODE_BOLT_DEFAULT_CME, _bolt_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOLT_CHESKO_CME, _bolt_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOLT_LEFTHIP_CME, _bolt_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOLT_XP32_CME, _bolt_Position)
			SetNodePosition(_targetActor, isFemale, NINODE_BOLT_ABQ_CME, _bolt_Position)
		Elseif callback == CALLBACK_BOLT_ROTY || callback == CALLBACK_BOLT_ROTP || callback == CALLBACK_BOLT_ROTR
			If callback == CALLBACK_BOLT_ROTY
				_bolt_Rotation[0] = value
			ElseIf callback == CALLBACK_BOLT_ROTP
				_bolt_Rotation[1] = value
			ElseIf callback == CALLBACK_BOLT_ROTR
				_bolt_Rotation[2] = value
			EndIf
			SetNodeRotation(_targetActor, isFemale, NINODE_BOLT_DEFAULT_CME, _bolt_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_BOLT_CHESKO_CME, _bolt_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_BOLT_LEFTHIP_CME, _bolt_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_BOLT_XP32_CME, _bolt_Rotation)
			SetNodeRotation(_targetActor, isFemale, NINODE_BOLT_ABQ_CME, _bolt_Rotation)		
		Endif
	Endif
EndEvent

Function SetNodeScale(Actor akActor, bool isFemale, string nodeName, float value, string modkey = "RMWPlugin")
	XPMSELib.SetNodeScale(akActor, isFemale, nodeName, value, modkey)
EndFunction

float Function GetNodeScale(Actor akActor, bool isFemale, string nodeName, string modkey = "RMWPlugin")
	return NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function SetNodePosition(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMWPlugin")
	XPMSELib.SetNodePosition(akActor, isFemale, nodeName, values, modkey)
EndFunction

float[] Function GetNodePosition(Actor akActor, bool isFemale, string nodeName, string modkey = "RMWPlugin")
	return NiOverride.GetNodeTransformPosition(akActor, false, isFemale, nodeName, modkey)
EndFunction

Function SetNodeRotation(Actor akActor, bool isFemale, string nodeName, float[] values, string modkey = "RMWPlugin")
	XPMSELib.SetNodeRotation(akActor, isFemale, nodeName, values, modkey)
EndFunction

float[] Function GetNodeRotation(Actor akActor, bool isFemale, string nodeName, string modkey = "RMWPlugin")
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

Function SetNodeHidden(Actor akActor, bool isFemale, string nodeName, float value, string modkey = "RMWHide")
	XPMSELib.SetNodeHidden(akActor, isFemale, nodeName, value as bool, modkey)
EndFunction

float Function isNodeHidden(Actor akActor, bool isFemale, string nodeName, string modkey = "RMWHide")
	return ((NiOverride.GetNodeTransformScale(akActor, false, isFemale, nodeName, modkey)) < 0.01) as float
EndFunction