att.PrintName = "Tac-Light Foregrip (BO2)"
att.Icon = Material("entities/acwatt_bo2_foregrip.png", "mips smooth")
att.Description = "Vertical foregrip that goes under the weapon's handguard. Includes a toggleable tactical weapon light."

att.SortOrder = 97

att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.light"
}
att.BO1_UBFG = true

att.AutoStats = true

att.Mult_Recoil = 0.85

att.Mult_SightTime = 0.75
att.Mult_HipDispersion = 1.2
att.Mult_SpeedMult = 0.95

att.GivesFlags = {"bo2_foregrip"}
att.Slot = {"foregrip", "bo1_uniforegrip"}
att.ModelOffset = Vector(-16, -2.625, 3.6)

att.LHIK = true

att.Model = "models/weapons/arccw/atts/bo2_foregrip.mdl"

att.Override_HoldtypeActive = "smg"
att.Override_HoldtypeSights = "smg"

att.Flashlight = false
att.FlashlightFOV = 50
att.FlashlightFarZ = 512 -- how far it goes
att.FlashlightNearZ = 1 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 255, 255)
att.FlashlightTexture = "effects/flashlight001"
att.FlashlightBrightness = 4
att.FlashlightBone = "1"

att.ToggleStats = {
    {
        PrintName = "Off",
        Flashlight = false,
    },
    {
        PrintName = "High",
        Flashlight = true
    },
}

att.DrawFunc = function(wep, element)
    if table.HasValue(wep:GetWeaponFlags(), "integral") then
        element.Model:SetBodygroup(0,0)
    else
        element.Model:SetBodygroup(0,1)
    end
end