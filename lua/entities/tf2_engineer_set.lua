AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Become Engineer"
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
activator:SetMaxHealth( 125 )
activator:SetHealth( 125 )
activator:StripWeapons()
activator:Give( "tf2_weapon_shotgun_primary" )
activator:Give( "tf2_weapon_pistol" )
activator:Give( "tf2_weapon_wrench" )
activator:Give( "tf2_weapon_distroy_pda" )
activator:Give( "tf2_weapon_buid_pda" )
self.Entity:Remove()
end
end