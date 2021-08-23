att.PrintName = "Scavenger Pro"
att.Icon = Material("entities/acwatt_bo1_perk1_scavenger.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.scavenger",
    "bo1.perk.scavenger.pro",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {"bo1.perk.pro"}

att.Slot = "bo1_perk1"
att.NoRandom = true
att.NotForNPCS = true

att.BO1_Scavenger = true
att.BO1_ProPerk = "bo1_perk1_scavenger_pro"

att.Hook_Compatible = ArcCW.BO1_ProPerkCheck