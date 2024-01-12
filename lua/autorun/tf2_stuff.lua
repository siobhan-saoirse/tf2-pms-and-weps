-- now it's killing time
-- tf_items
if !file.Exists("scripts/items/items_game.txt", "GAME") then
    Error("ERROR: items_game.txt NOT FOUND!\nLIVE TF WEAPONS WILL NOT BE LOADED!\n")
end

include("modules/tf_lang.lua")  
include("modules/tf_items.lua")  
include("modules/tf_attributes.lua")  
sound.AddSoundOverrides("lua/sounds/game_sounds_player.lua")
game.AddParticles( "particles/crit.pcf" )
game.AddParticles( "particles/explosion.pcf" )
game.AddParticles( "particles/flamethrower.pcf" )
game.AddParticles( "particles/medicgun_beam.pcf" )
game.AddParticles( "particles/rockettrail.pcf" )
game.AddParticles( "particles/stickybomb.pcf" )

player_manager.AddValidModel( "tf_heavy",			"models/player/heavy.mdl" )
player_manager.AddValidHands( "tf_heavy",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_scout",			"models/player/scout.mdl" )
player_manager.AddValidHands( "tf_scout",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_soldier",			"models/player/soldier.mdl" )
player_manager.AddValidHands( "tf_soldier",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_sniper",			"models/player/sniper.mdl" )
player_manager.AddValidHands( "tf_sniper",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_spy",			"models/player/spy.mdl" )
player_manager.AddValidHands( "tf_spy",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_medic",			"models/player/medic.mdl" )
player_manager.AddValidHands( "tf_medic",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_demoman",			"models/player/demo.mdl" )
player_manager.AddValidHands( "tf_demoman",			"models/weapons/c_arms_citizen.mdl",			1, "0000000" )
player_manager.AddValidModel( "tf_engineer",			"models/player/engineer.mdl" )
player_manager.AddValidHands( "tf_engineer",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_pyro",			"models/player/pyro.mdl" )
player_manager.AddValidHands( "tf_pyro",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_heavy",			"models/player/hwm/heavy.mdl" )
player_manager.AddValidHands( "hwm_tf_heavy",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_scout",			"models/player/hwm/scout.mdl" )
player_manager.AddValidHands( "hwm_tf_scout",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_soldier",			"models/player/hwm/soldier.mdl" )
player_manager.AddValidHands( "hwm_tf_soldier",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_sniper",			"models/player/hwm/sniper.mdl" )
player_manager.AddValidHands( "hwm_tf_sniper",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_spy",			"models/player/hwm/spy.mdl" )
player_manager.AddValidHands( "hwm_tf_spy",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_medic",			"models/player/hwm/medic.mdl" )
player_manager.AddValidHands( "hwm_tf_medic",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_demoman",			"models/player/hwm/demo.mdl" )
player_manager.AddValidHands( "hwm_tf_demoman",			"models/weapons/c_arms_citizen.mdl",			1, "0000000" )
player_manager.AddValidModel( "hwm_tf_engineer",			"models/player/hwm/engineer.mdl" )
player_manager.AddValidHands( "hwm_tf_engineer",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "hwm_tf_pyro",			"models/player/hwm/pyro.mdl" )
player_manager.AddValidHands( "hwm_tf_pyro",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botheavy",			"models/bots/heavy/bot_heavy.mdl" )
player_manager.AddValidHands( "tf_botheavy",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botscout",			"models/bots/scout/bot_scout.mdl" )
player_manager.AddValidHands( "tf_botscout",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botsoldier",			"models/bots/soldier/bot_soldier.mdl" )
player_manager.AddValidHands( "tf_botsoldier",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botsniper",			"models/bots/sniper/bot_sniper.mdl" )
player_manager.AddValidHands( "tf_botsniper",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botspy",			"models/bots/spy/bot_spy.mdl" )
player_manager.AddValidHands( "tf_botspy",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botmedic",			"models/bots/medic/bot_medic.mdl" )
player_manager.AddValidHands( "tf_botmedic",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botdemoman",			"models/bots/demo/bot_demo.mdl" )
player_manager.AddValidHands( "tf_botdemoman",			"models/weapons/c_arms_combine.mdl",			1, "0000000" )
player_manager.AddValidModel( "tf_botengineer",			"models/bots/engineer/bot_engineer.mdl" )
player_manager.AddValidHands( "tf_botengineer",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_botpyro",			"models/bots/pyro/bot_pyro.mdl" )
player_manager.AddValidHands( "tf_botpyro",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_skeleton",			"models/bots/skeleton_sniper/skeleton_sniper.mdl" )
player_manager.AddValidHands( "tf_skeleton",			"models/weapons/c_arms_citizen.mdl",			2, "0000000" )
player_manager.AddValidModel( "tf_civilian",			"models/player/civilian.mdl" )
player_manager.AddValidHands( "tf_civilian",			"models/weapons/c_arms_citizen.mdl",			0, "0000000" )
player_manager.AddValidModel( "of_mercenary",			"models/player/mercenary.mdl" )
player_manager.AddValidHands( "of_mercenary",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "tf_mercenary",			"models/player/merc_deathmatch.mdl" )
player_manager.AddValidHands( "tf_mercenary",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_heavy",			"models/pf2/player/heavy.mdl" )
player_manager.AddValidHands( "pf2_heavy",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_scout",			"models/pf2/player/scout.mdl" )
player_manager.AddValidHands( "pf2_scout",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_soldier",			"models/pf2/player/soldier.mdl" )
player_manager.AddValidHands( "pf2_soldier",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_sniper",			"models/pf2/player/sniper.mdl" )
player_manager.AddValidHands( "pf2_sniper",			"models/weapons/c_arms_cstrike.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_spy",			"models/pf2/player/spy.mdl" )
player_manager.AddValidHands( "pf2_spy",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_medic",			"models/pf2/player/medic.mdl" )
player_manager.AddValidHands( "pf2_medic",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_demoman",			"models/pf2/player/demo.mdl" )
player_manager.AddValidHands( "pf2_demoman",			"models/weapons/c_arms_citizen.mdl",			1, "0000000" )
player_manager.AddValidModel( "pf2_engineer",			"models/pf2/player/engineer.mdl" )
player_manager.AddValidHands( "pf2_engineer",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_pyro",			"models/pf2/player/pyro.mdl" )
player_manager.AddValidHands( "pf2_pyro",			"models/weapons/c_arms_combine.mdl",			0, "0000000" )
player_manager.AddValidModel( "pf2_civilian",			"models/pf2/player/civilian.mdl" )
player_manager.AddValidHands( "pf2_civilian",			"models/weapons/c_arms_hev.mdl",			0, "0000000" )

-- special thanks to the competitive addon creator for suggesting a lot of things!

list.Set( "PlayerOptionsAnimations", "tf_scout", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_soldier", { "selectionmenu_anim0l", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_pyro", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_demoman", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_heavy", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_engineer", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_medic", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_sniper", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_spy", { "selectionmenu_anim01", "stand_secondary" } )
list.Set( "PlayerOptionsAnimations", "pf2_scout", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_soldier", { "selectionmenu_anim0l", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_pyro", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_demoman", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_heavy", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_engineer", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_medic", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_sniper", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "pf2_spy", { "selectionmenu_anim01", "stand_secondary" } )
list.Set( "PlayerOptionsAnimations", "pf2_civilian", { "selectionmenu_anim01", "taunt" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_scout", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_soldier", { "selectionmenu_anim0l", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_pyro", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_demoman", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_heavy", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_engineer", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_medic", { "selectionmenu_anim01", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_sniper", { "selectionmenu_anim01", "taunt01" } )
list.Set( "PlayerOptionsAnimations", "hwm_tf_spy", { "selectionmenu_anim01", "stand_secondary" } )
list.Set( "PlayerOptionsAnimations", "tf_botscout", { "stand_melee", "taunt03" } )
list.Set( "PlayerOptionsAnimations", "tf_botsoldier", { "stand_primary", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botpyro", { "stand_primary", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botdemoman", { "stand_item1", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botheavy", { "stand_melee", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botengineer", { "stand_melee", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botmedic", { "stand_melee", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botsniper", { "stand_melee", "layer_taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_botspy", { "stand_melee", "taunt01" } )
list.Set( "PlayerOptionsAnimations", "tf_skeleton", { "stand_melee", "spawn01", "spawn02", "spawn03", "spawn04", "spawn05", "spawn06", "spawn07" } )
list.Set( "PlayerOptionsAnimations", "tf_civilian", { "selectionmenu_anim01", "layer_taunt01", "layer_taunt_sandvich"  } )
list.Set( "PlayerOptionsAnimations", "of_mercenary", { "loadout_idle", "layer_taunt01", "layer_taunt03","hud_ref", "loadout_fuckinsiiiiick", "layer_taunt02", "layer_taunt_bond", "winpanel_first" } )
list.Set( "PlayerOptionsAnimations", "tf_mercenary", { "stand_crowbar", "selectionMenu_Anim0l", "winscreen_first", "winscreen_first_2", "winscreen_first_3", "winscreen_second",  } )

local ActivityTranslateFixTF2 = {}  

sound.Add( {
	name = "BaseExplosionEffect.Sound",
	volume = 1.0,
	level = 150, 
	pitch = { 95, 105 },
	channel = CHAN_ITEM,
	sound = { "^weapons/explode3.wav", "^weapons/explode4.wav", "^weapons/explode5.wav" } 
} ) 

hook.Add("PlayerFootstep", "RoboStep", function( ply, pos, foot, sound, volume, rf)

	if (((string.find(ply:GetModel(),"models/player") || string.find(ply:GetModel(),"models/bots/")) and ply:LookupBone("bip_head") != -1)) then
		if ((CLIENT and LocalPlayer():ShouldDrawLocalPlayer())) then
			if (SERVER) then
				return false
			else
				return true
			end
		end
		if ((CLIENT and ply == LocalPlayer())) then
			return false
		else
			return true
		end
	end

end)
if CLIENT then
	
	hook.Add("PlayerFireAnimationEvent","OnStepEventPlayStepSound",function( pl, pos, ang, event, name )
		if (event == 7001 and ((string.find(pl:GetModel(),"models/player") || string.find(pl:GetModel(),"models/pf2/player") || string.find(pl:GetModel(),"models/bots/")) and pl:LookupBone("bip_head") != -1)) then
			
			local tr = util.TraceLine( {
				start = pl:GetPos() + Vector(0,0,72),
				endpos = pl:GetPos() - Vector(0,0,4) * 8,
				mask = MASK_PLAYERSOLID_BRUSHONLY,
				collisiongroup = COLLISION_GROUP_PLAYER_MOVEMENT
			} )
			--debugoverlay.Line( pl:GetPos() + Vector(0,0,72), pl:GetPos() - Vector(0,0,4) * 4, 1, Color(255,255,255) )
			if (pl:GetModel() == "models/bots/headless_hatman.mdl") then
				pl:EmitSound("Halloween.HeadlessBossFootfalls") 
				ParticleEffectAttach("halloween_boss_foot_impact", PATTACH_ABSORIGIN,pl,0)
			elseif (string.find(pl:GetModel(),"/bot_")) then
				if (pl:WaterLevel() == 1) then
					pl:StopSound("Water.StepLeft")
					pl:StopSound("Water.StepRight")
					pl:EmitSound("Water.Step"..table.Random({"Right","Left"}))
				elseif (pl:WaterLevel() >= 2) then
					pl:StopSound("Player.Swim")
					pl:EmitSound("Player.Swim")
				else
					pl:StopSound("MvM.BotStep") 
					pl:EmitSound("MvM.BotStep") 
				end
			else
				if (pl:WaterLevel() == 1) then
					pl:StopSound("Water.StepLeft")
					pl:StopSound("Water.StepRight")
					pl:EmitSound("Water.Step"..table.Random({"Right","Left"}))
				elseif (pl:WaterLevel() >= 2) then
					pl:StopSound("Player.Swim")
					pl:EmitSound("Player.Swim")
				else
					pl:StopSound("Concrete.StepRight")
					pl:StopSound("Concrete.StepLeft")
					pl:StopSound("Grass.StepRight")
					pl:StopSound("Grass.StepLeft")
					pl:StopSound("Dirt.StepRight")
					pl:StopSound("Dirt.StepLeft")
					pl:StopSound("SolidMetal.StepRight")
					pl:StopSound("SolidMetal.StepLeft")
					pl:StopSound("Snow.StepRight")
					pl:StopSound("Snow.StepLeft")
					pl:StopSound("Flesh.StepRight")
					pl:StopSound("Flesh.StepLeft")
					pl:StopSound("Sand.StepRight")
					pl:StopSound("Sand.StepLeft")
					pl:StopSound("Mud.StepRight")
					pl:StopSound("Mud.StepLeft")
					pl:StopSound("Tile.StepRight")
					pl:StopSound("Tile.StepLeft")
					pl:StopSound("MetalVent.StepRight")
					pl:StopSound("MetalVent.StepLeft")
					pl:StopSound("Wood.StepRight")
					pl:StopSound("Wood.StepLeft")
					pl:StopSound("MetalGrate.StepRight")
					pl:StopSound("MetalGrate.StepLeft")
					if (tr.MatType == MAT_CONCRETE) then

						pl:EmitSound("Concrete.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_DEFAULT) then

						pl:EmitSound("Concrete.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_GRASS) then

						pl:EmitSound("Grass.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_DIRT) then

						pl:EmitSound("Dirt.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_METAL) then

						pl:EmitSound("SolidMetal.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_SNOW) then

						pl:EmitSound("Snow.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_PLASTIC) then

						pl:EmitSound("Plastic.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_FLESH || tr.MatType == MAT_BLOODYFLESH) then

						pl:EmitSound("Flesh.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_SAND) then

						pl:EmitSound("Sand.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_SLOSH) then

						pl:EmitSound("Mud.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_TILE) then

						pl:EmitSound("Tile.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_VENT) then

						pl:EmitSound("MetalVent.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_COMPUTER) then

						pl:EmitSound("MetalVent.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_FOLIAGE) then

						pl:EmitSound("Wood.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_WOOD) then

						pl:EmitSound("Wood.Step"..table.Random({"Right","Left"}))

					elseif (tr.MatType == MAT_GRATE) then

						pl:EmitSound("MetalGrate.Step"..table.Random({"Right","Left"}))

					end
				end
			end
			 
		end
	end)

end


function RandomWeapon2(ply, wepslot)
	local weps = tf_items.ReturnItems()
	local class = "scout"
	if (string.find(ply:GetModel(),"soldier")) then
		class = "soldier"
	elseif (string.find(ply:GetModel(),"pyro")) then
		class = "pyro"
	elseif (string.find(ply:GetModel(),"demo")) then
		class = "demoman"
	elseif (string.find(ply:GetModel(),"heavy")) then
		class = "heavy"
	elseif (string.find(ply:GetModel(),"engineer")) then
		class = "engineer"
	elseif (string.find(ply:GetModel(),"medic")) then
		class = "medic"
	elseif (string.find(ply:GetModel(),"sniper")) then
		class = "sniper"
	elseif (string.find(ply:GetModel(),"spy")) then
		class = "spy"
	end
	local validweapons = {}
	for k, v in pairs(weps) do
		if v and istable(v) and isstring(wepslot) and v["name"] and v["item_slot"] == wepslot and !string.find(v["name"], "Jumper") and v["prefab"] and v["prefab"] != "weapon_melee_allclass" and v["used_by_classes"] and v["used_by_classes"][class] and v["craft_class"] == "weapon" then
			table.insert(validweapons, v["name"])
		end
	end

	local wep = table.Random(validweapons)
	ply:GiveItem(wep)
end

function RandomCosmetic(ply, wepslot)
	local weps = tf_items.ReturnItems()
	local class = "scout"
	if (string.find(ply:GetModel(),"soldier")) then
		class = "soldier"
	elseif (string.find(ply:GetModel(),"pyro")) then
		class = "pyro"
	elseif (string.find(ply:GetModel(),"demo")) then
		class = "demoman"
	elseif (string.find(ply:GetModel(),"heavy")) then
		class = "heavy"
	elseif (string.find(ply:GetModel(),"engineer")) then
		class = "engineer"
	elseif (string.find(ply:GetModel(),"medic")) then
		class = "medic"
	elseif (string.find(ply:GetModel(),"sniper")) then
		class = "sniper"
	elseif (string.find(ply:GetModel(),"spy")) then
		class = "spy"
	end
	local valid
	local validweapons = {}
	for k, v in pairs(weps) do
		if v and istable(v) and isstring(wepslot) and v["name"] and v.prefab and string.find(v["prefab"],wepslot) and v["used_by_classes"] and v["used_by_classes"][class] and !string.find(v["item_name"], "Taunt") and (v["item_class"] == "tf_wearable" || !IsValid(v["item_class"]) ) then
			table.insert(validweapons, v["name"])
		end
	end

	local wep = table.Random(validweapons)
	ply:GiveItem(wep)
end

hook.Add("TranslateActivity", "TF2PMStuff", function(pl, act) 
	local holdtype
    if (IsValid(pl:GetActiveWeapon())) then
       holdtype = pl:GetActiveWeapon().HoldType or pl:GetActiveWeapon():GetHoldType() 
    end
	if (pl:GetModel() == "models/player/scout.mdl" || pl:GetModel() == "models/pf2/player/scout.mdl" || pl:GetModel() == "models/player/engineer.mdl" || pl:GetModel() == "models/pf2/player/engineer.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER 
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_PRIMARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_PRIMARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/soldier.mdl" || pl:GetModel() == "models/pf2/player/soldier.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "pistol" || holdtype == "revolver") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SECONDARY2"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("jump_start_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SECONDARY2"))				
			elseif (holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_PRIMARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_PRIMARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/mercenary.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "pistol") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_PISTOL_MERCENARY"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_PISTOL_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_PISTOL_MERCENARY"))		
			elseif (holdtype == "dual") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_PISTOL_AKIMBO"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_PISTOL_AKIMBO"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_PISTOL_AKIMBO"))		
			elseif (holdtype == "revolver") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_REVOLVER_MERCENARY"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_REVOLVER_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_REVOLVER_MERCENARY"))		
			elseif (holdtype == "smg" || holdtype == "smg1") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SMG_MERCENARY"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_SMG_MERCENARY"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SMG_MERCENARY"))
			elseif (holdtype == "ar2") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_ASSAULT_RIFLE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_ASSAULT_RIFLE"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_ASSAULT_RIFLE"))

			elseif (holdtype == "crossbow") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_RAILGUN"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_RAILGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_RAILGUN"))

				elseif (holdtype == "scoped" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("Stand_RAILGUN_DEPLOYED"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("DeployedRun_RAILGUN"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("DeployedRun_RAILGUN"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("Swim_RAILGUN_DEPLOYED"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_RAILGUN_DEPLOYED"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Walk_RAILGUN_DEPLOYED"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("AttackStand_RAILGUN_DEPLOYED"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("AttackCrouch_RAILGUN_DEPLOYED"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("DeployedRun_RAILGUN"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY	

			elseif (holdtype == "supershotgun") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SUPERSHOTGUN"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_SUPERSHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SUPERSHOTGUN"))

			elseif (holdtype == "physgun") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_LIGHTNING_GUN"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_LIGHTNING_GUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LIGHTNING_GUN"))

elseif (holdtype == "deployed" ) then
     			  ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_CHAINGUN"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_CHAINGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpLand_CHAINGUN"))

			elseif (holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_ROCKETLAUNCHER"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_ROCKETLAUNCHER"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_ROCKETLAUNCHER_loop"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_ROCKETLAUNCHER_end"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadCrouch_ROCKETLAUNCHER"))
           ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_ROCKETLAUNCHER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_ROCKETLAUNCHER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_ROCKETLAUNCHER"))
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "smg" || holdtype == "ar2" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SHOTGUN"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_SHOTGUN_loop"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_SHOTGUN_end"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SHOTGUN_LOOP"))
           ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_SHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_SHOTGUN"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SHOTGUN"))
			elseif (holdtype == "melee" || holdtype == "melee2" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif (holdtype == "knife" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_COMBATKNIFE"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_COMBATKNIFE"))
           ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_COMBATKNIFE"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_COMBATKNIFE"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_COMBATKNIFE"))

elseif ( holdtype == "backstab" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_COMBATKNIFE"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("combatknife_fire_backstab"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("combatknife_fire_backstab"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_COMBATKNIFE"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_COMBATKNIFE"))
           ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_COMBATKNIFE"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_COMBATKNIFE"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_COMBATKNIFE"))

			elseif (holdtype == "grenade" || holdtype == "tools" || holdtype == "slam" || holdtype == "pda" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_DYNAMITE"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_DYNAMITE"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_DYNAMITE"))
           ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_DYNAMITE"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_DYNAMITE"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_DYNAMITE"))
			elseif (holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_BERSERK"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_BERSERK"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_BERSERK"))
           ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("a_jumpStart_BERSERK"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_BERSERK"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_BERSERK"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/merc_deathmatch.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "pistol" || holdtype == "revolver") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("Stand_PISTOL"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("Run_PISTOL"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("Run_PISTOL"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("Run_PISTOL"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SECONDARY2"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("AttackStand_PISTOL"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_PISTOL"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("jump_start_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SECONDARY2"))				
			elseif (holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						=  pl:GetSequenceActivity(pl:LookupSequence("Stand_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("Run_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("Run_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("Run_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_shotgun"))
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SHOTGUN"))

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("AttackStand_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("AttackCrouch_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_SHOTGUN_loop"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadStand_SHOTGUN_end"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("ReloadCrouch_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("Jump_Start_shotgun"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("Swim_SHOTGUN"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= pl:GetSequenceActivity(pl:LookupSequence("Jump_Start_shotgun"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= pl:GetSequenceActivity(pl:LookupSequence("Jump_Start_shotgun"))
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpLand_shotgun"))
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" || holdtype == "knife" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end	
	elseif (pl:GetModel() == "models/player/civilian.mdl" || pl:GetModel() == "models/pf2/player/civilian.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then 	
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER 
                ActivityTranslateFixTF2[ACT_LAND] = pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))		
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "knife") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "slam") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_BUILDING

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_BUILDING
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_BUILDING
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_swing"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_crouch_swing"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/scout.mdl" || pl:GetModel() == "models/player/hwm/engineer.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER 
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE

				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/heavy.mdl" || pl:GetModel() == "models/pf2/player/heavy.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif (holdtype == "deployed" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("STAND_Deployed_PRIMARY"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Swim_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Deployed_Primary"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY			
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/sniper.mdl" || pl:GetModel() == "models/pf2/player/sniper.mdl" || pl:GetModel() == "models/bots/skeleton_sniper/skeleton_sniper.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif (holdtype == "scoped" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("STAND_Deployed_PRIMARY"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Swim_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Deployed_Primary"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/demo.mdl" || pl:GetModel() == "models/pf2/player/demo.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "pistol" || holdtype == "smg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_ITEM1"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_ITEM1"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/medic.mdl" || pl:GetModel() == "models/pf2/player/medic.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "rpg" || holdtype == "crossbow" || holdtype == "pistol" || holdtype == "smg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/pyro.mdl" || pl:GetModel() == "models/pf2/player/pyro.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "pistol" || holdtype == "smg" ||  holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee2" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif (  holdtype == "melee" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/spy.mdl" || pl:GetModel() == "models/pf2/player/spy.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER 
                ActivityTranslateFixTF2[ACT_LAND] = pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))						
				
			elseif ( holdtype == "backstab" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("Melee_Overhand_Swing"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("Melee_Overhand_Swing"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE				
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY 
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "knife") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "slam") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_BUILDING
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_BUILDING
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_BUILDING
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_ALLCLASS_swing"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_ALLCLASS_crouch_swing"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end 
	elseif (pl:GetModel() == "models/player/hwm/scout.mdl" || pl:GetModel() == "models/player/hwm/engineer.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER 
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_PRIMARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_PRIMARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/soldier.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "pistol" || holdtype == "revolver") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_SECONDARY2"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("jump_start_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SECONDARY2"))				
			elseif (holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_PRIMARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_PRIMARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/heavy.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif (holdtype == "deployed" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("STAND_Deployed_PRIMARY"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Swim_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Deployed_Primary"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY			
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/sniper.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif (holdtype == "scoped" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("STAND_Deployed_PRIMARY"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Swim_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Deployed_Primary"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/demo.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "pistol" || holdtype == "smg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_ITEM1"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_ITEM1"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/medic.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "rpg" || holdtype == "crossbow" || holdtype == "pistol" || holdtype == "smg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/pyro.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "pistol" || holdtype == "smg" ||  holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee2" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif (  holdtype == "melee" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/player/hwm/spy.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif ( holdtype == "backstab" ) then
				  ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				  ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				  ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				  ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				  ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				  ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				  
				  ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("Melee_Overhand_Swing"))
				  ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("Melee_Overhand_Swing"))
				  ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				  ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				  ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				  ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				  ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				  ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				  ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "slam") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_BUILDING
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_BUILDING
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_BUILDING					
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "knife") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_ALLCLASS_swing"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_ALLCLASS_crouch_swing"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/scout/bot_scout.mdl" || pl:GetModel() == "models/bots/engineer/bot_engineer.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_PRIMARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_PRIMARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/soldier/bot_soldier.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_PRIMARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_PRIMARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "pistol" || holdtype == "revolver") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2")) 
                ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_SECONDARY2"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadstand_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= pl:GetSequenceActivity(pl:LookupSequence("reloadcrouch_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("jump_start_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_SECONDARY2"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_SECONDARY2"))	
			elseif (holdtype == "shotgun" || holdtype == "crossbow" || holdtype == "physgun" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif (holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/heavy/bot_heavy.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif (holdtype == "deployed" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("STAND_Deployed_PRIMARY"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Swim_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Deployed_Primary"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY					
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/sniper/bot_sniper.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif (holdtype == "scoped" ) then
     			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("STAND_Deployed_PRIMARY"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 							= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Swim_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("Crouch_Deployed_Primary"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= pl:GetSequenceActivity(pl:LookupSequence("PRIMARY_Deployed_Movement"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/demo/bot_demo.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "pistol" || holdtype == "smg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_CROUCHWALK_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_SWIM_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("crouch_walk_ITEM1"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackCrouch_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("swim_ITEM1"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_ITEM1"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/medic/bot_medic.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "shotgun" || holdtype == "rpg" || holdtype == "crossbow" || holdtype == "pistol" || holdtype == "smg" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee2" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/pyro/bot_pyro.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			elseif (holdtype == "rpg" || holdtype == "crossbow" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_PRIMARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_PRIMARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_PRIMARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_PRIMARY				
			elseif (holdtype == "shotgun" || holdtype == "pistol" || holdtype == "smg" ||  holdtype == "physgun" || holdtype == "revolver" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_LOOP] 						= ACT_MP_RELOAD_STAND_SECONDARY_LOOP
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND_END] 						= ACT_MP_RELOAD_STAND_SECONDARY_END
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "melee2" || holdtype == "knife" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif (  holdtype == "melee" || holdtype == "grenade" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackStand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("attackstand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	elseif (pl:GetModel() == "models/bots/spy/bot_spy.mdl") then
		if (IsValid(pl:GetActiveWeapon())) then
			if (holdtype == "normal") then
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			elseif ( holdtype == "backstab" ) then
				  ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				  ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				  ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				  ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				  ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_STAND_MELEE
				  ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				  
				  ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("Melee_Overhand_Swing"))
				  ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("Melee_Overhand_Swing"))
				  ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				  ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				  ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				  ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_MELEE
				  ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				  ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				  ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE		
			elseif ( holdtype == "slam") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_BUILDING
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCH_IDLE] 							= ACT_MP_STAND_BUILDING
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_BUILDING
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_GRENADE_BUILDING
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_CROUCH_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_SWIM] 						= ACT_MP_AIRWALK_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_BUILDING
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_BUILDING
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_BUILDING			
			elseif (holdtype == "rpg" || holdtype == "crossbow" || holdtype == "shotgun" || holdtype == "physgun" || holdtype == "pistol" || holdtype == "revolver" || holdtype == "smg" || holdtype == "ar2" || holdtype == "dual" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= ACT_MP_RUN_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_SECONDARY
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_SECONDARY
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_SECONDARY
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_SECONDARY	
			elseif ( holdtype == "knife") then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= ACT_MP_RUN_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= ACT_MP_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= ACT_MP_RUN_MELEE
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= ACT_MP_JUMP_LAND_MELEE
			elseif ( holdtype == "melee" || holdtype == "melee2" || holdtype == "grenade" || holdtype == "fist" ) then
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK
				ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_MELEE_ALLCLASS"))
				ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE_ALLCLASS"))
				
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_ALLCLASS_swing"))
				ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= pl:GetSequenceActivity(pl:LookupSequence("MELEE_ALLCLASS_stand_swing"))
				ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_MP_RELOAD_STAND_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= ACT_MP_AIRWALK_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_MELEE
				ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_MELEE
				ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_MELEE_ALLCLASS"))
			else 
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

                ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
                ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
                ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
                ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
                ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
                ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
                ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))				
			end
			return ActivityTranslateFixTF2[act] or act
		end
	end
	if (string.find(pl:GetModel(),"models/player") || string.find(pl:GetModel(),"models/bots/")) and pl:LookupBone("bip_head") != -1 then
		if (!IsValid(pl:GetActiveWeapon())) then

			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 						= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_RUN] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_WALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_AIRWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("airwalk_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_STAND_IDLE] 							= pl:GetSequenceActivity(pl:LookupSequence("stand_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_CROUCHWALK] 							= pl:GetSequenceActivity(pl:LookupSequence("run_MELEE"))

			ActivityTranslateFixTF2[ACT_MP_ATTACK_STAND_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
			ActivityTranslateFixTF2[ACT_MP_ATTACK_CROUCH_PRIMARYFIRE] 						= ACT_MP_ATTACK_STAND_PRIMARYFIRE
			ActivityTranslateFixTF2[ACT_MP_RELOAD_STAND] 						= ACT_RELOAD
			ActivityTranslateFixTF2[ACT_MP_RELOAD_CROUCH] 						= ACT_RELOAD
			ActivityTranslateFixTF2[ACT_MP_JUMP] 						= ACT_MP_JUMP_START_MELEE
			ActivityTranslateFixTF2[ACT_MP_AIRWALK] 						= pl:GetSequenceActivity(pl:LookupSequence("AIRWALK_LOSER"))
			ActivityTranslateFixTF2[ACT_MP_JUMP_START] 						= ACT_MP_JUMP_START_LOSER
			ActivityTranslateFixTF2[ACT_MP_JUMP_FLOAT] 						= ACT_MP_JUMP_FLOAT_LOSER
			ActivityTranslateFixTF2[ACT_LAND] 						= pl:GetSequenceActivity(pl:LookupSequence("jumpland_LOSER"))	
			
			return ActivityTranslateFixTF2[act] or act

		end
	end
end)
-- Civilian 2 / TF2GM Code

hook.Add("Think", "TF2PhonemesFix", function() 
	for _,pl in ipairs(ents.GetAll()) do 
		if (pl:GetModel() and string.StartWith(pl:GetModel(), "models/player/")) then
			if (pl:GetModel() == "models/player/scout.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/scout/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/soldier.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/soldier/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/demo.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/demo/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/heavy.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/heavy/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/engineer.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/engineer/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/medic.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/medic/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/sniper.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/sniper/phonemes/phonemes")
				end
			end
			if (pl:GetModel() == "models/player/spy.mdl") then
				if (CLIENT) then
					pl:SetupPhonemeMappings("player/spy/phonemes/phonemes")
				end
			end
		end
		if (pl:GetModel() == "models/player/scout.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/scout/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/soldier.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/soldier/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/demo.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/demo/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/heavy.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/heavy/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/engineer.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/engineer/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/medic.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/medic/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/sniper.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/sniper/phonemes/phonemes")
			end
		end
		if (pl:GetModel() == "models/player/spy.mdl") then
			if (CLIENT) then
				pl:SetupPhonemeMappings("player/spy/phonemes/phonemes")
			end
		end
	end
end)
hook.Add("DoPlayerDeath", "TF2DeathSoundMoment", function(ply,attacker,dmginfo) 
	if (((string.find(ply:GetModel(),"models/player") || string.find(ply:GetModel(),"models/bots/")) and ply:LookupBone("bip_head") != -1)) then
		if (dmginfo:IsExplosionDamage()) then
			ply:PrecacheGibs()
			ply:GibBreakClient(dmginfo:GetDamageForce() * 0.009)
			ply:EmitSound("physics/flesh/flesh_squishy_impact_hard2.wav",95,100,1,CHAN_STATIC)
			timer.Simple(0.02, function()
				ply:GetRagdollEntity():Remove()
			end)
		end
	end
	-- inb4 pedo accusation from bonziworld.org
	timer.Simple(0.1, function()
	
		for k,v in ipairs(ply:GetChildren()) do
			if (IsValid(v)) then
				if (v:GetClass() == "gmod_button" and v:GetModel() != nil and string.find(v:GetModel(),"player")) then
					v:SetParent(ply:GetRagdollEntity())
				end
			end
		end
		ply:SetBodyGroups("")
	end)
	if (ply:GetModel() == "models/player/scout.mdl" || ply:GetModel() == "models/pf2/player/scout.mdl" || ply:GetModel() == "models/player/hwm/scout.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/scout_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/scout_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/scout_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/scout_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/soldier.mdl" || ply:GetModel() == "models/pf2/player/soldier.mdl" || ply:GetModel() == "models/player/hwm/soldier.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/soldier_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/soldier_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/soldier_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/soldier_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/pyro.mdl" || ply:GetModel() == "models/pf2/player/pyro.mdl" || ply:GetModel() == "models/player/hwm/pyro.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/pyro_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/pyro_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/pyro_painsharp0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/pyro_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/demo.mdl" || ply:GetModel() == "models/pf2/player/demo.mdl" || ply:GetModel() == "models/player/hwm/demo.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/demoman_paincrticialdeath0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/demoman_paincrticialdeath0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/demoman_painsharp0"..math.random(1,7)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/demoman_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/heavy.mdl" || ply:GetModel() == "models/pf2/player/heavy.mdl" || ply:GetModel() == "models/player/hwm/heavy.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/heavy_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/heavy_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/heavy_painsharp0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/heavy_painsevere0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/engineer.mdl" || ply:GetModel() == "models/pf2/player/engineer.mdl" || ply:GetModel() == "models/player/hwm/engineer.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/engineer_paincrticialdeath0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/engineer_paincrticialdeath0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/engineer_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/engineer_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/medic.mdl" || ply:GetModel() == "models/pf2/player/medic.mdl" || ply:GetModel() == "models/player/hwm/medic.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/medic_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/medic_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/medic_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/medic_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/sniper.mdl" || ply:GetModel() == "models/pf2/player/sniper.mdl" || ply:GetModel() == "models/player/hwm/sniper.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/sniper_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/sniper_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/sniper_painsharp0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/sniper_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		end
	elseif (ply:GetModel() == "models/player/spy.mdl" || ply:GetModel() == "models/pf2/player/spy.mdl" || ply:GetModel() == "models/player/hwm/spy.mdl") then
		if (dmginfo:IsDamageType(DMG_CLUB)) then
			ply:EmitSound("vo/spy_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_ACID)) then
			ply:EmitSound("vo/spy_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
		elseif (dmginfo:IsDamageType(DMG_BLAST)) then
			ply:EmitSound("vo/spy_painsharp0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		else
			ply:EmitSound("vo/spy_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
		end
elseif (ply:GetModel() == "models/bots/scout/bot_scout.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/scout_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/scout_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/scout_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/scout_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/soldier/bot_soldier.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/soldier_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/soldier_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/soldier_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/soldier_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/pyro/bot_mvm_pyro.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/pyro_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/pyro_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/pyro_mvm_painsharp0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/pyro_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/hwm/demo.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/demoman_mvm_paincrticialdeath0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/demoman_mvm_paincrticialdeath0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/demoman_mvm_painsharp0"..math.random(1,7)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/demoman_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/heavy/bot_heavy.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/heavy_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/heavy_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/heavy_mvm_painsharp0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/heavy_mvm_painsevere0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/engineer/bot_engineer.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/engineer_mvm_paincrticialdeath0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/engineer_mvm_paincrticialdeath0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/engineer_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/engineer_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/medic/bot_medic.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/medic_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/medic_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/medic_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/medic_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/sniper/bot_sniper.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/sniper_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/sniper_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/sniper_mvm_painsharp0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/sniper_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/spy/bot_spy.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/spy_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/spy_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/spy_mvm_painsharp0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/spy_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
	
elseif (ply:GetModel() == "models/bots/scout/bot_scout.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/scout_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/scout_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/scout_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/scout_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/soldier/bot_soldier.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/soldier_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/soldier_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/soldier_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/soldier_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/pyro/bot_mvm_pyro.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/pyro_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/pyro_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/pyro_mvm_painsharp0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/pyro_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/hwm/demo.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/demoman_mvm_paincrticialdeath0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/demoman_mvm_paincrticialdeath0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/demoman_mvm_painsharp0"..math.random(1,7)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/demoman_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/heavy/bot_heavy.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/heavy_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/heavy_mvm_paincrticialdeath0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/heavy_mvm_painsharp0"..math.random(1,5)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/heavy_mvm_painsevere0"..math.random(1,3)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/engineer/bot_engineer.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/engineer_mvm_paincrticialdeath0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/engineer_mvm_paincrticialdeath0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/engineer_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/engineer_mvm_painsevere0"..math.random(1,6)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/medic/bot_medic.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/medic_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/medic_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/medic_mvm_painsharp0"..math.random(1,8)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/medic_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/sniper/bot_sniper.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/sniper_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/sniper_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/sniper_mvm_painsharp0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/sniper_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
elseif (ply:GetModel() == "models/bots/spy/bot_spy.mdl") then
	if (dmginfo:IsDamageType(DMG_CLUB)) then
		ply:EmitSound("vo/mvm/norm/spy_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_ACID)) then
		ply:EmitSound("vo/mvm/norm/spy_mvm_paincrticialdeath0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	elseif (dmginfo:IsDamageType(DMG_BLAST)) then
		ply:EmitSound("vo/mvm/norm/spy_mvm_painsharp0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	else
		ply:EmitSound("vo/mvm/norm/spy_mvm_painsevere0"..math.random(1,4)..".mp3",80,100,1,CHAN_STATIC)
	end
	end
end)
hook.Add("PreScaleDamage", "PreAttributeHook", function( ent, hitgroup, dmginfo )
	local inf, att = dmginfo:GetInflictor(), dmginfo:GetAttacker()
	ApplyAttributesFromEntity(dmginfo:GetInflictor(), "pre_damage", ent, hitgroup, dmginfo)
	
	if att:IsPlayer() then
		ApplyGlobalAttributesFromPlayer(att, "pre_damage", ent, hitgroup, dmginfo)
	end

	if ent:IsPlayer() then
		ApplyAttributesFromEntity(ent:GetActiveWeapon(), "pre_damage_received", ent, hitgroup, dmginfo)
		ApplyGlobalAttributesFromPlayer(ent, "pre_damage_received", ent, hitgroup, dmginfo)
	end
end)
hook.Add("PostScaleDamage", "PostAttributeHook", function( ent, hitgroup, dmginfo )
	local inf, att = dmginfo:GetInflictor(), dmginfo:GetAttacker()
	ApplyAttributesFromEntity(dmginfo:GetInflictor(), "post_damage", ent, hitgroup, dmginfo)
	
	if att:IsPlayer() then
		ApplyGlobalAttributesFromPlayer(att, "post_damage", ent, hitgroup, dmginfo)
	end

	if ent:IsPlayer() then
		ApplyAttributesFromEntity(ent:GetActiveWeapon(), "post_damage_received", ent, hitgroup, dmginfo)
		ApplyGlobalAttributesFromPlayer(ent, "post_damage_received", ent, hitgroup, dmginfo)
	end
end)
hook.Add("ScalePlayerDamage", "TF2CritOnHeadshot", function( ply, hitgroup, dmginfo )
	
	if (((string.find(ply:GetModel(),"models/player") || string.find(ply:GetModel(),"models/bots/")) and ply:LookupBone("bip_head") != -1)) then

		if ( hitgroup == HITGROUP_HEAD ) then
			dmginfo:SetDamageType(bit.bor(dmginfo:GetDamageType(),DMG_ACID))
			ply.WasHitInHead = true
			timer.Simple(0.1, function()
				ply.WasHitInHead = false
			end)
		end

	end
end)
hook.Add("EntityTakeDamage", "TF2PainSounds", function(ply, dmginfo) 

	local attacker = dmginfo:GetAttacker()
	if (ply:IsPlayer()) then

		if (((string.find(ply:GetModel(),"models/player") || string.find(ply:GetModel(),"models/bots/")) and ply:LookupBone("bip_head") != -1)) then
			if (dmginfo:IsDamageType(DMG_ACID)) then
				
				if (!ply.WasHitInHead) then
					dmginfo:ScaleDamage( 3 )
				end
				ParticleEffectAttach("crit_text",PATTACH_POINT_FOLLOW,ply,ply:LookupAttachment("head"))
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == ply:EntIndex()) then
						if (!ply.NextCritPainSound or CurTime() > ply.NextPainSound) then
							v:SendLua("Entity("..ply:EntIndex().."):NextCritund(\"TFPlayer.CritPain\")")
							ply.NextCritPainSound = CurTime() + 1.0
						end
					end
				end

			elseif (dmginfo:IsDamageType(DMG_POISON) and !dmginfo:IsDamageType(DMG_ACID)) then

				ParticleEffectAttach("minicrit_text",PATTACH_POINT_FOLLOW,ply,ply:LookupAttachment("head"))
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == ply:EntIndex()) then
						if (!ply.NextCritPainSound or CurTime() > ply.NextPainSound) then
							v:SendLua("Entity("..ply:EntIndex().."):NextCritund(\"TFPlayer.CritPain\")")
							ply.NextCritPainSound = CurTime() + 1.0
						end
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"TFPlayer.CritHitMini\")")
					end
				end

			end
		end
		
		if not ply.NextFlinch or CurTime() > ply.NextFlinch then
			ply:DoAnimationEvent(ACT_MP_GESTURE_FLINCH_CHEST, true)
			ply.NextFlinch = CurTime() + 0.5
		end
		if (!ply.NextPainSound or CurTime() > ply.NextPainSound) then
			if (ply:GetModel() == "models/player/scout.mdl" || ply:GetModel() == "models/player/hwm/scout.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Scout.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Scout.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/soldier.mdl" || ply:GetModel() == "models/player/hwm/soldier.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Soldier.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Soldier.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/pyro.mdl" || ply:GetModel() == "models/player/hwm/pyro.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Pyro.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Pyro.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/demo.mdl" || ply:GetModel() == "models/player/hwm/demo.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Demoman.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Demoman.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/heavy.mdl" || ply:GetModel() == "models/player/hwm/heavy.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Heavy.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Heavy.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/engineer.mdl" || ply:GetModel() == "models/player/hwm/engineer.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Engineer.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Engineer.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/medic.mdl" || ply:GetModel() == "models/player/hwm/medic.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Medic.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Medic.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/sniper.mdl" || ply:GetModel() == "models/player/hwm/sniper.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Sniper.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Sniper.ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/player/spy.mdl" || ply:GetModel() == "models/player/hwm/spy.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Spy.Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Spy.ExplosionDeath\")")
					end
				end
				
			elseif (ply:GetModel() == "models/bots/scout/bot_scout.mdl" || ply:GetModel() == "models/bots/hwm/scout/bot_scout.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Scout.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Scout.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/soldier/bot_soldier.mdl" || ply:GetModel() == "models/bots/hwm/soldier/bot_soldier.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Soldier.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Soldier.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/pyro/bot_pyro.mdl" || ply:GetModel() == "models/bots/hwm/pyro/bot_pyro.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Pyro.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Pyro.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/demo/bot_demo.mdl" || ply:GetModel() == "models/bots/hwm/demo/bot_demo.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Demoman.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Demoman.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/heavy/bot_heavy.mdl" || ply:GetModel() == "models/bots/hwm/heavy/bot_heavy.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Heavy.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Heavy.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/engineer/bot_engineer.mdl" || ply:GetModel() == "models/bots/hwm/engineer/bot_engineer.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Engineer.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Engineer.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/medic/bot_medic.mdl" || ply:GetModel() == "models/bots/hwm/medic/bot_medic.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Medic.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Medic.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/sniper/bot_sniper.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Sniper.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Sniper.MVM_ExplosionDeath\")")
					end
				end
			elseif (ply:GetModel() == "models/bots/spy/bot_spy.mdl") then
				for k,v in ipairs(player.GetAll()) do
					if (v:EntIndex() == attacker:EntIndex()) then
						attacker:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Spy.MVM_Death\")")
					else
						v:SendLua("Entity("..ply:EntIndex().."):EmitSound(\"Spy.MVM_ExplosionDeath\")")
					end
				end
			end
			ply.NextPainSound = CurTime() + 1.5
		end
	end

end)
hook.Add("UpdateAnimation", "TF2UpdateAnim", function(pl, velocity, maxseqgroundspeed) 

	if (pl:GetModel() == "models/player/scout.mdl"
	|| pl:GetModel() == "models/player/soldier.mdl"
	|| pl:GetModel() == "models/player/pyro.mdl"
	|| pl:GetModel() == "models/player/demo.mdl"
	|| pl:GetModel() == "models/player/heavy.mdl"
	|| pl:GetModel() == "models/player/engineer.mdl"
	|| pl:GetModel() == "models/player/medic.mdl"
	|| pl:GetModel() == "models/player/sniper.mdl"
		|| pl:GetModel() == "models/player/spy.mdl"
		|| pl:GetModel() == "models/player/mercenary.mdl"
		|| pl:GetModel() == "models/player/merc_deathmatch.mdl"
		|| pl:GetModel() == "models/player/civilian.mdl"
		|| pl:GetModel() == "models/player/scientist.mdl"
	|| pl:GetModel() == "models/pf2/player/scout.mdl"
	|| pl:GetModel() == "models/pf2/player/soldier.mdl"
	|| pl:GetModel() == "models/pf2/player/pyro.mdl"
	|| pl:GetModel() == "models/pf2/player/demo.mdl"
	|| pl:GetModel() == "models/pf2/player/heavy.mdl"
	|| pl:GetModel() == "models/pf2/player/engineer.mdl"
	|| pl:GetModel() == "models/pf2/player/medic.mdl"
	|| pl:GetModel() == "models/pf2/player/sniper.mdl"
	|| pl:GetModel() == "models/pf2/player/spy.mdl"
	|| pl:GetModel() == "models/player/hwm/scout.mdl"
	|| pl:GetModel() == "models/player/hwm/soldier.mdl"
	|| pl:GetModel() == "models/player/hwm/pyro.mdl"
	|| pl:GetModel() == "models/player/hwm/demo.mdl"
	|| pl:GetModel() == "models/player/hwm/heavy.mdl"
	|| pl:GetModel() == "models/player/hwm/engineer.mdl"
	|| pl:GetModel() == "models/player/hwm/medic.mdl"
	|| pl:GetModel() == "models/player/hwm/sniper.mdl"
	|| pl:GetModel() == "models/player/hwm/spy.mdl"
	|| pl:GetModel() == "models/bots/skeleton_sniper/skeleton_sniper.mdl"
	|| pl:GetModel() == "models/bots/scout/bot_scout.mdl"
	|| pl:GetModel() == "models/bots/soldier/bot_soldier.mdl"
	|| pl:GetModel() == "models/bots/pyro/bot_pyro.mdl"
	|| pl:GetModel() == "models/bots/demo/bot_demo.mdl"
	|| pl:GetModel() == "models/bots/heavy/bot_heavy.mdl"
	|| pl:GetModel() == "models/bots/engineer/bot_engineer.mdl"
	|| pl:GetModel() == "models/bots/medic/bot_medic.mdl"
	|| pl:GetModel() == "models/bots/sniper/bot_sniper.mdl"
	|| pl:GetModel() == "models/bots/spy/bot_spy.mdl") then 
        local pitch = math.Clamp(math.NormalizeAngle(-pl:EyeAngles().p), -45, 90)
        local pitch2 = math.Clamp(math.NormalizeAngle(-pl:EyeAngles().p), -1, 1)
        pl:SetPoseParameter("body_pitch", pitch)
        pl:SetPoseParameter("head_pitch", pitch2)
        
        if not pl.PlayerBodyYaw or not pl.TargetBodyYaw then
            pl.TargetBodyYaw = pl:EyeAngles().y
            pl.PlayerBodyYaw = pl.TargetBodyYaw
        end
        
        local diff
        diff = pl.PlayerBodyYaw - pl:EyeAngles().y
        local yaw
        yaw = pl.PlayerBodyYaw - pl:EyeAngles().y
        
        if velocity:Length2D() > 0.5 or diff > 45 or diff < -45 then
            pl.TargetBodyYaw = pl:EyeAngles().y
        end
            
        local d = pl.TargetBodyYaw - pl.PlayerBodyYaw
        if d > 180 then
            pl.PlayerBodyYaw = math.NormalizeAngle(Lerp(0.2, pl.PlayerBodyYaw+360, pl.TargetBodyYaw))
        elseif d < -180 then
            pl.PlayerBodyYaw = math.NormalizeAngle(Lerp(0.2, pl.PlayerBodyYaw-360, pl.TargetBodyYaw))
        else
            pl.PlayerBodyYaw = Lerp(0.2, pl.PlayerBodyYaw, pl.TargetBodyYaw)
        end
        
        pl:SetPoseParameter("body_yaw", yaw)
		if CLIENT then
			pl:SetRenderAngles(Angle(0, pl.PlayerBodyYaw, 0))
		end
    else
        return GAMEMODE:UpdateAnimation(pl, velocity, maxseqgroundspeed)
    end
end) 

hook.Add("PlayerSpawn", "TF2BotModels", function(ply) 
	ply.TempAttributes = {}
	if (!ply.TFBot and !ply.LeadBot) then
		
		timer.Simple(0.01, function()
			if (ply:IsBot()) then
				ply:SetModel(table.Random({
					"models/player/scout.mdl",
					"models/player/soldier.mdl",
					"models/player/pyro.mdl",
					"models/player/demo.mdl",
					"models/player/heavy.mdl",
					"models/player/engineer.mdl",
					"models/player/medic.mdl",
					"models/player/sniper.mdl",
					"models/player/spy.mdl",
					"models/pf2/player/scout.mdl",
					"models/pf2/player/soldier.mdl",
					"models/pf2/player/pyro.mdl",
					"models/pf2/player/demo.mdl",
					"models/pf2/player/heavy.mdl",
					"models/pf2/player/engineer.mdl",
					"models/pf2/player/medic.mdl",
					"models/pf2/player/sniper.mdl",
					"models/pf2/player/spy.mdl",
					"models/pf2/player/civilian.mdl",
					"models/player/mercenary.mdl",
					"models/player/merc_deathmatch.mdl",
					"models/player/civilian.mdl"
				}))
			end
		end)
		timer.Simple(0.1, function()
			if (((string.find(ply:GetModel(),"models/player") || string.find(ply:GetModel(),"models/bots/")) and ply:LookupBone("bip_head") != -1)) then
				if (ply:IsBot()) then

					RandomCosmetic(ply, "hat")
					RandomCosmetic(ply, "misc")
				end
				ply:SetViewOffset(Vector(0,0,72))
			end
			if (ply:GetModel() == "models/player/scout.mdl" || ply:GetModel() == "models/player/hwm/scout.mdl"
				|| ply:GetModel() == "models/player/engineer.mdl" || ply:GetModel() == "models/player/hwm/engineer.mdl"
				|| ply:GetModel() == "models/player/sniper.mdl" || ply:GetModel() == "models/player/hwm/sniper.mdl"
				|| ply:GetModel() == "models/player/spy.mdl" || ply:GetModel() == "models/player/hwm/spy.mdl" 
				|| ply:GetModel() == "models/bots/scout/bot_scout.mdl"
				|| ply:GetModel() == "models/bots/engineer/bot_engineer.mdl"
				|| ply:GetModel() == "models/bots/sniper/bot_sniper.mdl"
				|| ply:GetModel() == "models/bots/spy/bot_spy.mdl") then
				ply:SetHealth(125)
				ply:SetMaxHealth(125)
			elseif (ply:GetModel() == "models/player/soldier.mdl" || ply:GetModel() == "models/player/hwm/soldier.mdl"
				|| ply:GetModel() == "models/bots/soldier/bot_soldier.mdl") then
				ply:SetHealth(200)
				ply:SetMaxHealth(200)
			elseif (ply:GetModel() == "models/player/pyro.mdl" || ply:GetModel() == "models/player/hwm/pyro.mdl"
					|| ply:GetModel() == "models/player/demo.mdl" || ply:GetModel() == "models/player/hwm/demo.mdl"
					|| ply:GetModel() == "models/bots/demo/bot_demo.mdl" || ply:GetModel() == "models/bots/pyro/bot_pyro.mdl") then
				ply:SetHealth(175)
				ply:SetMaxHealth(175)
			elseif (ply:GetModel() == "models/player/heavy.mdl" || ply:GetModel() == "models/player/hwm/heavy.mdl"
				|| ply:GetModel() == "models/bots/heavy/bot_heavy.mdl") then
				ply:SetHealth(300)
				ply:SetMaxHealth(300)
			elseif (ply:GetModel() == "models/player/medic.mdl" || ply:GetModel() == "models/player/hwm/medic.mdl"
				|| ply:GetModel() == "models/bots/medic/bot_medic.mdl") then
				ply:SetHealth(150)
				ply:SetMaxHealth(150)
			end
		end)
	end
end)