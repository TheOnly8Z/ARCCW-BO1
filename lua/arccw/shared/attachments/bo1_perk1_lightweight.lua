att.PrintName = "Lightweight"
att.Icon = Material("entities/acwatt_bo1_perk1_lightweight.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.lightweight",
}
att.Desc_Cons = {
}

att.Slot = "bo1_perk1"
att.NoRandom = true
att.NotForNPCS = true

att.BO1_LightWeight = true

hook.Add("Move", "ArcCW_BO1_LightWeight", function(ply, mv)
    local wep = IsValid(ply) and ply:GetActiveWeapon()
    if not IsValid(wep) or not wep.ArcCW or not wep:GetBuff_Override("BO1_LightWeight") then return end

    local max = ply:GetMaxSpeed()
    local s = ply.ArcCW_LastTickSpeedMult or 1
    mv:SetMaxSpeed(max * s * 1.07)
    mv:SetMaxClientSpeed(max * s * 1.07)
end)