AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

	SWEP.magType = "srMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SVT-40"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IconLetter = "w"
	killicon.Add( "khr_svt40", "icons/killicons/khr_svt40", Color(255, 80, 0, 150))
	SWEP.SelectIcon = surface.GetTextureID("icons/killicons/khr_svt40")
	
	SWEP.OverallMouseSens = .7
	SWEP.MuzzleEffect = "muzzleflash_g3"
	SWEP.PosBasedMuz = true
	SWEP.NoDistance = true
	SWEP.CrosshairEnabled = true
	SWEP.ShellScale = 0.42
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -0, y = 0, z = 0}
	SWEP.SightWithRail = true
	SWEP.DisableSprintViewSimulation = false
	SWEP.SnapToIdlePostReload = true
	
	SWEP.BoltBone = "Bolt"
	SWEP.BoltBonePositionRecoverySpeed = 40
	SWEP.BoltShootOffset = Vector(-1, 0, 0)
	
	SWEP.IronsightPos = Vector(-2.464, -1, 0.949)
	SWEP.IronsightAng = Vector(0.04, 0.02, 0)
	
	SWEP.SprintPos = Vector(1.96, 0, -2.441)
	SWEP.SprintAng = Vector(-10.554, 24.622, -10.554)
	
	SWEP.FAS2AimpointPos = Vector(-2.442, -2, .46)
	SWEP.FAS2AimpointAng = Vector(-1.2, 0, 0)
	
	SWEP.CSGOACOGPos = Vector(-2.45, -3.5, .178)
	SWEP.CSGOACOGAng = Vector(0.1, 0, 0)
	
	SWEP.NXSPos = Vector(-2.45, -3, .224)
	SWEP.NXSAng = Vector(0.1, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.442, -3, .262)
	SWEP.ShortDotAng = Vector(0.1, 0, 0)
	
	SWEP.CustomizePos = Vector(3.72, -4.02, -3.08)
	SWEP.CustomizeAng = Vector(23.92, 16.884, 16.884)
	
	SWEP.AlternativePos = Vector(0.519, -2, -0.76)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.CustomizationMenuScale = 0.026
	SWEP.ViewModelMovementScale = 1
	
	SWEP.AttachmentModelsVM = {
	
	["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "body", rel = "", pos = Vector(0.045, -6.18, -1.359), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_pbs1"] = { type = "Model", model = "models/cw2/attachments/pbs1.mdl", bone = "body", rel = "", pos = Vector(0, 27.531, -0.661), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_nightforce_nxs"] = { type = "Model", model = "models/cw2/attachments/l96_scope.mdl", bone = "body", rel = "", pos = Vector(-0.06, -1.29, 2.14), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint.mdl", bone = "body", rel = "", pos = Vector(0.029, 1, 0.75), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_rail"] = { type = "Model", model = "models/cw2/attachments/pistolrail.mdl", bone = "body", rel = "", pos = Vector(0, -2, -0.719), angle = Angle(0, 90, 0), size = Vector(0.125, 0.125, 0.125), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "body", rel = "", pos = Vector(-0.22, -5.442, -2.368), angle = Angle(0, -90, 0), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

	SWEP.ACOGAxisAlign = {right = 0.2, up = 0, forward = 0}
	SWEP.NXSAlign = {right = -.05, up = .01, forward = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = -.15, up = 0, forward = 0}
	
end

SWEP.MuzzleVelocity = 865 -- in meter/s

SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false


SWEP.Attachments = {[2] = {header = "Optic", offset = {600, -400},  atts = {"md_fas2_aimpoint", "md_schmidt_shortdot", "md_uecw_csgo_acog", "md_nightforce_nxs"}},
[1] = {header = "Barrel", offset = {-600, -300},  atts = {"md_pbs1"}}}

SWEP.Animations = {fire = {"shoot","shoot2"},
	reload = "reload_empty",
	idle = "idle",
	draw = "first_draw"}
	
SWEP.Sounds = {	first_draw = {[1] = {time = .8, sound = "SVT.Boltback"},
[2] = {time = 1.1, sound = "SVT.Boltforward"}},

	reload_empty = {[1] = {time = .8, sound = "SVT.Clipout"},
	[2] = {time = 2, sound = "SVT.Clipin"},
	[3] = {time = 3.2, sound = "SVT.Cliptap"},
	[4] = {time = 4, sound = "SVT.Boltback"},
	[5] = {time = 4.3, sound = "SVT.Boltforward"}}}

SWEP.HoldBoltWhileEmpty = false
SWEP.DontHoldWhenReloading = true
SWEP.LuaVMRecoilAxisMod = {vert = .5, hor = 1, roll = .25, forward = .5, pitch = .5}

SWEP.SpeedDec = 40

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.OverallMouseSens = .8
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "Garnet CW 2.0"

SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 75
SWEP.AimViewModelFOV = 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/khrcw2/v_khri_svt40.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireDelay = 60/360
SWEP.FireSound = "SVT.Fire"
SWEP.FireSoundSuppressed = "SVT.SupFire"
SWEP.Recoil = 3.4

SWEP.HipSpread = 0.045SWEP.AimSpread = 0.003SWEP.VelocitySensitivity = 4SWEP.MaxSpreadInc = 0.1SWEP.SpreadPerShot = 0.07SWEP.SpreadCooldown = 1SWEP.Shots = 1SWEP.Damage = 75SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 5.5
SWEP.ReloadTime_Empty = 5.5
SWEP.ReloadHalt = 5.5
SWEP.ReloadHalt_Empty = 5.5