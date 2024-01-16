if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/w_models/w_knife" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
killicon.Add( "tf2_weapon_knife", "hud/dneg_image_knife", Color( 255, 255, 255, 255 ) )
end

SWEP.PrintName = "Knife"
SWEP.Category = "Team Fortress 2"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

 
SWEP.ViewModel = "models/weapons/v_models/v_knife_spy.mdl"
SWEP.WorldModel = "models/weapons/w_models/w_knife.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0  

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 2 
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.UseHands = true
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1 
SWEP.Base = "tf2_weaponbase"

SWEP.WalkSpeed = 300
SWEP.RunSpeed = 428

SWEP.Backstab = 0
SWEP.Attack = 0
SWEP.AttackTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "Weapon_Knife.Miss" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Primary.Damage = 40
SWEP.Primary.Delay = 0.8
SWEP.Primary.Force = 2000

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
-- Initialize the weapon as a TF item
tf_items.InitializeAsBaseItem(SWEP)

function SWEP:Initialize()
self.Weapon:SetHoldType( "knife" )
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
surface.SetTexture( surface.GetTextureID( "sprites/crosshair_2" ) )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.DrawTexturedRect( x - 16, y - 16, 32, 32 )
end
end

function SWEP:Deploy()
tf_util.ReadActivitiesFromModel(self)
self.Weapon:SetHoldType( "knife" )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self.Owner:GetViewModel():SetPlaybackRate(1.4)
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Backstab = 0
self.Attack = 0
self.AttackTimer = CurTime()
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
self.Owner:GetViewModel():SetMaterial("")
self.Weapon:SetHoldType( "knife" )
self.Backstab = 0
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Owner:SetWalkSpeed( 200 )
self.Owner:SetRunSpeed( 400 )
return true
end

function SWEP:PrimaryAttack()
if self.Backstab == 1 then
self.Weapon:SetHoldType( "backstab" )
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 64,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 64,
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
local angle = self.Owner:GetAngles().y - tr.Entity:GetAngles().y
if angle < -180 then
angle = 360 + angle
end
if angle <= 90 and angle >= -90 then
dmg:SetDamage( tr.Entity:Health() * 6 )
else
dmg:SetDamage( self.Primary.Damage )
end
dmg:SetDamageForce( self.Owner:GetAimVector() * self.Primary.Force * 8 )
if (self.Backstab == 1) then
    dmg:SetDamageType( bit.bor(DMG_CLUB,DMG_ACID) )
else
    dmg:SetDamageType( DMG_CLUB )
end
tr.Entity:TakeDamageInfo( dmg )
end
if tr.Hit then
if SERVER then
if tr.Entity:IsPlayer() || tr.Entity:IsNPC() then
self.Owner:EmitSound( "Weapon_Knife.HitFlesh" )
end
if !( tr.Entity:IsPlayer() || tr.Entity:IsNPC() ) then
self.Owner:EmitSound( "Weapon_Knife.HitWorld" )
end
self.Attack = 2
self.AttackTimer = CurTime() + 0.0
end
end
end
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
if self.Backstab == 0 then
if SERVER then
    self.Owner:EmitSound( self.Primary.Sound )
    self.Weapon:SendWeaponAnim( ACT_VM_HITCENTER )
    self.Crit = false
end
self.Attack = 1
self.AttackTimer = CurTime() + 0.0
end
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end

function SWEP:SecondaryAttack()
if self.Owner:KeyDown( IN_USE ) and self.Owner:KeyDown( IN_RELOAD ) then
if SERVER then
self.Owner:StopSound( "player/spy_surprise.wav", 95, 100, 1, CHAN_VOICE )
self.Owner:EmitSound( "player/spy_surprise.wav", 95, 100, 1, CHAN_VOICE )
end
self:SetNextSecondaryFire( CurTime() + 1 )
end
end

function SWEP:Reload()
end

