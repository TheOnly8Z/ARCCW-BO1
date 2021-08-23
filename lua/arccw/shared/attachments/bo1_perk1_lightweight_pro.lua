att.PrintName = "Lightweight Pro"
att.Icon = Material("entities/acwatt_bo1_perk1_lightweight_pro.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.lightweight",
    "bo1.perk.lightweight.pro",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {"bo1.perk.pro"}

att.Slot = "bo1_perk1"
att.NoRandom = true
att.NotForNPCS = true

att.BO1_LightWeight = true
att.BO1_ProPerk = "bo1_perk1_lightweight_pro"
att.Hook_Compatible = ArcCW.BO1_ProPerkCheck

hook.Add("GetFallDamage", "ArcCW_BO1_Lightweight", function(ply, speed)
    local wep = IsValid(ply) and ply:GetActiveWeapon()
    if not IsValid(wep) or not wep.ArcCW or wep:GetBuff_Override("BO1_ProPerk") ~= "bo1_perk1_lightweight_pro" then return end
    ply:EmitSound("physics/body/body_medium_impact_hard" .. math.random(1, 6) .. ".wav", 70)
    ply:EmitSound("physics/cardboard/cardboard_box_break1.wav", 70, 120)
    return 0
end)