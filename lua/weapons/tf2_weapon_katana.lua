if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/w_models/w_bottle" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
killicon.Add( "tf2_weapon_bottle", "hud/dneg_image_bottle", Color( 255, 255, 255, 255 ) )
end

SWEP.PrintName = "Demo's Katana"
SWEP.Category = "Team Fortress 2"
SWEP.Spawnable= false
SWEP.AdminSpawnable= true 
SWEP.AdminOnly = false


SWEP.ViewModel = "models/weapons/c_models/c_demo_arms.mdl"
SWEP.WorldModel = "models/weapons/c_models/c_bottle/c_bottle.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 1
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.UseHands = true
SWEP.HoldType = "melee2"
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "tf2_weaponbase"

--SWEP.WalkSpeed = 280
--SWEP.RunSpeed = 372

SWEP.Broken = 0
SWEP.Attack = 0
SWEP.AttackTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "Weapon_Katana.Miss" )
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Primary.Damage = 65
SWEP.Primary.Delay = 0.8
SWEP.Primary.Force = 2000

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
-- Initialize the weapon as a TF item
tf_items.InitializeAsBaseItem(SWEP)

function SWEP:Initialize()
self:SetWeaponHoldType( self.HoldType )
self.Broken = 0
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
tf_util.ReadActivitiesFromModel(self)
self.Owner:EmitSound("Weapon_Katana.Draw")
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_MELEE_VM_DRAW )
self.Owner:GetViewModel():SetPlaybackRate(1.4)
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
--self.Owner:SetWalkSpeed( self.WalkSpeed )
--self.Owner:SetRunSpeed( self.RunSpeed )
if self.Broken == 0 then
self.Owner:GetViewModel():SetBodygroup( 1, 0 ) 
end
if self.Broken == 1 then
self.Owner:GetViewModel():SetBodygroup( 1, 1 )
end
if (IsValid(self:GetOwner()) and self:GetOwner():GetSkin() == 1) then
    self:SetSkin(1)
    self:GetOwner():GetViewModel():SetSkin(1)
end
return true
end

function SWEP:Holster()
self.Owner:GetViewModel():SetMaterial("")
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
--self.Owner:SetWalkSpeed( 200 )
--self.Owner:SetRunSpeed( 400 )
return true
end

function SWEP:PrimaryAttack()
if SERVER then
if (math.random(1,6) == 1) then
    self.Owner:EmitSound( self.Primary.Sound.."Crit" )
    self.Crit = true
    self.Weapon:SendWeaponAnim( ACT_MELEE_VM_SWINGHARD )
else
    self.Owner:EmitSound( self.Primary.Sound )
    self.Weapon:SendWeaponAnim( ACT_MELEE_VM_HITCENTER )
    self.Crit = false
end
end
self.Owner:SetAnimation( PLAYER_ATTACK1 )
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
self.Attack = 1
self.AttackTimer = CurTime() + 0.2
self.Idle = 0
self.IdleTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
end

function SWEP:SecondaryAttack()
end

function SWEP:Reload()
end

function SWEP:Think()
tf_util.ReadActivitiesFromModel(self)
self.WModel = self:GetNWString("WorldModel2",self.WorldModel)
--self.WorldModel = self:GetNWString("WorldModel2",self.WorldModel)


self.PrintName = self:GetNWString("PrintName2",self.PrintName)
self.Primary.Sound = self:GetNWString("PrimarySound2",self.Primary.Sound)
self.HoldType = self:GetNWString("HoldType2",self.HoldType)
self.ItemData = self:GetNW2Var("ItemData",self.ItemData)
if self.Attack == 1 and self.AttackTimer <= CurTime() then
local tr = util.TraceLine( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 72,
filter = self.Owner,
mask = MASK_SHOT_HULL,
} )
if !IsValid( tr.Entity ) then
tr = util.TraceHull( {
start = self.Owner:GetShootPos(),
endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 72,
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
if (self.Crit) then
    dmg:SetDamageType( bit.bor(DMG_CLUB,DMG_ACID) )
    self.Crit = false
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
            else
                self.Owner:EmitSound( string.Replace(string.Replace(self.Primary.Sound,"Crit",""),"Miss","").."HitFlesh" )
			end
        end
        if !( tr.Entity:IsNPC() || tr.Entity:IsPlayer() ) then
            if visuals.sound_melee_hit_world then
                self.HitWorld = Sound(visuals.sound_melee_hit_world)
                self.Owner:EmitSound( self.HitWorld )
            else
                self.Owner:EmitSound( string.Replace(string.Replace(self.Primary.Sound,"Crit",""),"Miss","").."HitWorld" )
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
if !( tr.Entity:IsNPC() || tr.Entity:IsPlayer() ) then
self.Broken = 1
self.Owner:GetViewModel():SetBodygroup( 1, 1 )
end
end
self.Attack = 0
end
if self.Idle == 0 and self.IdleTimer <= CurTime() then
if SERVER then
self.Weapon:SendWeaponAnim( ACT_MELEE_VM_IDLE )
end
self.Idle = 1
end
end