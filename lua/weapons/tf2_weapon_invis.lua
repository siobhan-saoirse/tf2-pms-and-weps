if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/c_models/c_spy_watch/parts/c_spy_watch" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
end

SWEP.PrintName = "Invis Watch"
SWEP.Category = "Team Fortress 2"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

 
SWEP.ViewModel = "models/weapons/v_models/v_watch_spy.mdl"
SWEP.WorldModel = ""
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 2
SWEP.Slot = 4
SWEP.SlotPos = 0

SWEP.UseHands = false
SWEP.HoldType = "knife"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "tf2_weaponbase"

SWEP.WalkSpeed = 320
SWEP.RunSpeed = 428

SWEP.CloakCostTimer = CurTime()
SWEP.Cloak = 0
SWEP.CloakTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "player/spy_cloak.wav" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 100
SWEP.Primary.MaxAmmo = 100
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "Thumper"
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Delay = 1

SWEP.Secondary.Sound = Sound( "player/spy_uncloak.wav" )
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
-- Initialize the weapon as a TF item
tf_items.InitializeAsBaseItem(SWEP)
SWEP.Secondary.Delay = 2

function SWEP:Initialize()
self:SetWeaponHoldType( self.HoldType )
self.Idle = 0
self.IdleTimer = CurTime() + 1
end

function SWEP:Deploy()
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_VM_HOLSTER )
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.CloakCostTimer = CurTime()
self.Cloak = 0
self.CloakTimer = CurTime()
self.Idle = 1
self.Owner:SetWalkSpeed( self.WalkSpeed )
self.Owner:SetRunSpeed( self.RunSpeed )
self.Owner:GetViewModel():SetMaterial( "" )
self.Owner:SetMaterial( "" )
self.Owner:DrawShadow( true )
self.Weapon:SetNWBool( "CloakNormalMaterial", true )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", false )
return true
end

function SWEP:Holster()
self.CloakCostTimer = CurTime()
self.Cloak = 0
self.CloakTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Owner:SetWalkSpeed( 200 )
self.Owner:SetRunSpeed( 400 )
self.Owner:GetViewModel():SetMaterial( "" )
self.Owner:SetMaterial( "" )
self.Owner:DrawShadow( true )
self.Weapon:SetNWBool( "CloakNormalMaterial", true )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", false )
return true
end

