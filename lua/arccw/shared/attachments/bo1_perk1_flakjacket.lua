att.PrintName = "Flak Jacket"
att.Icon = Material("entities/acwatt_bo1_perk1_flakjacket.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.flakjacket",
}
att.Desc_Cons = {
}

att.Slot = "bo1_perk1"
att.NoRandom = true
att.NotForNPCS = true

att.BO1_FlakJacket = true

hook.Add("EntityTakeDamage", "ArcCW_FlakJacket", function(ply, dmg)
    local wep = IsValid(ply) and ply:IsPlayer() and ply:GetActiveWeapon()
    if not IsValid(wep) or not wep.ArcCW or not wep:GetBuff_Override("BO1_FlakJacket") then return end
    local pro = wep:GetBuff_Override("BO1_ProPerk") == "bo1_perk1_flakjacket_pro"
    if dmg:IsExplosionDamage() then
        dmg:ScaleDamage(pro and 0.25 or 0.5)
    elseif pro and dmg:IsDamageType(DMG_BURN) then
        dmg:ScaleDamage(0.05)
    end
end)