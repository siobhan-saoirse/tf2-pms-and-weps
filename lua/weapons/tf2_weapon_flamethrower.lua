if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/w_models/w_flamethrower" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
killicon.Add( "tf2_weapon_flamethrower", "hud/dneg_image_flamethrower", Color( 255, 255, 255, 255 ) )
end

SWEP.PrintName = "Flame Thrower"
SWEP.Category = "Team Fortress 2"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true 
SWEP.AdminOnly = false


SWEP.ViewModel = "models/weapons/v_models/v_flamethrower_pyro.mdl"
SWEP.WorldModel = "models/weapons/c_models/c_flamethrower/c_flamethrower.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 3
SWEP.Slot = 0
SWEP.SlotPos = 0

SWEP.UseHands = false
SWEP.HoldType = "rpg"
SWEP.FiresUnderwater = false
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "tf2_weaponbase"

SWEP.WalkSpeed = 300
SWEP.RunSpeed = 400

SWEP.Sound = 0
SWEP.SoundTimer = CurTime()
SWEP.Attack = 0
SWEP.AttackTimer = CurTime()
SWEP.Reloading = 0
SWEP.ReloadingTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "Weapon_FlameThrower.Fire" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 200
SWEP.Primary.MaxAmmo = 200
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "AR2AltFire"
SWEP.Primary.Damage = 6.8
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Delay = 0.08
SWEP.Primary.Force = 100

SWEP.Secondary.Sound = Sound( "Weapon_FlameThrower.AirBurstAttack" )
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
-- Initialize the weapon as a TF item
tf_items.InitializeAsBaseItem(SWEP)
SWEP.Secondary.TakeAmmo = 20
SWEP.Secondary.Delay = 0.75
SWEP.Secondary.Force = 2500

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
if SERVER then
self.Owner:EmitSound( "Weapon_FlameThrower.PilotLoop" )
end
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self.Owner:GetViewModel():SetPlaybackRate(1.4)
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Sound = 0
self.SoundTimer = CurTime()
self.Attack = 0
self.AttackTimer = CurTime()
self.Reloading = 0
self.ReloadingTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Owner:SetWalkSpeed( self.WalkSpeed )
self.Owner:SetRunSpeed( self.RunSpeed )
if (IsValid(self:GetOwner()) and self:GetOwner():GetSkin() == 1) then
    self:SetSkin(1)
    self:GetOwner():GetViewModel():SetSkin(1)
end
return true
end

function SWEP:Holster()
self:StopSound( self.Primary.Sound )
if SERVER then
self.Owner:StopSound( "Weapon_FlameThrower.FireLoop" )
self.Owner:StopSound( "Weapon_FlameThrower.PilotLoop" )
if self.Attack == 1 then
self.Flame:Fire( "kill", "", 0 )
end
end
self.Sound = 0
self.SoundTimer = CurTime()
self.Attack = 0
self.AttackTimer = CurTime()
self.Reloading = 0
self.ReloadingTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Owner:SetWalkSpeed( 200 )
self.Owner:SetRunSpeed( 400 )
return true
end

function SWEP:PrimaryAttack()
if self.Weapon:Ammo1() <= 0 then return end
self:TakePrimaryAmmo( self.Primary.TakeAmmo )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then return end
if self.Attack == 0 then
if SERVER then
local flame = ents.Create( "info_particle_system" )
flame:SetKeyValue( "effect_name", "flamethrower" )
flame:SetOwner( self.Owner )
local Forward = self.Owner:EyeAngles():Forward()
local Right = self.Owner:EyeAngles():Right()
local Up = self.Owner:EyeAngles():Up()
flame:SetPos( self.Owner:GetShootPos() + Forward * 24 + Right * 8 + Up * -6 )
flame:SetAngles( self.Owner:EyeAngles() )
flame:Spawn()
flame:Activate()
flame:Fire( "start", "", 0 )
self.Flame = flame
end
self:EmitSound( self.Primary.Sound )
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self.Sound = 1
self.SoundTimer = CurTime() + 3.5
end
self.Attack = 1
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end