function SWEP:PrimaryAttack()
if self.Weapon:Ammo1() <= 0 then return end
if self.CloakTimer <= CurTime() then
if self.Cloak == 0 then
self:EmitSound( self.Primary.Sound, 85, 100, 1, CHAN_STATIC )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self.Owner:GetViewModel():SetPlaybackRate(1.4)
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Cloak = 1
self.CloakTimer = CurTime() + self.Primary.Delay
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Owner:SetMaterial( "models/shadertest/predator" )
self.Owner:DrawShadow( false )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", true )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
if self.Cloak == 2 then
self:EmitSound( self.Secondary.Sound, 85, 100, 1, CHAN_STATIC )
self.Weapon:SendWeaponAnim( ACT_VM_HOLSTER )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Cloak = 3
self.CloakTimer = CurTime() + self.Secondary.Delay
self.Idle = 1
self.Owner:SetMaterial( "models/props_c17/fisheyelens" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", true )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
end
end

function SWEP:SecondaryAttack()
if self.Owner:KeyDown( IN_USE ) and self.Owner:KeyDown( IN_RELOAD ) then
if SERVER then
self.Owner:StopSound( "player/spy_laugh.wav", 95, 100, 1, CHAN_VOICE )
self.Owner:EmitSound( "player/spy_laugh.wav", 95, 100, 1, CHAN_VOICE )
end
self:SetNextSecondaryFire( CurTime() + 5 )
end
end

function SWEP:Reload()
end

function SWEP:Think()
self.WModel = self:GetNWString("WorldModel2",self.WorldModel)

		if (self.WModel) then
	self.WorldModel = "models/empty.mdl"
		end
self.PrintName = self:GetNWString("PrintName2",self.PrintName)
self.Primary.Sound = self:GetNWString("PrimarySound2",self.Primary.Sound)
self.HoldType = self:GetNWString("HoldType2",self.HoldType)
self.ItemData = self:GetNW2Var("ItemData",self.ItemData)
if self.Cloak == 1 || self.Cloak == 2 then
if self.CloakCostTimer <= CurTime() then
self:TakePrimaryAmmo( self.Primary.TakeAmmo )
self.CloakCostTimer = CurTime() + 0.1
end
if self.Weapon:Ammo1() <= 0 then
self:EmitSound( self.Secondary.Sound, 85, 100, 1, CHAN_STATIC )
self.Weapon:SendWeaponAnim( ACT_VM_HOLSTER )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Cloak = 3
self.CloakTimer = CurTime() + self.Secondary.Delay
self.Idle = 1
self.Owner:SetMaterial( "models/props_c17/fisheyelens" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", true )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
end
if self.Weapon:Ammo1() < 100 and !( self.Cloak == 2 ) and self.CloakCostTimer <= CurTime() then
self.Owner:SetAmmo( self.Weapon:Ammo1() + 1, self.Primary.Ammo )
self.CloakCostTimer = CurTime() + 0.3
end
if self.Weapon:GetNWBool( "CloakNormalMaterial", true ) then
self.Owner:GetViewModel():SetMaterial( "" )
end
if self.Weapon:GetNWBool( "CloakMaterial1", true ) then
self.Owner:GetViewModel():SetMaterial( "models/player/spy/cloak_1" )
end
if self.Weapon:GetNWBool( "CloakMaterial2", true ) then
self.Owner:GetViewModel():SetMaterial( "models/player/spy/cloak_2" )
end
if self.Weapon:GetNWBool( "CloakMaterial3", true ) then
self.Owner:GetViewModel():SetMaterial( "models/player/spy/cloak_3" )
end
if self.Cloak == 1 then
if self.CloakTimer <= CurTime() + 1 and self.CloakTimer > CurTime() + 0.5 then
self.Owner:SetMaterial( "models/player/spy/cloak_1" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", true )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
if self.CloakTimer <= CurTime() + 0.5 and self.CloakTimer > CurTime() then
self.Owner:SetMaterial( "models/player/spy/cloak_2" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", true )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
if self.CloakTimer <= CurTime() then
self.Owner:SetMaterial( "models/player/spy/cloak_3" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", true )
end
end
if self.Cloak == 3 then
if self.CloakTimer <= CurTime() + 2 and self.CloakTimer > CurTime() + 1 then
self.Owner:SetMaterial( "models/player/spy/cloak_2" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", true )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
if self.CloakTimer <= CurTime() + 1 and self.CloakTimer > CurTime() then
self.Owner:SetMaterial( "models/player/spy/cloak_1" )
self.Weapon:SetNWBool( "CloakNormalMaterial", false )
self.Weapon:SetNWBool( "CloakMaterial1", true )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
if self.CloakTimer <= CurTime() then
self.Owner:SetMaterial( "" )
self.Owner:DrawShadow( true )
self.Weapon:SetNWBool( "CloakNormalMaterial", true )
self.Weapon:SetNWBool( "CloakMaterial1", false )
self.Weapon:SetNWBool( "CloakMaterial2", false )
self.Weapon:SetNWBool( "CloakMaterial3", false )
end
end
if self.CloakTimer <= CurTime() then
if self.Cloak == 1 then
self.Cloak = 2
end
if self.Cloak == 3 then
self.Cloak = 0
end
end
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
end
self.Idle = 1
end
if self.Weapon:Ammo1() > self.Primary.MaxAmmo then
self.Owner:SetAmmo( self.Primary.MaxAmmo, self.Primary.Ammo )
end
end