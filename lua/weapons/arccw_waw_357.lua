SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - World at War" -- edit this if you like
SWEP.AdminOnly = false


SWEP.PrintName = "S&W Model 27"
SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = "Magnum revolvewr with a one hell of a kick. One was carried by US General George Patton"
SWEP.Trivia_Manufacturer = "Smith & Wesson"
SWEP.Trivia_Calibre = ".357 Magnum"
SWEP.Trivia_Mechanism = "DA"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1935
SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_waw_357.mdl"
SWEP.WorldModel = "models/weapons/arccw/W_waw_357.mdl"
SWEP.MirrorWorldModel = "models/weapons/arccw/w_waw_357.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 5, -5.25),
    ang        =    Angle(-10, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1
}
SWEP.ViewModelFOV = 60

SWEP.Damage = 65
SWEP.DamageMin = 40 -- damage done at maximum range
SWEP.Range = 100 -- in METRES
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 315 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 6

SWEP.Recoil = 1
SWEP.RecoilSide = 0.75
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 150 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "DACT",
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {
    "weapon_357",
}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 2 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 220 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 130

SWEP.ShootWhileSprint = false

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses
SWEP.MagID = "coltpython" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_WAW.357_Fire"
SWEP.ShootSoundSilenced = "ArcCW_BO2.Pistol_Sil"
SWEP.DistantShootSound = "ArcCW_WAW.357_Dist"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = nil -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 1
SWEP.CamAttachment = 3

SWEP.SightTime = 0.175

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 12

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.ShotgunReload = false

SWEP.IronSightStruct = {
    Pos = Vector(-3.555, 0, 1.8),
    Ang = Angle(0.4, 0.025, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -2, -4)
SWEP.SprintAng = Angle(25, 0, 0)

SWEP.CustomizePos = Vector(15, 1, -1.25)
SWEP.CustomizeAng = Angle(15, 40, 20)

SWEP.HolsterPos = Vector(0, -4, -5)
SWEP.HolsterAng = Angle(37.5, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["ammo_papunch"] = {
        NamePriority = 10,
        NameChange = ".357 Plus 1 K1L-u",
    },
}

SWEP.ExtraSightDist = 2

SWEP.RejectAttachments = {
}

SWEP.Attachments = {
    { --1
        PrintName = "Optic",
        Slot = {"optic", "optic_lp", "bo1_lp_optic"},
        Bone = "tag_weapon",
        VMScale = Vector(1, 1, 1),
        WMScale = Vector(1, 1, 1),
        Offset = {
            vpos = Vector(4.5, -0.025, 2.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(7.9, 2, -3.2),
            wang = Angle(-5, -2, 177.5)
        },
        ExcludeFlags = {"python_snub"}
    },
    /*
    {
        PrintName = "Barrel",
        Slot = "bo1_python_barrel",
    },
    */
    { --1
        PrintName = "Tactical",
        Slot = {"bo1_tacpistol"},
        Bone = "tag_weapon",
        VMScale = Vector(.75, .75, .75),
        WMScale = Vector(.75, .75, .75),
        Offset = {
            vpos = Vector(5.6, -0.025, 1.5),
            vang = Angle(0, 0, 0),
        },
    },
    { --2
        PrintName = "Ammo Type",
        Slot = {"ammo_pap"}
    },
    { --3
        PrintName = "Perk",
        Slot = "bo1_perk"
    },
    { --4
        PrintName = "Charms",
        Slot = "charm",
        Bone = "j_gun",
        Offset = {
            vpos = Vector(-3, -0.5, -3),
            vang = Angle(0, 0, 0),
        },
        ExcludeFlags = {"python_snub"}
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local papcamo = wep:GetBuff_Override("PackAPunch")

    if papcamo then
        return vm:SetSkin(1)
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 15 / 30,
    },
    ["holster"] = {
        Source = "holster",
        Time = 15 / 30,
    },
    ["ready"] = {
        Source = "draw",
        Time = 15 / 30,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 0.266,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 0.233,
    },
    ["reload"] = {
        Source = "reload",
        Time = 89 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
        SoundTable = {
            {s = "ArcCW_BO1.Python_Open", t = 17 / 35},
            {s = "ArcCW_BO1.Python_Empty", t = 38 / 35},
            {s = "ArcCW_BO1.Python_Load", t = 68 / 35},
            {s = "ArcCW_BO1.Python_Close", t = 83 / 35},
        },
    },
}