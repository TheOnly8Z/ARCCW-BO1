att.PrintName = "Flak Jacket Pro"
att.Icon = Material("entities/acwatt_bo1_perk1_flakjacket_pro.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "bo1.perk.flakjacket.pro.1",
    "bo1.perk.flakjacket.pro.2",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {"bo1.perk.pro"}

att.Slot = "bo1_perk1"
att.NoRandom = true
att.NotForNPCS = true

att.BO1_FlakJacket = true
att.BO1_ProPerk = "bo1_perk1_flakjacket_pro"
att.Hook_Compatible = ArcCW.BO1_ProPerkCheck
