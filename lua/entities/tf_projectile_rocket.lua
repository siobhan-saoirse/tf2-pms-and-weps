AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/weapons/w_models/w_rocket.mdl" )
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:PhysicsInit( SOLID_VPHYSICS )
self.Entity:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )
self.Entity:DrawShadow( false )
local rockettrail = ents.Create( "info_particle_system" )
rockettrail:SetKeyValue( "effect_name", "rockettrail" )
rockettrail:SetParent( self.Entity )
rockettrail:SetOwner( self.Owner )
rockettrail:SetPos( self:GetPos() )
rockettrail:SetAngles( self:GetAngles() + Angle( 180, 0, 0 ) )
rockettrail:Spawn()
rockettrail:Activate()
rockettrail:Fire( "start", "", 0 )
self.RocketTrail = rockettrail
end
end

function ENT:Think()
if SERVER then
self.RocketTrail:SetPos( self:GetPos() )
self.RocketTrail:SetAngles( self:GetAngles() + Angle( 180, 0, 0 ) )
end
end

function ENT:PhysicsCollide()
if SERVER then
self.Entity:SetMoveType( MOVETYPE_NONE )
self.Entity:SetSolid( SOLID_NONE )
self.Entity:PhysicsInit( SOLID_NONE )
self.Entity:SetCollisionGroup( COLLISION_GROUP_NONE )
self.Entity:Remove()
end
end

function ENT:OnRemove()
if SERVER then
local explode = ents.Create( "env_explosion" )
explode:SetOwner( self.Owner )
explode:SetPos( self:GetPos() )
explode:Spawn()
explode:Fire( "Explode", 0, 0 )
self.RocketTrail:Fire( "kill", "", 0 )
end
util.BlastDamage( self, self.Owner, self:GetPos(), 146, 90 )
end