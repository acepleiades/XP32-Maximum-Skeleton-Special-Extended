ScriptName XPMSEWeaponApplyEffect extends ActiveMagicEffect

Spell Property XPMSEWeaponAbility Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.AddSpell(XPMSEWeaponAbility, false)
EndEvent
