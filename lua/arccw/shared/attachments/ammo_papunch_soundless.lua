att.PrintName = "Pack-A-Punch (Alt)"
att.Icon = Material("entities/acwatt_ammo_papunch.png", "mips smooth")
att.Description = "Bullets or Shells infused with Element 115 which perform better than base weapons with no drawbacks. The magazine capacity is also altered. This one doesn't have the sound or the camo."
att.Desc_Pros = {
    "+ Extended Magazine."
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ammo_pap"}

att.AdminOnly = true

att.MagExtender = true
att.ActivateElements = {"extendedmag"}

att.SortOrder = 99

att.Mult_Damage = 2.5
att.Mult_DamageMin = 2.5
att.Mult_Penetration = 2.5

att.Override_MuzzleEffect = "muzzleflash_suppressed"