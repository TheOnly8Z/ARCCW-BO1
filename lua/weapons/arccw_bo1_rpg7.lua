SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Black Ops" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "RPG-7"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "A Russian portable, reusable, unguided, shoulder-launched, anti-tank rocket-propelled grenade launcher. The ruggedness, simplicity, low cost, and effectiveness of the RPG-7 has made it the most widely used anti-armor weapon in the world."
SWEP.Trivia_Manufacturer = "Bazalt"
SWEP.Trivia_Calibre = "85x40mm RPG"
SWEP.Trivia_Mechanism = "Rocket Propelled Grenade"
SWEP.Trivia_Country = "USSR"
SWEP.Trivia_Year = 1958

SWEP.Slot = 4

SWEP.UseHands = true
SWEP.NoHideLeftHandInCustomization = true

SWEP.ViewModel = "models/weapons/arccw/c_bo1_rpg7.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(2, 1.5, -7.25),
    ang        =    Angle(-6, -2, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale   =  1
}
SWEP.WorldModel = "models/weapons/arccw/c_bo1_rpg7.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "0000000000"

SWEP.Damage = 30
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.Range = 350 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = "arccw_bo1_rpgrocket" -- entity to fire, if any
SWEP.MuzzleVelocity = 500 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 3

SWEP.Recoil = 2
SWEP.RecoilSide = 2
SWEP.MaxRecoilBlowback = 2
SWEP.RecoilPunch = 2
SWEP.RecoilPunchBackMax = 2

SWEP.Delay = 60 / 300 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "ROCKET",
        Mode = 1,
    },
    {
        Mode = 0
    },
}

SWEP.NPCWeaponType = {"weapon_rpg"}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "RPG_Rocket" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "ArcCW_BO1.RPG_Fire"
SWEP.ShootSoundSilenced = "ArcCW_BO1.M16_Sil"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = nil -- which attachment to put the case effect on
SWEP.ProceduralViewBobAttachment = 2
SWEP.CamAttachment = 2

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(0, 3, -0),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 0.25)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(15, 5, -2)
SWEP.CustomizeAng = Angle(15, 40, 30)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["papname1"] = {
        NamePriority = 10,
        NameChange = "Pulya",
    },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Ammo Type",
        Slot = {"ammo_pap_launchers"},
        ExcludeFlags = {"doom_ee"},
    }, --3
    {
        PrintName = "Perk",
        Slot = {"bo1_perk", "bo1_perk_doomrpg"},
    }, --4
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(3, -0.75, 2.15), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wpos = Vector(7, 1.6, -4),
            wang = Angle(-10, 0, 180)
        },
        ExcludeFlags = {"doom_ee"},
    }, --5
}

SWEP.Hook_NameChange = function(wep, name)
    local pap = wep:GetBuff_Override("PackAPunch")
    local doomshotgun = wep:GetBuff_Override("DOOM_EE")

    local gunname = wep.PrintName

    if doomshotgun then
        gunname = "Rocket Launcher"
    end

    if pap then
        gunname = "Rocket Propelled Grievance"
    end

    return gunname
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local papcamo = wep.Attachments[1].Installed == "ammo_pap_launcher"

    if papcamo then
        vm:SetSkin(2)
    end

    if wep:Clip1() == 0 then vm:SetBodygroup(1,1) end

    if wep:GetBuff_Override("DOOM_EE") then
        vm:SetBodygroup(2,1)
        wep.ActivePos = Vector(-0.5, 1, 0.25)
        wep.ActiveAng = Angle(0, 0, 0)
    else
        wep.ActivePos = Vector(0, 1, 0.25)
        wep.ActiveAng = Angle(0, 0, 0)
    end
end

SWEP.Hook_ShouldNotFire = function(wep)
    if wep:GetBuff_Override("DOOM_EE") then
        return false
    end
    if wep:GetState() != ArcCW.STATE_SIGHTS then
        return true
    end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)

    if wep:GetBuff_Override("DOOM_EE") then
        if anim == "idle" then
            return "idle_doom"
        end
        if anim == "fire" then
            return "fire_doom"
        end
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 35,
    },

    ["idle_doom"] = {
        Source = "idle_ads",
        Time = 1 / 35,
    },
    ["fire_doom"] = {
        Source = {
            "fire",
        },
        Time = 15 / 35,
    },
    ["draw"] = {
        Source = "draw_out",
        Time = 25 / 35,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
    },
    ["holster"] = {
        Source = "holster_out",
        Time = 25 / 35,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
    },
    ["ready"] = {
        Source = "draw_out",
        Time = 25 / 35,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
    },
    ["fire"] = {
        Source = {
            "fire_out",
        },
        Time = 15 / 35,
    },
    ["idle_sight"] = {
        Source = {"idle_ads"},
        Time = 1 / 35,
    },
    ["fire_sight"] = {
        Source = {
            "fire",
        },
        Time = 15 / 35,
    },
    ["reload"] = {
        Source = "reload_out",
        Time = 93 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_CROSSBOW,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
        MinProgress = 0.1,
        SoundTable = {
            {s = "ArcCW_BO1.RPG_Slide", t = 25 / 30},
            {s = "ArcCW_BO1.RPG_Futz", t = 33 / 30},
            {s = "ArcCW_BO1.RPG_Latch", t = 40 / 30},
        },
    },
    ["reload_sight"] = {
        Source = "reload",
        Time = 93 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_CROSSBOW,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.2,
        MinProgress = 0.1,
        SoundTable = {
            {s = "ArcCW_BO1.RPG_Slide", t = 25 / 30},
            {s = "ArcCW_BO1.RPG_Futz", t = 33 / 30},
            {s = "ArcCW_BO1.RPG_Latch", t = 40 / 30},
        },
    },
    ["enter_sprint"] = {
        Source = "sprint_in_out",
        Time = 10 / 30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop_out",
        Time = 30 / 30
    },
    ["exit_sprint"] = {
        Source = "sprint_out_out",
        Time = 10 / 30
    },
}