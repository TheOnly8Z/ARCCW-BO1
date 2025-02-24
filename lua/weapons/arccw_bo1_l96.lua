SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Black Ops" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "L115A1"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "A high-caliber sniper rifle designed for cold-weather police and military units. Known for holding the record of the longest range sniper shot in history."
SWEP.Trivia_Manufacturer = "Accuracy International"
SWEP.Trivia_Calibre = ".338 Lapua"
SWEP.Trivia_Mechanism = "Bolt-Action"
SWEP.Trivia_Country = "United Kingdom"
SWEP.Trivia_Year = 1995

SWEP.Slot = 3

SWEP.ViewModel = "models/weapons/arccw/c_bo1_awm.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-6, 4.75, -7),
    ang        =    Angle(-6, -2.5, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}
SWEP.WorldModel = "models/weapons/arccw/c_bo1_awm.mdl"
SWEP.ViewModelFOV = 60

SWEP.Damage = 120
SWEP.DamageMin = 110 -- damage done at maximum range
SWEP.Range = 2000 -- in METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 850 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 5

SWEP.Recoil = 4
SWEP.RecoilSide = 2

SWEP.Delay = 60 / 45 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "BOLT",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_ar2",
    "weapon_crossbow",
}
SWEP.NPCWeight = 100

SWEP.ManualAction = true

SWEP.AccuracyMOA = 0.1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 800 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "hs338" -- the magazine pool this gun draws from

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_BO1.L96_Shoot"
SWEP.ShootSoundSilenced = "ArcCW_BO1.M16_Sil"
SWEP.DistantShootSound = {"weapons/arccw/bo1_l96/ringoff_00.wav", "weapons/arccw/bo1_l96/ringoff_01.wav"}

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 1
SWEP.CamAttachment = 4

SWEP.SightTime = 0.45
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.3, -5, 2.35),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(-1, 3, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-1, 3, 1)
SWEP.SprintAng = Angle(0, 0, 0)

/*
SWEP.SprintPos = Vector(4, 2, 2)
SWEP.SprintAng = Angle(-15, 30.016, 0)
*/

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.CustomizePos = Vector(13, 0, -2)
SWEP.CustomizeAng = Angle(15, 40, 20)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 50

