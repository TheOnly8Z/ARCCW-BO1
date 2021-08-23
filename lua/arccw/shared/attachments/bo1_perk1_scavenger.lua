att.PrintName = "Scavenger"
att.Icon = Material("entities/acwatt_bo1_perk1_scavenger.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.scavenger",
}
att.Desc_Cons = {
}

att.Slot = "bo1_perk1"
att.NoRandom = true
att.NotForNPCS = true

att.BO1_Scavenger = true

local function drop(ent, attacker)
    local wep = IsValid(attacker) and attacker:IsPlayer() and attacker:GetActiveWeapon()
    if not IsValid(wep) or not wep.ArcCW or not wep:GetBuff_Override("BO1_Scavenger") then return end

    local mult = ent:IsPlayer() and 3 or (math.Clamp(ent:GetMaxHealth() / 50, 0.1, 6))
    if wep:GetBuff_Override("BO1_ProPerk") == "bo1_perk1_scavenger_pro" then mult = mult * 2 end

    local box = ents.Create("arccw_ammo_bo1_drop")
    box.AmmoType = wep.Primary.Ammo
    box.AmmoCount = math.max(1, math.Round(math.log(wep:GetCapacity(), 2) * mult))
    box:SetPos(ent:WorldSpaceCenter())
    box:SetAngles(AngleRand(-360, 360))
    box:Spawn()
    box:SetOwner(attacker)
    local phys = box:GetPhysicsObject()
    phys:ApplyForceCenter(Vector(math.random() * 100 - 50, math.random() * 100 - 50, 200))
    phys:SetAngleVelocityInstantaneous(VectorRand() * 360)
    SafeRemoveEntityDelayed(box, 30)
end
hook.Add("OnNPCKilled", "ArcCW_BO1_Scavenger", drop)
hook.Add("PlayerDeath", "ArcCW_BO1_Scavenger", function(ply, infl, atk) drop(ply, atk) end)