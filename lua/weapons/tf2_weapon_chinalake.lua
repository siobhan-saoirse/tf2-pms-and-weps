if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/w_models/w_grenadelauncher" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
killicon.Add( "tf2_weapon_grenadelauncher", "hud/dneg_image_grenlaunch", Color( 255, 255, 255, 255 ) )
killicon.Add( "tf_projectile_pipe", "hud/dneg_image_grenlaunch", Color( 255, 255, 255, 255 ) )
end

SWEP.PrintName = "China Lake Launcher"
SWEP.Category = "Team Fortress 2 Community Weapons"
SWEP.Spawnable= true 
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false


SWEP.ViewModel = "models/weapons/v_models/v_grenadelauncher_dm.mdl"
SWEP.WorldModel = "models/weapons/w_models/w_grenadelauncher_dm.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 4
SWEP.Slot = 0
SWEP.SlotPos = 0

SWEP.UseHands = true
SWEP.NoCModel = true
SWEP.HoldType = "shotgun"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "tf2_weaponbase"

SWEP.WalkSpeed = 270
SWEP.RunSpeed = 372

SWEP.Reloading = 0
SWEP.ReloadingTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()
SWEP.Recoil = 0
SWEP.RecoilTimer = CurTime()

SWEP.Primary.Sound = Sound( "Weapon_GrenadeLauncher.Single" )
SWEP.Primary.ClipSize = 4
SWEP.Primary.DefaultClip = 20
SWEP.Primary.MaxAmmo = 16
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SMG1_Grenade"
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Delay = 0.6
SWEP.Primary.Force = 1200

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
-- Initialize the weapon as a TF item
tf_items.InitializeAsBaseItem(SWEP)

function SWEP:Initialize()
self:SetWeaponHoldType( self.HoldType )
self.Idle = 0
self.IdleTimer = CurTime() + 1
end

function SWEP:DrawHUD()
if CLIENT then
local x, y
if ( self.Owner == LocalPlayer() and self.Owner:ShouldDrawLocalPlayer() ) then
local tr = util.GetPlayerTrace( self.Owner )
local trace = util.TraceLine( tr )
local coords = trace.HitPos:ToScreen()
x, y = coords.x, coords.y
else
x, y = ScrW() / 2, ScrH() / 2
end
surface.SetTexture( surface.GetTextureID( "sprites/crosshair_3" ) )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.DrawTexturedRect( x - 16, y - 16, 32, 32 )
end
end

function SWEP:Deploy()
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self.Owner:GetViewModel():SetPlaybackRate(1.4)
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Reloading = 0
self.ReloadingTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Recoil = 0
self.RecoilTimer = CurTime()
self.Owner:SetWalkSpeed( self.WalkSpeed )
self.Owner:SetRunSpeed( self.RunSpeed )
if (IsValid(self:GetOwner()) and self:GetOwner():GetSkin() == 1) then
    self:SetSkin(1)
    self:GetOwner():GetViewModel():SetSkin(1)
end
return true
end

function SWEP:Holster()
self.Reloading = 0
self.ReloadingTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Recoil = 0
self.RecoilTimer = CurTime()
self.Owner:SetWalkSpeed( 200 )
self.Owner:SetRunSpeed( 400 )
return true
end

