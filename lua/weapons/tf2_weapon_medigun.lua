if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/w_models/w_medigun" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
end

SWEP.PrintName = "Medi Gun"
SWEP.Category = "Team Fortress 2"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

 
SWEP.ViewModel = "models/weapons/v_models/v_medigun_medic.mdl"
SWEP.WorldModel = "models/weapons/w_models/w_medigun.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 3
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.UseHands = false
SWEP.HoldType = "ar2"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "tf2_weaponbase"

SWEP.WalkSpeed = 320
SWEP.RunSpeed = 428

SWEP.Uber = 0
SWEP.UberTimer = CurTime()
SWEP.Attack = 0
SWEP.AttackTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "WeaponMedigun.Healing" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.MaxAmmo = 100
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "Thumper"
SWEP.Primary.Delay = 0.1

SWEP.Secondary.Sound = Sound( "WeaponMedigun.Charged" )
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
surface.SetTexture( surface.GetTextureID( "sprites/crosshair_4" ) )
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
self.Uber = 0
self.UberTimer = CurTime()
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Owner:SetWalkSpeed( self.WalkSpeed )
self.Owner:SetRunSpeed( self.RunSpeed )
self.Owner:SetMaterial( "" )
self.Owner:GetViewModel():SetMaterial( "" )
if IsValid( self.Target ) then
self.Target:SetMaterial( "" )
end
self.Weapon:SetNWBool( "Uber", false )
self.Weapon:SetNWBool( "UberTarget", false )
self.Weapon:SetNWBool( "NoUber", true )
self.Weapon:SetNWBool( "NoUberTarget", true )
if (IsValid(self:GetOwner()) and self:GetOwner():GetSkin() == 1) then
    self:SetSkin(1)
    self:GetOwner():GetViewModel():SetSkin(1)
end
return true
end

function SWEP:Holster()
self:StopSound( self.Primary.Sound )
self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_POSTFIRE, true)
if SERVER then
self.Owner:StopSound( self.Secondary.Sound )
end
self.Owner:SetHealth( self.Owner:GetMaxHealth() )
if IsValid( self.Target ) then
self.Target:SetHealth( self.Target:GetMaxHealth() )
end
if SERVER and self.Attack == 1 then
self.Beam:Fire( "kill", "", 0 )
end
self.Uber = 0
self.UberTimer = CurTime()
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Owner:SetWalkSpeed( 200 )
self.Owner:SetRunSpeed( 400 )
self.Owner:SetMaterial( "" )
self.Owner:GetViewModel():SetMaterial( "" )
if IsValid( self.Target ) then
self.Target:SetMaterial( "" )
end
self.Owner:ConCommand( "pp_mat_overlay 0" )
self.Weapon:SetNWBool( "Uber", false )
self.Weapon:SetNWBool( "UberTarget", false )
self.Weapon:SetNWBool( "NoUber", true )
self.Weapon:SetNWBool( "NoUberTarget", true )
return true
end

function SWEP:PrimaryAttack()
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 450,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 450,
filter = self.Owner,
mins = Vector( -16, -16, 0 ),
maxs = Vector( 16, 16, 0 ),
mask = MASK_SHOT_HULL,
} )
end
if self.Attack == 0 then
if ( !( tr.Hit and IsValid( tr.Entity ) and ( tr.Entity:IsNPC() || tr.Entity:IsPlayer() ) ) || tr.Entity:Health() <= 0 ) then
self.Weapon:EmitSound( "WeaponMedigun.NoTarget" )
self:SetNextPrimaryFire( CurTime() + 0.2 )
self:SetNextSecondaryFire( CurTime() + 0.2 )
end
if tr.Hit and IsValid( tr.Entity ) and ( tr.Entity:IsNPC() || tr.Entity:IsPlayer() ) and tr.Entity:Health() > 0 then
if SERVER then
local beam = ents.Create( "info_particle_system" )
beam:SetKeyValue( "effect_name", "medicgun_beam_red" )
beam:SetOwner( self.Owner )
local Forward = self.Owner:EyeAngles():Forward()
local Right = self.Owner:EyeAngles():Right()
local Up = self.Owner:EyeAngles():Up()
beam:SetPos( self.Owner:GetShootPos() + Forward * 24 + Right * 8 + Up * -6 )
beam:SetAngles( self.Owner:EyeAngles() )
local beamtarget = ents.Create( "tf_target_medigun" )
beamtarget:SetOwner( self.Owner )
beamtarget:SetPos( tr.Entity:GetPos() + Vector( 0, 0, 50 ) )
beamtarget:Spawn()
beam:SetKeyValue( "cpoint1", beamtarget:GetName() )
beam:Spawn()
beam:Activate()
beam:Fire( "start", "", 0 )
self.Beam = beam
self.BeamTarget = beamtarget
end
self:EmitSound( self.Primary.Sound )
self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_PREFIRE, true)
timer.Simple(0.4, function()

    self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_SECONDARY, true)

end)
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Target = tr.Entity
if IsValid( self.Target ) and self.Uber == 1 then
self.Target:SetHealth( 999999999 )
self.Weapon:SetNWBool( "UberTarget", true )
self.Weapon:SetNWBool( "NoUberTarget", false )
end
self.Attack = 1
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
end
end
end

