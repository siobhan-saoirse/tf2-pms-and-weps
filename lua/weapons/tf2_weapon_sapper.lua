if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID( "backpack/weapons/w_models/sapper" )
SWEP.DrawWeaponInfoBox = false
SWEP.BounceWeaponIcon = false
killicon.Add( "tf2_weapon_fists", "hud/dneg_image_fists", Color( 255, 255, 255, 255 ) )
end

SWEP.PrintName = "Electro-Sapper"
SWEP.Category = "Team Fortress 2"
SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false
 

SWEP.ViewModel = "models/weapons/v_models/v_sapper_spy.mdl"
SWEP.WorldModel = "models/weapons/c_models/c_sapper/c_sapper.mdl"
SWEP.ViewModelFlip = false
SWEP.BobScale = 1
SWEP.SwayScale = 0

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Weight = 1
SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.UseHands = false
SWEP.HoldType = "slam" 
SWEP.FiresUnderwater = true
SWEP.DrawCrosshair = false
SWEP.DrawAmmo = true
SWEP.CSMuzzleFlashes = 1
SWEP.Base = "tf2_weaponbase"

SWEP.WalkSpeed = 300
SWEP.RunSpeed = 428

SWEP.Attack = 0
SWEP.AttackTimer = CurTime()
SWEP.Idle = 0
SWEP.IdleTimer = CurTime()

SWEP.Primary.Sound = Sound( "Weapon_Fist.Miss" )
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
self.Idle = 0
self.IdleTimer = CurTime() + 1
end

function SWEP:Deploy() 
self:SetWeaponHoldType( self.HoldType )
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
self.Owner:GetViewModel():SetPlaybackRate(1.4)
self:SetNextPrimaryFire( CurTime() + 0.5 )
self:SetNextSecondaryFire( CurTime() + 0.5 )
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

function SWEP:Think()
    self.WorldModel = self:GetNWString("WorldModel2",self.WorldModel)
    self.PrintName = self:GetNWString("PrintName2",self.PrintName)
    self.Primary.Sound = self:GetNWString("PrimarySound2",self.Primary.Sound)
    self.HoldType = self:GetNWString("HoldType2",self.HoldType)
    self:NextThink(CurTime())
    return true
end
function SWEP:Holster()
self.Attack = 0
self.AttackTimer = CurTime()
self.Idle = 0
self.IdleTimer = CurTime()
self.Owner:SetWalkSpeed( 200 )
self.Owner:SetRunSpeed( 400 )
return true
end