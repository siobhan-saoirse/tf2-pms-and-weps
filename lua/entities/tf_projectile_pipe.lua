AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/weapons/w_models/w_grenade_grenadelauncher.mdl" )
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:PhysicsInit( SOLID_VPHYSICS )
self.Entity:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )
self.Entity:DrawShadow( false )
local trail = ents.Create( "info_particle_system" )
trail:SetKeyValue( "effect_name", "pipebombtrail_red" )
trail:SetParent( self.Entity )
trail:SetOwner( self.Owner )
trail:SetPos( self:GetPos() )
trail:SetAngles( self:GetAngles() )
trail:Spawn()
trail:Activate()
trail:Fire( "start", "", 0 )
self.Trail = trail
end
self.ExplodeTimer = CurTime() + 2
end

function ENT:Think()
if SERVER then
self.Trail:SetPos( self:GetPos() )
if self.ExplodeTimer <= CurTime() then
self.Entity:Remove()
end
end
end

function ENT:PhysicsCollide( data )
if SERVER then
if data.Speed > 50 then
self.Entity:EmitSound( "Grenade.ImpactHard" )
end
if data.HitEntity:IsNPC() || data.HitEntity:IsPlayer() then
self.Entity:SetMoveType( MOVETYPE_NONE )
self.Entity:SetSolid( SOLID_NONE )
self.Entity:PhysicsInit( SOLID_NONE )
self.Entity:SetCollisionGroup( COLLISION_GROUP_NONE )
self.Entity:Remove()
end
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
end
util.BlastDamage( self, self.Owner, self:GetPos(), 146, 100 )
end