SWEP.AttachmentElements = {
    ["bo1_bipod"] = {
        VMBodygroups = {
            {ind = 2, bg = 1}
        }
    },
    ["extendedmag"] = {
        VMBodygroups = {
            {ind = 1, bg = 1}
        },
    },
    ["ammo_papunch"] = {
        NamePriority = 10,
        NameChange = "L115 Isolator",
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/item/bo1_ak_rail.mdl",
                Bone = "tag_weapon",
                Scale = Vector(0.35, 0.35, 0.375),
                Offset = {
                    pos = Vector(5.75, 0.275, 2.5),
                    ang = Angle(0, 90, 0),
                }
            }
        },
        ExcludeFlags = {"susat_norail"},
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    { --1
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_sniper", "optic"}, -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(5, 0, 3.65),
            vang = Angle(0, 0, 0),
            wpos = Vector(7.5, 0.5, -6.5),
            wang = Angle(167.5, 180, 0)
        },
        MergeSlots = {2},
        InstalledEles = {"mount"},
    },
    { --2
        Hidden = true,
        Slot = "bo1_awm",
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0.5, 0, 0),
        InstalledEles = {"l96_scope"},
        Installed = "optic_bo1_l96"
    },
    { --3
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        VMScale = Vector(2, 1.5, 1.5),
        WMScale = Vector(2, 1.5, 1.5),
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(38.5, 0, 2.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
    { --4
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(16, 0, 0.75),
            vang = Angle(0, 0, 0),
            wpos = Vector(20, 0.602, -6.5),
            wang = Angle(-15, 0, 180)
        },
        MergeSlots = {5,6},
    },
    { --5
        Hidden = true,
        Slot = {"bipod"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18, 0, 1),
            vang = Angle(0, 0, 0),
            wpos = Vector(25, 0.602, -7.75),
            wang = Angle(-15, 0, 180)
        },
    },
    { --6
        Hidden = true,
        Slot = {"bo1_bipod"},
        Installed = "bo1_bipod_integral"
    },
    { --7
        PrintName = "Tactical",
        Slot = {"bo1_tacprimary"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(16, -0.8, 1.5),
            vang = Angle(0, 0, 90),
            wpos = Vector(10.25, 1, -4.75),
            wang = Angle(-12, 0, -180)
        },
    },
    { --8
        PrintName = "Ammo Type",
        Slot = {"ammo_pap"}
    },
    { --9
        PrintName = "Perk",
        Slot = {"bo1_perk"},
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -0.8, 1.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(10.25, 1, -4.75),
            wang = Angle(-12, 0, -180)
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local papcamo = wep.Attachments[8].Installed == "ammo_papunch"

    if papcamo then
        return vm:SetSkin(2)
    end
end

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCapacity() == wep.ExtendedClipSize then
        if anim == "reload" then
            return "reload_ext"
        elseif anim == "reload_empty" then
            return "reload_empty_ext"
        end
    else return end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1.25,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.75,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "first_draw",
        Time = 2,
        SoundTable = {
            {s = "ArcCW_BO1.L96_BoltUp", t = 0.3},
            {s = "ArcCW_BO1.L96_BoltBack", t = 0.5},
            {s = "ArcCW_BO1.L96_BoltFwd", t = 1},
            {s = "ArcCW_BO1.L96_BoltDown", t = 1.2},
        },
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 6 / 30,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 7 / 30,
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 35 / 30, -- 45 / 30 ; 30 / 30
        ShellEjectAt = 0.5,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
        SoundTable = {
            {s = "ArcCW_BO1.L96_BoltUp", t = 6 / 30}, -- 9 / 30 ; 6 / 30
            {s = "ArcCW_BO1.L96_BoltBack", t = 10 / 30}, -- 15 / 30 ; 10 / 30
            {s = "ArcCW_BO1.L96_BoltFwd", t = 20 / 30}, -- 30 / 30 ; 20 / 30
            {s = "ArcCW_BO1.L96_BoltDown", t = 24 / 30}, -- 36 / 30 ; 24 / 30
        },
    },
    ["cycle_iron"] = {
        Source = "cycle_ads",
        Time = 35 / 30, -- 45 / 30 ; 30 / 30
        ShellEjectAt = 0.5,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
        SoundTable = {
            {s = "ArcCW_BO1.L96_BoltUp", t = 6 / 30}, -- 9 / 30 ; 6 / 30
            {s = "ArcCW_BO1.L96_BoltBack", t = 10 / 30}, -- 15 / 30 ; 10 / 30
            {s = "ArcCW_BO1.L96_BoltFwd", t = 20 / 30}, -- 30 / 30 ; 20 / 30
            {s = "ArcCW_BO1.L96_BoltDown", t = 24 / 30}, -- 36 / 30 ; 24 / 30
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 120 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {33, 55},
        FrameRate = 30,
        SoundTable = {
            {s = "ArcCW_BO1.L96_ClipOut", t = 27 / 30},
            {s = "ArcCW_BO1.L96_ClipIn", t = 88 / 30},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 173 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {33, 55, 88},
        FrameRate = 30,
        SoundTable = {
            {s = "ArcCW_BO1.L96_BoltUp", t = 9 / 30},
            {s = "ArcCW_BO1.L96_BoltBack", t = 13 / 30},
            {s = "ArcCW_BO1.L96_ClipOut", t = 60 / 30},
            {s = "ArcCW_BO1.L96_ClipIn", t = 121 / 30},
            {s = "ArcCW_BO1.L96_BoltFwd", t = 155 / 30},
            {s = "ArcCW_BO1.L96_BoltDown", t = 159 / 30},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_ext"] = {
        Source = "reload_ext",
        Time = 120 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {33, 55},
        FrameRate = 30,
        SoundTable = {
            {s = "ArcCW_BO1.L96_ClipOut", t = 27 / 30},
            {s = "ArcCW_BO1.L96_ClipIn", t = 88 / 30},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_ext"] = {
        Source = "reload_empty_ext",
        Time = 173 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {33, 55, 88},
        FrameRate = 30,
        SoundTable = {
            {s = "ArcCW_BO1.L96_BoltUp", t = 9 / 30},
            {s = "ArcCW_BO1.L96_BoltBack", t = 13 / 30},
            {s = "ArcCW_BO1.L96_ClipOut", t = 60 / 30},
            {s = "ArcCW_BO1.L96_ClipIn", t = 121 / 30},
            {s = "ArcCW_BO1.L96_BoltFwd", t = 155 / 30},
            {s = "ArcCW_BO1.L96_BoltDown", t = 159 / 30},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 10 / 30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 30 / 40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 10 / 30
    },
}