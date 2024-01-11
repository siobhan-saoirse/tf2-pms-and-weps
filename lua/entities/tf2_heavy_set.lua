AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Become Heavy"
ENT.Category = "Team Fortress 2"
ENT.Editable = true
ENT.Spawnable = true
ENT.AdminOnly = false

function ENT:Draw()
self.Entity:DrawModel()
end

function ENT:Initialize()
if SERVER then
self.Entity:SetModel( "models/items/item_item_crate.mdl" )
self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
self.Entity:SetSolid( SOLID_VPHYSICS )
self.Entity:PhysicsInit( SOLID_VPHYSICS )
self.Entity:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )
self.Entity:DrawShadow( true )
end
end

function ENT:Use( activator )
if SERVER then
activator:SetMaxHealth( 300 )
activator:SetHealth( 300 )
activator:StripWeapons()
activator:Give( "tf2_weapon_minigun" )
activator:Give( "tf2_weapon_shotgun_hwg" )
activator:Give( "tf2_weapon_fists" )
self.Entity:Remove()
end
end