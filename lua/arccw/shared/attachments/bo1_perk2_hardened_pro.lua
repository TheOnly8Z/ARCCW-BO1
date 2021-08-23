att.PrintName = "Hardened Pro"
att.Icon = Material("entities/acwatt_bo1_perk2_hardened_pro.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.hardened.pro"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {"bo1.perk.pro"}

att.Slot = "bo1_perk2"
att.NoRandom = true
att.NotForNPCS = true

att.AutoStats = true
att.Mult_Penetration = 5

att.BO1_ProPerk = "bo1_perk2_hardened_pro"
att.Hook_Compatible = ArcCW.BO1_ProPerkCheck

hook.Add("PostEntityTakeDamage", "ArcCW_BO1_Hardened", function(ent, dmg, took)
    if not took or not ent:IsPlayer() or not dmg:GetAttacker():IsPlayer() then return end
    local wep = dmg:GetInflictor():IsWeapon() and dmg:GetInflictor() or dmg:GetAttacker():GetActiveWeapon()
    if not IsValid(wep) or not wep.ArcCW or wep:GetBuff_Override("BO1_ProPerk") ~= "bo1_perk2_hardened_pro" then return end
    ent:SetArmor(math.Round(ent:Armor() - dmg:GetDamage() * 0.5))
end)