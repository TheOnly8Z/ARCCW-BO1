att.PrintName = "Redfield (BO1)"
att.Icon = Material("entities/acwatt_optic_bo1_l96.png", "mips smooth")
att.Description = "High Power Scope for the L115A1 AWM. Magnification of 4-8x"

att.SortOrder = 150

att.Desc_Pros = {
    "+ Precision sight picture",
}
att.Desc_Cons = {
    "- Visible glint"
}
att.AutoStats = true
att.Slot = "bo1_awm"

att.Model = "models/weapons/arccw/atts/bo1_redfield.mdl"

att.DroppedModel = "models/weapons/arccw/atts/bo1_redfield.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 8, -4.6),
        Ang = Angle(0, 0, 0),
        Magnification = 1.6,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 4,
        IgnoreExtra = true
    },
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/psg1_scope.png")
att.HolosightNoFlare = true
att.HolosightSize = 10
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/bo1_redfield_hsp.mdl"
att.Colorable = true

att.HolosightBlackbox = true
att.HolosightMagnification = 12
att.HolosightMagnificationMin = 8
att.HolosightMagnificationMax = 12

att.Mult_SightTime = 1.125