att.PrintName = "Vulture Aid"
att.Icon = Material("entities/acwatt_perk_scavenger.png", "mips smooth")
att.Description = "A portion of your magazine is replenished to your reserve when hitting a foe."
att.Desc_Pros = {
    "+ 50% chance of recovering ammunition a magazine when hitting an enemy.",
}
att.Desc_Cons = {
    "- Does not replenish Underbarrel Grenade Launchers.",
    "- Does not replenish Underbarrel Shotguns.",
}
att.AutoStats = true
att.Slot = {"bo1_perk"}

att.Hook_BulletHit = function(wep, data)

    if CLIENT then return end

    local ent = data.tr.Entity

    if math.Rand(0, 100) > 50 then return end

    local mag = wep:Clip1()

    local scav = mag / 3
    if mag > 200 then
        scav = mag / 5
    end


    if ent then
        if wep.Owner:IsNPC() then
            wep:SetClip1(mag + 1)
            return
        end

        if ent.Health and ent:Health() > 0 then
            wep.Owner:GiveAmmo(scav, wep.Primary.Ammo, true)
        end
    end
end

att.AttachSound = "weapons/arccw/bo1_perks/perk_vulture.wav"