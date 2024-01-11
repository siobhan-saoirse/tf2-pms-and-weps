AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false
ENT.HitboxSize = 0.5
ENT.HitEnt = false

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/weapons/w_models/w_syringe_proj.mdl" )
self:SetMoveType(MOVETYPE_FLYGRAVITY)
self:SetMoveCollide(MOVECOLLIDE_FLY_CUSTOM)
self:SetCollisionBounds(Vector(-self.HitboxSize, -self.HitboxSize, -self.HitboxSize), Vector(self.HitboxSize, self.HitboxSize, self.HitboxSize))
self.Entity:SetSolid( SOLID_BBOX )
self.Entity:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )
self.Entity:DrawShadow( false )
self:SetTrigger(true)

--self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
self:SetNotSolid(true)
end
local particlename = "nailtrails_medic_red"
if (self:GetOwner():GetSkin() == 1) then
    particlename = "nailtrails_medic_blue"
end
ParticleEffectAttach(particlename,PATTACH_ABSORIGIN_FOLLOW,self,0)
end

function ENT:Touch(ent)
	if ent:IsSolid() and ent:GetClass() != self:GetClass() and ent:EntIndex() != self:GetOwner():EntIndex() then
		self:Hit(ent) 
	end
end

function ENT:Think()
    if (self:GetMoveType() == MOVETYPE_FLYGRAVITY) then
	    self:SetAngles(self:GetVelocity():Angle())
    end
    if (IsValid(self:GetOwner()) and self:GetOwner():GetSkin() == 1) then
        self.Entity:SetSkin(1)
    end
    if ((IsValid(self:GetParent()) and (self:GetParent():IsPlayer() or self:GetParent():IsNPC()) and (self:GetParent():Health() < 1)) or !IsValid(self:GetParent()) and self.HitEnt) then
        self:Remove()
    end
end

function ENT:Hit( ent )
if SERVER then
self.Entity:SetMoveType( MOVETYPE_NONE )
self.Entity:SetSolid( SOLID_NONE )
self.Entity:PhysicsInit( SOLID_NONE )
self.Entity:SetCollisionGroup( COLLISION_GROUP_NONE )
end
self:StopParticles()
local owner = self:GetOwner()
if !IsValid( self ) then
owner = self
end
local dir = self:GetVelocity():GetNormal()
self:FireBullets({
    Src=self:GetPos(),
    Attacker=self:GetOwner(),
    Dir=dir,
    Spread=Vector(0,0,0),
    Num=1,
    Damage=10,
    Tracer=1
})
if SERVER and ( IsValid(ent) ) then
self:SetParent(ent)
ent:SetVelocity(self:GetForward() * 10)
if (IsValid(ent:GetPhysicsObject())) then
    ent:GetPhysicsObject():SetVelocity(self:GetForward() * 80)
end
self.HitEnt = true
end
end