function SWEP:SecondaryAttack()
if self.Weapon:Ammo1() >= 100 and self.Uber == 0 then
if SERVER then
self.Owner:EmitSound( self.Secondary.Sound )
end
self.Owner:SetHealth( 999999999 )
if IsValid( self.Target ) and self.Attack == 1 then
self.Target:SetHealth( 999999999 )
end
self.Uber = 1
self.Owner:ConCommand( "pp_mat_overlay effects/invuln_overlay_red" )
self.Weapon:SetNWBool( "Uber", true )
self.Weapon:SetNWBool( "NoUber", false )
if self.Attack == 1 then
self.Weapon:SetNWBool( "UberTarget", true )
self.Weapon:SetNWBool( "NoUberTarget", false )
end
end
if self.Owner:KeyDown( IN_USE ) and self.Owner:KeyDown( IN_RELOAD ) then
if SERVER then
self.Owner:StopSound( "player/medic_no.wav", 95, 100, 1, CHAN_VOICE )
self.Owner:EmitSound( "player/medic_no.wav", 95, 100, 1, CHAN_VOICE )
end
self:SetNextSecondaryFire( CurTime() + 1 )
end
end

function SWEP:Reload()
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
if self.Weapon:GetNWBool( "Uber", true ) then
self.Owner:SetMaterial( "effects/invun_red" )
self.Owner:GetViewModel():SetMaterial( "effects/invun_red" )
end
if self.Weapon:GetNWBool( "NoUber", true ) then
self.Owner:SetMaterial( "" )
self.Owner:GetViewModel():SetMaterial( "" )
end
if IsValid( self.Target ) then
if self.Weapon:GetNWBool( "UberTarget", true ) then
self.Target:SetMaterial( "effects/invun_red" )
end
if self.Weapon:GetNWBool( "NoUberTarget", true ) then
self.Target:SetMaterial( "" )
end
end
if self.Uber == 1 then
if self.Weapon:Ammo1() > 0 and self.UberTimer <= CurTime() then
self:TakePrimaryAmmo( 1 )
self.UberTimer = CurTime() + 0.08
end
if self.Weapon:Ammo1() <= 0 then
if SERVER then
self.Owner:StopSound( self.Secondary.Sound )
end
self.Owner:SetHealth( self.Owner:GetMaxHealth() )
if IsValid( self.Target ) then
self.Target:SetHealth( self.Target:GetMaxHealth() )
end
self.Uber = 0
self.Owner:SetMaterial( "" )
self.Owner:GetViewModel():SetMaterial( "" )
if IsValid( self.Target ) then
self.Target:SetMaterial( "" )
end
self.Owner:ConCommand( "pp_mat_overlay 0" )
self.Weapon:SetNWBool( "Uber", false )
self.Weapon:SetNWBool( "UberTarget", false )
self.Weapon:SetNWBool( "NoUber", true )
self.Weapon:SetNWBool( "NoUberTarget", true )
end
end
if IsValid( self.Target ) and self.Target:Health() > 0 and self.Attack == 1 then
if self.AttackTimer <= CurTime() then
if SERVER then
local Forward = self.Owner:EyeAngles():Forward()
local Right = self.Owner:EyeAngles():Right()
local Up = self.Owner:EyeAngles():Up()
self.Beam:SetPos( self.Owner:GetShootPos() + Forward * 24 + Right * 8 + Up * -6 )
self.Beam:SetAngles( self.Owner:EyeAngles() )
self.BeamTarget:SetPos( self.Target:GetPos() + Vector( 0, 0, 50 ) )
end
if self.Target:Health() < self.Target:GetMaxHealth() then
self.Target:SetHealth( self.Target:Health() + 1 )
end
self.AttackTimer = CurTime() + 0.04
end
if self.Weapon:Ammo1() < 100 and self.Uber == 0 and self.UberTimer <= CurTime() then
self.Owner:SetAmmo( self.Weapon:Ammo1() + 1, self.Primary.Ammo )
self.UberTimer = CurTime() + 0.4
end
end
if ( !IsValid( self.Target ) || self.Target:Health() <= 0 || !self.Owner:KeyDown( IN_ATTACK ) ) and self.Attack == 1 then
if SERVER then
self.Beam:Fire( "kill", "", 0 )
self.BeamTarget:Remove()
end
self:StopSound( self.Primary.Sound )
self.Owner:DoAnimationEvent(ACT_MP_ATTACK_STAND_POSTFIRE, true)
if IsValid( self.Target ) and self.Uber == 1 then
self.Target:SetHealth( self.Target:GetMaxHealth() )
self.Weapon:SetNWBool( "UberTarget", false )
self.Weapon:SetNWBool( "NoUberTarget", true )
end
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
end
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
if self.Attack == 0 then
self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
end
if self.Attack == 1 then
self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
end
end
self.Idle = 1
end
if self.Weapon:Ammo1() > self.Primary.MaxAmmo then
self.Owner:SetAmmo( self.Primary.MaxAmmo, self.Primary.Ammo )
end
end