function SWEP:Think()
tf_util.ReadActivitiesFromModel(self)
self.WModel = self:GetNWString("WorldModel2",self.WorldModel)

		if (self:GetItemData().model_player != nil and self.WModel) then
	self.WorldModel = "models/empty.mdl"
		end
self.PrintName = self:GetNWString("PrintName2",self.PrintName)
self.Primary.Sound = self:GetNWString("PrimarySound2",self.Primary.Sound)
self.HoldType = self:GetNWString("HoldType2",self:GetHoldType())
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 64,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 64,
filter = self.Owner,
mins = Vector( -16, -16, 0 ),
maxs = Vector( 16, 16, 0 ),
mask = MASK_SHOT_HULL,
} )
end
if tr.Hit and IsValid( tr.Entity ) and ( tr.Entity:IsPlayer() || tr.Entity:IsNPC() ) then
local angle = self.Owner:GetAngles().y - tr.Entity:GetAngles().y
if angle < -180 then
angle = 360 + angle
end
if angle <= 90 and angle >= -90 and self.Backstab == 0 then
self.Weapon:SendWeaponAnim( ACT_DEPLOY )
self.Backstab = 1
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end
if !( angle <= 90 and angle >= -90 ) and self.Backstab == 1 then
self.Weapon:SendWeaponAnim( ACT_UNDEPLOY )
self.Backstab = 0
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
self.Weapon:SetHoldType( "backstab" )
end
end
if !( tr.Hit and IsValid( tr.Entity ) and ( tr.Entity:IsPlayer() || tr.Entity:IsNPC() ) ) and self.Backstab == 1 then
self.Weapon:SendWeaponAnim( ACT_UNDEPLOY )
self.Backstab = 0
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end
if self.Attack == 2 and self.AttackTimer <= CurTime() then
    self.Owner:EmitSound( self.Primary.Sound.."Crit" )
self.Weapon:SendWeaponAnim( ACT_VM_SWINGHARD )
self.Attack = 0
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end
if self.Attack == 1 and self.AttackTimer <= CurTime() then
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 64,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 64,
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
if (self.Backstab == 1) then
    dmg:SetDamageType( bit.bor(DMG_CLUB,DMG_ACID) )
else
    dmg:SetDamageType( DMG_CLUB )
end
dmg:SetDamageForce( self.Owner:GetAimVector() * self.Primary.Force * 8 )
tr.Entity:TakeDamageInfo( dmg )
end
if tr.Hit then
if SERVER then
    if (self:GetItemData().visuals) then

        local visuals = self:GetItemData().visuals

        if tr.Entity:IsNPC() || tr.Entity:IsPlayer() then
			if visuals.sound_melee_hit then
				self.HitFlesh = Sound(visuals.sound_melee_hit)
                self.Owner:EmitSound( self.HitFlesh )
			end
        end
        if !( tr.Entity:IsNPC() || tr.Entity:IsPlayer() ) then
            if visuals.sound_melee_hit_world then
                self.HitWorld = Sound(visuals.sound_melee_hit_world)
                self.Owner:EmitSound( self.HitWorld )
            end
        end

    else
        if tr.Entity:IsNPC() || tr.Entity:IsPlayer() then
            self.Owner:EmitSound( string.Replace(string.Replace(self.Primary.Sound,"Crit",""),"Miss","").."HitFlesh" )
        end
        if !( tr.Entity:IsNPC() || tr.Entity:IsPlayer() ) then
            self.Owner:EmitSound( string.Replace(string.Replace(self.Primary.Sound,"Crit",""),"Miss","").."HitWorld" )
        end
    end
end
end
self.Attack = 0
end
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
if self.Backstab == 0 then
self.Weapon:SetHoldType( "knife" )
self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
end
if self.Backstab == 1 then
self.Weapon:SetHoldType( "backstab" )
self.Weapon:SendWeaponAnim( ACT_DEPLOY_IDLE )
end
end
self.Idle = 1
end
end