function SWEP:SecondaryAttack()
if self.Attack == 1 then return end
if self.Weapon:Ammo1() < 20 then return end
if self.FiresUnderwater == false and self.Owner:WaterLevel() == 3 then return end
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 128,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 128,
filter = self.Owner,
mins = Vector( -16, -16, 0 ),
maxs = Vector( 16, 16, 0 ),
mask = MASK_SHOT_HULL,
} )
end
if SERVER then
if IsValid( tr.Entity ) then
tr.Entity:SetVelocity( self.Owner:GetAimVector() * Vector( self.Secondary.Force, self.Secondary.Force, 0 ) + Vector( 0, 0, 200 ) )
end
local blast = ents.Create( "info_particle_system" )
blast:SetKeyValue( "effect_name", "pyro_blast" )
blast:SetOwner( self.Owner )
local Forward = self.Owner:EyeAngles():Forward()
local Right = self.Owner:EyeAngles():Right()
local Up = self.Owner:EyeAngles():Up()
blast:SetPos( self.Owner:GetShootPos() + Forward * 24 + Right * 8 + Up * -6 )
blast:SetAngles( self.Owner:EyeAngles() )
blast:Spawn()
blast:Activate()
blast:Fire( "start", "", 0 )
end
self:EmitSound( self.Secondary.Sound )
self.Weapon:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self:TakePrimaryAmmo( self.Secondary.TakeAmmo )
self:SetNextPrimaryFire( CurTime() + self.Secondary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
if self.Owner:KeyDown( IN_USE ) and self.Owner:KeyDown( IN_RELOAD ) then
if SERVER then
self.Owner:StopSound( "player/pyro_cheers.wav", 95, 100, 1, CHAN_VOICE )
self.Owner:EmitSound( "player/pyro_cheers.wav", 95, 100, 1, CHAN_VOICE )
end
self:SetNextSecondaryFire( CurTime() + 1 )
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
if self.Sound == 1 and self.SoundTimer <= CurTime() then
if SERVER then
self.Owner:EmitSound( "Weapon_FlameThrower.FireLoop" )
end
self.Sound = 0
end
if SERVER and self.Attack == 1 then
local Forward = self.Owner:EyeAngles():Forward()
local Right = self.Owner:EyeAngles():Right()
local Up = self.Owner:EyeAngles():Up()
self.Flame:SetPos( self.Owner:GetShootPos() + Forward * 24 + Right * 8 + Up * -6 )
self.Flame:SetAngles( self.Owner:EyeAngles() )
end
if self.Attack == 1 then
if !self.Owner:KeyDown( IN_ATTACK ) then
if SERVER then
self.Owner:StopSound( "Weapon_FlameThrower.FireLoop" )
self.Flame:Fire( "kill", "", 0 )
end
self:StopSound( self.Primary.Sound )
self.Sound = 0
self.Attack = 0
end
if self.Weapon:Ammo1() <= 0 then
self:StopSound( self.Primary.Sound )
if SERVER then
self.Owner:StopSound( "Weapon_FlameThrower.FireLoop" )
self.Flame:Fire( "kill", "", 0 )
end
self.Sound = 0
self.Attack = 0
end
if self.Owner:WaterLevel() == 3 then
self:StopSound( self.Primary.Sound )
if SERVER then
self.Owner:StopSound( "Weapon_FlameThrower.FireLoop" )
self.Flame:Fire( "kill", "", 0 )
end
self.Sound = 0
self.Attack = 0
end
end
if self.Attack == 1 and self.AttackTimer <= CurTime() then
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 196,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 196,
filter = self.Owner,
mins = Vector( -16, -16, 0 ),
maxs = Vector( 16, 16, 0 ),
mask = MASK_SHOT_HULL,
} )
end
if SERVER and IsValid( tr.Entity ) then
local dmg = DamageInfo()
local attacker = self.Owner
if !IsValid( attacker ) then
attacker = self
end
dmg:SetAttacker( attacker )
dmg:SetInflictor( self )
dmg:SetDamage( self.Primary.Damage )
dmg:SetDamageForce( self.Owner:GetAimVector() * self.Primary.Force * 8 )
dmg:SetDamageType( DMG_SLOWBURN )
tr.Entity:TakeDamageInfo( dmg )
tr.Entity:Ignite( 10 )
end
self.AttackTimer = CurTime() + 0.04
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