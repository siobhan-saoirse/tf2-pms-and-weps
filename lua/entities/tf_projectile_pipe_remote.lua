AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/weapons/w_models/w_stickybomb.mdl" )
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:PhysicsInit( SOLID_VPHYSICS )
self.Entity:SetCollisionGroup( COLLISION_GROUP_WEAPON )
self.Entity:DrawShadow( false )
local trail = ents.Create( "info_particle_system" )
trail:SetKeyValue( "effect_name", "stickybombtrail_red" )
trail:SetParent( self.Entity )
trail:SetOwner( self.Owner )
trail:SetPos( self:GetPos() )
trail:SetAngles( self:GetAngles() )
trail:Spawn()
trail:Activate()
trail:Fire( "start", "", 0 )
self.Trail = trail
end
self.Activation = 0
self.ActivationTimer = CurTime() + 0.7
self.ExplodeTimer = CurTime() + 2.3
end

function ENT:Think()
if self.Activation == 0 and self.ActivationTimer <= CurTime() then
if SERVER then
local pulse = ents.Create( "info_particle_system" )
pulse:SetKeyValue( "effect_name", "stickybomb_pulse_red" )
pulse:SetParent( self.Entity )
pulse:SetOwner( self.Owner )
pulse:SetPos( self:GetPos() )
pulse:SetAngles( self:GetAngles() )
pulse:Spawn()
pulse:Activate()
pulse:Fire( "start", "", 0 )
self.Pulse = pulse
end
self.Activation = 1
end
if SERVER then
self.Trail:SetPos( self:GetPos() )
if self.Owner:KeyDown( IN_ATTACK2 ) and self.Activation == 1 then
self.Owner:EmitSound( "Weapon_StickyBombLauncher.ModeSwitch" )
self.Entity:Remove()
end
end
end

function ENT:PhysicsCollide()
if SERVER then
self.Entity:SetMoveType( MOVETYPE_NONE )
self.Entity:SetSolid( SOLID_NONE )
self.Entity:PhysicsInit( SOLID_NONE )
self.Entity:SetCollisionGroup( COLLISION_GROUP_NONE )
end
end

function ENT:OnRemove()
if SERVER then
local explode = ents.Create( "env_explosion" )
explode:SetOwner( self.Owner )
explode:SetPos( self:GetPos() )
explode:Spawn()
explode:Fire( "Explode", 0, 0 )
self.Trail:Fire( "kill", "", 0 )
self.Pulse:Fire( "kill", "", 0 )
end
util.BlastDamage( self, self.Owner, self:GetPos(), 146, 120 )
end