function SWEP:PrimaryAttack()
if self.Reloading == 1 then
self.Reloading = 2
else
if !( self.Reloading == 0 ) then return end
if self.Weapon:Clip1() <= 0 and self.Weapon:Ammo1() <= 0 then
self.Weapon:EmitSound( "Weapon_Shotgun.Empty" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then
self.Weapon:EmitSound( "Weapon_Shotgun.Empty" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if self.Weapon:Clip1() <= 0 then
self:Reload()
end
if self.Weapon:Clip1() <= 0 then return end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then return end
if SERVER then
local entity = ents.Create( "tf_projectile_pipe_dm" )
entity:SetOwner( self.Owner )
if IsValid( entity ) then
local Forward = self.Owner:EyeAngles():Forward()
local Right = self.Owner:EyeAngles():Right()
local Up = self.Owner:EyeAngles():Up()
entity:SetPos( self.Owner:GetShootPos() + Forward * 8 + Right * 4 + Up * -4 )
entity:SetAngles( self.Owner:EyeAngles() )
entity:Spawn()
local phys = entity:GetPhysicsObject()
phys:SetVelocity( self.Owner:GetAimVector() * self.Primary.Force )
phys:AddAngleVelocity( Vector( math.Rand( -500, 500 ), math.Rand( -500, 500 ), math.Rand( -500, 500 ) ) )
end
end
self:EmitSound( self.Primary.Sound )
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self:TakePrimaryAmmo( self.Primary.TakeAmmo )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Recoil = 1
self.RecoilTimer = CurTime() + 0.2
self.Owner:SetViewPunchAngles( Angle( -3, 0, 0 ) )
end
end

function SWEP:SecondaryAttack()
if self.Owner:KeyDown( IN_USE ) and self.Owner:KeyDown( IN_RELOAD ) then
if SERVER then
self.Owner:StopSound( "player/demoman_laugh.wav", 95, 100, 1, CHAN_VOICE )
self.Owner:EmitSound( "player/demoman_laugh.wav", 95, 100, 1, CHAN_VOICE )
end
self:SetNextSecondaryFire( CurTime() + 5 )
end
end

function SWEP:Reload()
if self.Reloading == 0 and self.Weapon:Clip1() < self.Primary.ClipSize and self.Weapon:Ammo1() > 0 then
self.Weapon:SendWeaponAnim( ACT_RELOAD_START )
self:SetNextPrimaryFire( CurTime() + 0.7 )
self:SetNextSecondaryFire( CurTime() + 0.7 )
self.Reloading = 1
self.ReloadingTimer = CurTime() + 0.6
self.Idle = 1
end
end

function SWEP:Think()
self.WModel = self:GetNWString("WorldModel2",self.WorldModel)

		if (self:GetItemData().model_player != nil and self.WModel) then
	self.WorldModel = "models/empty.mdl"
		end
self.PrintName = self:GetNWString("PrintName2",self.PrintName)
self.Primary.Sound = self:GetNWString("PrimarySound2",self.Primary.Sound)
self.HoldType = self:GetNWString("HoldType2",self.HoldType)
self.ItemData = self:GetNW2Var("ItemData",self.ItemData)
if self.Recoil == 1 and self.RecoilTimer <= CurTime() then
self.Recoil = 0
end
if self.Recoil == 1 then
self.Owner:SetViewPunchAngles( Angle( 0.23, 0, 0 ) )
end
if self.Reloading == 1 and self.ReloadingTimer <= CurTime() and self.Weapon:Clip1() < self.Primary.ClipSize and self.Weapon:Ammo1() > 0 then
self.Weapon:SendWeaponAnim( ACT_VM_RELOAD )
if (!self.ReloadingFirst) then
    self.Owner:DoAnimationEvent(ACT_MP_RELOAD_STAND)
    self.ReloadingFirst = true
else
    self.Owner:DoAnimationEvent(ACT_MP_RELOAD_STAND_LOOP)
end
self.Weapon:SetClip1( self.Weapon:Clip1() + 1 )
self.Owner:RemoveAmmo( 1, self.Primary.Ammo, false )
self.Reloading = 1
self.ReloadingTimer = CurTime() + 0.6
self.Idle = 1
end
if self.Reloading == 1 and self.ReloadingTimer <= CurTime() and self.Weapon:Clip1() == self.Primary.ClipSize then
self.Weapon:SendWeaponAnim( ACT_RELOAD_FINISH )
self.Owner:DoAnimationEvent(ACT_MP_RELOAD_STAND_END)
self.ReloadingFirst = false
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Reloading = 0
self.ReloadingTimer = CurTime() + 0.6
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end
if self.Reloading == 1 and self.ReloadingTimer <= CurTime() and self.Weapon:Clip1() > 0 and self.Weapon:Ammo1() <= 0 then
self.Weapon:SendWeaponAnim( ACT_RELOAD_FINISH )
self.Owner:DoAnimationEvent(ACT_MP_RELOAD_STAND_END) 
self.ReloadingFirst = false
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Reloading = 0
self.ReloadingTimer = CurTime() + 0.6
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end
if self.Reloading == 2 and self.ReloadingTimer <= CurTime() then
self.Weapon:SendWeaponAnim( ACT_RELOAD_FINISH ) 
self.Owner:DoAnimationEvent(ACT_MP_RELOAD_STAND_END)
self.ReloadingFirst = false
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Reloading = 3
self.ReloadingTimer = CurTime() + 0.6
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end
if self.Reloading == 3 and self.ReloadingTimer <= CurTime() then
self.Reloading = 0
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