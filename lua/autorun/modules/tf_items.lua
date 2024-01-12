AddCSLuaFile()

module("tf_items", package.seeall)

tf_lang.Load("tf_english.txt")

local items_game = util.KeyValuesToTable(file.Read("scripts/items/items_game.txt", "GAME")) 
local prefabs = items_game["prefabs"]
local attributes = items_game["attributes"]
local items = items_game["items"] 
local tf_items = {}

local AttributesByID = {}
local ItemsByID = {}
local PrefabsByName = {}
local Items = {n=0}
local Attributes = {n=0}
local Qualities = {n=0}
local Particles = {n=0}

tf_items.AttributesByID = AttributesByID
tf_items.ItemsByID = ItemsByID
tf_items.PrefabsByName = PrefabsByName
tf_items.Items = Items
tf_items.Attributes = Attributes
tf_items.Qualities = Qualities
tf_items.Particles = Particles

local ITEM = {}

ITEM.IsTFItem = true

function ITEM:SetItemIndex(i)
	self.dt.ItemID = i
end

function ITEM:ItemIndex()
	return self.dt.ItemID or 0
end

function ITEM:GetItemData()
	local item = tf_items.ItemsByID[self:ItemIndex()]
	return item or {}
end

function ITEM:SetupDataTables()
	self:DTVar("Int", 0, "ItemID")
	if SERVER then self.dt.ItemID = -1 end
end

function InitializeAsBaseItem(tbl)
	-- Add all base TF item functions to the entity's metatable
	table.Merge(tbl, ITEM)
end


for k, v in pairs(items_game["items"]) do
    -- fix an issue where prefabs would sometimes be split up and invalid
    if v.prefab and string.find(v.prefab, " ") then
        local tab = string.Split(v.prefab, " ")
        for i, o in pairs(tab) do
            if string.find(o, "weapon") then
                v.prefab = o
            end
        end
    end
	
	if (v.prefab) then
		if (string.find(v.prefab,"valve ")) then
			v.prefab = string.Replace(v.prefab,"valve ", "")
		elseif (string.find(v.prefab," paintkit_base")) then 	
			v.prefab = string.Replace(v.prefab," paintkit_base", "")
		end
	end

    -- load visuals
    if prefabs[v.prefab] and v.visuals then
        local prefab = prefabs[v.prefab] 
        if prefab.visuals then
            local oldvisuals = prefab.visuals
            table.Merge(v.visuals, oldvisuals)
        end
    end
    if (!v.attributes) then
        v.attributes = {}
    end
    if prefabs[v.prefab] and v.static_attrs then
        local prefab = prefabs[v.prefab]
        if prefab.static_attrs then
            local oldvisuals = v.static_attrs
            v.static_attrs = prefab.static_attrs
            table.Merge(v.static_attrs, oldvisuals)
        end
    end
    if prefabs[v.prefab] and v.attributes then
        local prefab = prefabs[v.prefab]
        if prefab.attributes then 
            local oldvisuals = v.attributes
            v.attributes = prefab.attributes
            if (v.static_attrs) then
                table.Merge(v.static_attrs, v.attributes)
            end
            table.Merge(v.attributes, oldvisuals)
        end
    end

    -- add prefab variables that don't exist
    if v.prefab and prefabs[v.prefab] then
        for i, o in pairs(prefabs[v.prefab]) do
            if !v[i] then
                v[i] = o
            end
        end
    end

	if (string.find(v.name,"Grappling")) then
		v.id = 10000666
	end
	if (string.find(v.name,"MvM GateBot ")) then
		v.item_name = v.name
        v.item_slot = "head"
        v.item_class = "tf_wearable_item"
		v.item_quality = "collectors"
	end
	if (string.find(v.name,"Gloves of Running Urgently MvM")) then
		v.item_name = v.name
		v.item_quality = "collectors"
	end
	if (!v.item_quality) then
		v.item_quality = "unique"
	end
    if (!v.item_name) then
        v.item_name = v.name
		v.item_quality = "unique"
    end
    if (v.item_slot == "hat" or v.equip_region == "hat" or v.prefab == "hat") then
        v.item_class = "tf_wearable"
		v.item_quality = "unique"
		v.visuals = {}
		v.visuals.hide_player_bodygroup_name = { "hat" }
    elseif (v.prefab == "misc" or v.prefab == "no_craft misc" or v.prefab == "valve base_misc" or v.prefab == "base_misc" or v.prefab == "no_craft misc marketable") then
        v.item_slot = "misc"
        v.item_class = "tf_wearable_item"
		v.item_quality = "unique"
    end
	
    if v.item_name and isstring(v.item_name) and v.item_name != "" then
        v.name = tf_lang.GetRaw(v.item_name)
        tf_items.Items[v.name] = v
		v.show_in_armory = 1
		if (v.prefab and string.find(v.prefab,"medal")) then
			v.item_slot = "thislagsmypcimsorry"
		end
        if v.name == "Red-Tape Recorder" then
			v.item_class = "tf_weapon_rtr" 
            v.item_slot = "primary"
		end
        if v.name == "Sapper" then 
            v.item_slot = "primary"
		end
        if v.name == "Half-Zatoichi" then
			v.item_class = "tf_weapon_katana"
            v.model_player = "models/weapons/c_models/c_shogun_katana/c_shogun_katana.mdl"
			v.item_slot = "melee"
        end
        if v.name == "Bootlegger" then
			v.item_class = "tf_wearable_item"
			v.item_slot = "secondary"
        end
        if v.name == "Ali Baba's Wee Booties" then
			v.item_class = "tf_wearable_item"
			v.item_slot = "secondary"
        end
        if v.name == "Concheror" then
			v.item_class = "tf_weapon_buff_item_conch"
		end
        if v.name == "Sandvich" then
			v.attach_to_hands = 1
            v.item_slot = "secondary"
			v.item_class = "tf_weapon_lunchbox"
			v.used_by_classes = {}
			v.used_by_classes["heavy"] = {}
			v.used_by_classes["heavy"] = 1
			v.item_quality = "unique"
        end
        if v.name == "Bonk! Atomic Punch" then
			v.attach_to_hands = 1
            v.item_slot = "secondary"
			v.item_class = "tf_weapon_lunchbox_drink"
			v.used_by_classes = {}
			v.used_by_classes["scout"] = {}
			v.used_by_classes["scout"] = 1
			v.item_quality = "unique"
        end
        if v.name == "Rainblower" then
			v.item_class = "tf_weapon_flamethrower_rb"
        end
        if v.name == "Quick-Fix" then
			v.item_class = "tf_weapon_medigun_qf"
		end
        if v.name == "Vaccinator" then
			v.item_class = "tf_weapon_medigun_vaccinator"
		end
        if v.name == "Beggar's Bazooka" then
			v.item_class = "tf_weapon_rocketlauncher_rapidfire"
        end
        if v.name == "Phlogistinator" then
            v.item_class = "tf_weapon_phlogistinator"
        end
        if v.name == "Degreaser" then
            v.item_slot = "primary"
			v.item_class = "tf_weapon_flamethrower"
			v.used_by_classes = {}
			v.used_by_classes["pyro"] = {}
			v.used_by_classes["pyro"] = 1
			v.item_quality = "unique"
        end
        if v.name == "Widowmaker" then
			v.item_class = "tf_weapon_shotgun_imalreadywidowmaker"
		end  
        if v.name == "Spy-cicle" then
			v.item_class = "tf_weapon_knife_icicle" 
        end
        if v.name == "Escape Plan" then
			v.item_class = "tf_weapon_pickaxe" 
		end
        if v.name == "Tomislav" then
			v.item_class = "tf_weapon_minigun"  
            print("Tomislav Time")
        end   
        if v.name == "Flame Thrower" then
			v.attach_to_hands = 1
			v.item_slot = "primary"
			v.used_by_classes = {}
			v.used_by_classes["pyro"] = {}
			v.used_by_classes["pyro"] = 1
			v.item_class = "tf_weapon_flamethrower" 
			v.item_quality = "unique" 
        end    
        if v.name == "AWPer Hand" then
			v.attach_to_hands = 1
			v.used_by_classes = {}
			v.used_by_classes["sniper"] = {}
			v.used_by_classes["sniper"] = 1
			v.item_slot = "primary"
			v.item_class = "tf_weapon_sniperrifle" 
			v.item_quality = "unique" 
        end    
		if v.name == "Your Eternal Reward" or v.name == "Wanga Prick" then
			v.attach_to_hands = 1
            v.item_slot = "melee"
            v.show_in_armory = 1 
			v.used_by_classes = {}
			v.visuals = {}
			v.visuals["animation_replacement"] = {}
			v.visuals["animation_replacement"]["ACT_VM_DRAW"] = {}
			v.visuals["animation_replacement"]["ACT_VM_DRAW"] = "ACT_ITEM2_VM_DRAW"
			v.visuals["animation_replacement"]["ACT_VM_IDLE"] = {}
			v.visuals["animation_replacement"]["ACT_VM_IDLE"] = "ACT_ITEM2_VM_IDLE"
			v.visuals["animation_replacement"]["ACT_VM_HITCENTER"] = {}
			v.visuals["animation_replacement"]["ACT_VM_HITCENTER"] = "ACT_ITEM2_VM_HITCENTER"
			v.visuals["animation_replacement"]["ACT_VM_SWINGHARD"] = {}
			v.visuals["animation_replacement"]["ACT_VM_SWINGHARD"] = "ACT_ITEM2_VM_SWINGHARD"
			v.visuals["animation_replacement"]["ACT_BACKSTAB_VM_UP"] = {}
			v.visuals["animation_replacement"]["ACT_BACKSTAB_VM_UP"] = "ACT_ITEM2_BACKSTAB_VM_UP"
			v.visuals["animation_replacement"]["ACT_BACKSTAB_VM_DOWN"] = {}
			v.visuals["animation_replacement"]["ACT_BACKSTAB_VM_DOWN"] = "ACT_ITEM2_BACKSTAB_VM_DOWN"
			v.visuals["animation_replacement"]["ACT_BACKSTAB_VM_IDLE"] = {}
			v.visuals["animation_replacement"]["ACT_BACKSTAB_VM_IDLE"] = "ACT_ITEM2_BACKSTAB_VM_IDLE" 
			v.used_by_classes["spy"] = {}
			v.used_by_classes["spy"] = 1
			v.item_class = "tf_weapon_knife"
			v.item_quality = "unique"
            v.prefab = "weapon_eternal_reward"
		end
		if v.prefab == "weapon_eyelander" or v.prefab == "weapon_sword" or v.prefab == "weapon_demo_sultan_sword" then
			v.attach_to_hands = 1
            v.item_slot = "melee"
            v.show_in_armory = 1 
			v.used_by_classes = {}
			v.used_by_classes["demoman"] = {}
			v.used_by_classes["demoman"] = 1
            if (v.name != "Half-Zatoichi") then
			    v.item_class = "tf_weapon_sword"	
            else
                v.used_by_classes["soldier"] = {}
                v.used_by_classes["soldier"] = 1
            end
			v.item_quality = "unique"
		end
		if v.name == "Scotsman's Skullcutter" then
			v.attach_to_hands = 1
            v.item_slot = "melee"
            v.show_in_armory = 1 
			v.item_class = "tf_weapon_sword"	
			v.used_by_classes = {}
			v.used_by_classes["demoman"] = {}
			v.used_by_classes["demoman"] = 1
			v.item_quality = "unique"
		end 
    elseif !v.item_name and v.name then
        tf_items.Items[v.name] = v
    end

	tf_items.Items.n = tf_items.Items.n + 1
    v.id = k
    v.propername = 0



    tf_items.Items[v.name] = v
    tf_items.ItemsByID[v.id] = v
	if (v.item_slot == "primary" || v.item_slot == "secondary" || v.item_slot == "melee" || v.item_slot == "building") then
		if (v.used_by_classes) then
			if (v.used_by_classes["scout"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Scout",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then 
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["soldier"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Soldier",
					Spawnable = true, 
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["pyro"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Pyro",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["demoman"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Demoman",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["heavy"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Heavy",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["engineer"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Engineer",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["medic"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Medic",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["sniper"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Sniper",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["spy"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Weapons - Spy",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Weapons - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
		end  
	end
if (v.item_slot == "misc" || v.item_class and string.find(v.item_class,"wearable") and v.prefab and !string.find(v.prefab,"tournament_medal") || v.prefab and string.find(v.prefab,"misc") and !string.find(v.prefab,"tournament_medal")) then
		if (v.used_by_classes) then
			if (v.used_by_classes["scout"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Scout",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["soldier"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Soldier",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["pyro"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Pyro",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["demoman"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Demoman",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["heavy"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Heavy",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["engineer"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Engineer",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["medic"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Medic",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["sniper"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Sniper",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["spy"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Misc - Spy",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Misc - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
		end
	end
if (v.item_slot == "head" || v.prefab and string.find(v.prefab,"hat")) then 
		if (v.used_by_classes) then
			if (v.used_by_classes["scout"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Scout",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["soldier"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Soldier",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["pyro"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Pyro",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["demoman"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Demoman",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["heavy"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Heavy",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["engineer"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Engineer",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["medic"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Medic",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["sniper"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Sniper",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} ) 
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
if (v.used_by_classes["spy"]) then
				list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
					ClassName = string.Replace(v.name," ", "_"),
					PrintName = v.name,
					Category = "Hats - Spy",
					Spawnable = true,
					BackpackIcon = v.image_inventory
				} )
				if (v.used_by_classes["scout"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_scout", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Scout",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["soldier"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_soldier", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Soldier",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["pyro"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_pyro", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Pyro",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["demoman"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_demoman", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Demoman",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["heavy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_heavy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Heavy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["engineer"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_engineer", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Engineer",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["medic"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_medic", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Medic",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["sniper"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_sniper", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Sniper",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
if (v.used_by_classes["spy"]) then
					list.Set( "TFWeapon", string.Replace(v.name," ", "_").."_spy", {
						ClassName = string.Replace(v.name," ", "_"),
						PrintName = v.name,
						Category = "Hats - Spy",
						Spawnable = true,
						BackpackIcon = v.image_inventory,
						ClickSound = v.mouse_pressed_sound
					} )
				end
			end
		end
	end

end

tf_items.Attributes.n = #attributes
tf_items.Items.n = #items

local function GiveItemAutoComplete(cmd, args, slotfilter)
	local pl = LocalPlayer()
	
	classname = "scout"
	if (string.find(pl:GetModel(),"soldier")) then
		classname = "soldier"
	elseif (string.find(pl:GetModel(),"merc")) then
		classname = "soldier"
	elseif (string.find(pl:GetModel(),"civilian")) then
		classname = "soldier"
	elseif (string.find(pl:GetModel(),"pyro")) then
		classname = "pyro"
	elseif (string.find(pl:GetModel(),"demo")) then
		classname = "demoman"
	elseif (string.find(pl:GetModel(),"heavy")) then
		classname = "heavy"
	elseif (string.find(pl:GetModel(),"engineer")) then
		classname = "engineer"
	elseif (string.find(pl:GetModel(),"medic")) then
		classname = "medic"
	elseif (string.find(pl:GetModel(),"sniper")) then
		classname = "sniper"
	elseif (string.find(pl:GetModel(),"spy")) then
		classname = "spy"
	end
	t = {}
	j = {}
	s = string.gsub(args, "^%s*", "^")
	
	if not classname then return t end
	
	class_lst = {}
	for k,v in pairs(Items) do
		if type(v)=="table" then
			table.insert(class_lst,k)
		end
	end
	
	table.sort(class_lst)
	
	for _,k in ipairs(class_lst) do
		if string.find(k, s) then
			table.insert(t,cmd.." "..k)
		end
	end
	
	for _,k in ipairs(class_lst) do
		if string.find(k, string.gsub("", "^%s*", "^")) then
			table.insert(j,k)
		end
	end
	
	
	return t
end

function AC_GiveItem(cmd, args)
	return GiveItemAutoComplete(cmd, args, filter_all)
end

if SERVER then
	local META = FindMetaTable("Player")

    function META:ClearItemSetAttributes()
        self.ItemSetAttributes = nil
    end
    
    function META:GiveItemSetAttributes()
        local item_set
        if not self.ItemLoadout then return end
        
        for name, set in pairs(ItemSets) do
            local complete = true
            for _,n in ipairs(set.items or {}) do
                local found = false
                for _,m in ipairs(self.ItemLoadout) do
                    if n == m then
                        found = true
                        break
                    end
                end
                if not found then
                    complete = false
                    break
                end
            end
            
            if complete then
                item_set = set
                break
            end
        end
        
        if not item_set then return end
        self.ItemSetAttributes = item_set.attributes
        
        if self.ItemSetAttributes then
            self.ItemSetTable = {}
            ApplyAttributes(self.ItemSetAttributes, "equip", self.ItemSetTable, self)
        end
    end

	function META:EquipInLoadout(itemname, properties, noupdate)
		if not self.ItemLoadout or not self.ItemProperties then return end
		
		local activeitem = self:GetActiveWeapon().GetItemData and self:GetActiveWeapon():GetItemData()
		local reselect = activeitem and activeitem.item_class
		
		local newitem = Items[itemname]
		if not newitem then return end
		
		-- It's a bundle, don't equip it but equip all of its items instead
		if newitem.item_class == "bundle" then
			for _,v in ipairs(newitem.bundle or {}) do
				MsgFN("%s: Equipping item '%s'", itemname, v)
				self:EquipInLoadout(v, {}, true)
			end
			return
		end
		
		-- Looking for an item which is in the same slot as the item we want to equip
		local changed = false
		for k,v in ipairs(self.ItemLoadout) do
			local olditem = Items[v]
			if olditem and newitem.item_slot == olditem.item_slot and (string.find(newitem.item_class,"tf_weapon") || string.find(newitem.item_class,"demoshield") || string.find(newitem.prefab,"boots") || string.find(newitem.item_class,"tideturnr") || string.find(newitem.item_class,"chargintard") ) then
				changed = true
				self.ItemLoadout[k] = itemname
				self.ItemProperties[k] = properties
				if activeitem and activeitem.item_slot == newitem.item_slot then
					reselect = newitem.item_class
				end
				break
			end
		end
		
		-- The new item is in an empty slot, add it to the loadout
		if not changed then
			table.insert(self.ItemLoadout, itemname)
			self.ItemProperties[#self.ItemLoadout] = properties
			changed = true
		end
		
		if changed and self:Alive() and not noupdate then
			if reselect then
				self:SelectWeapon(reselect)
			end
		end
	end

	function META:GiveItem(itemname, properties)
		if not self:Alive() then return end
		
		local item
		if type(itemname)=="number" then
			item = tf_items.ItemsByID[itemname]
		else
			item = tf_items.Items[itemname]
		end
		
		if not item then
			--ErrorNoHalt(Format("Item '%s'does not exist!\n", itemname))
			return
		end
		--if not item.used_by_classes[self:GetPlayerClass()] then return end
		
		local class = item.item_class
		if item.use_class_suffix==1 then
			class = class.."_"..self:GetPlayerClass()
		end
		
		local reselectweapon
		
		if weapons.GetStored(class) then
			for _,w in pairs(self:GetWeapons()) do
				if w.GetItemData and w:GetItemData().item_slot == item.item_slot then
					if self:GetActiveWeapon() == w then
						reselectweapon = true
					end
					if self.AmmoMax[w.Primary.Ammo] then
						self:SetAmmoCount(self.AmmoMax[w.Primary.Ammo], w.Primary.Ammo)
					end
					self:StripWeapon(w:GetClass())
					break
				end
			end
		end
		
		--MsgN(Format("Giving '%s' to %s",itemname,tostring(self)))
		--self.WeaponItemIndex = item.id
		_G.TFWeaponItemOwner = self
		_G.TFWeaponItemIndex = item.id
		-- Initialization of the item is now done in SWEP:Deploy
		local weapon = NULL
		if (item.item_class == "tf_weapon_shotgun") then
			if (string.find(self:GetModel(),"/heavy")) then
				item.item_slot = "secondary"
				class = "tf_weapon_shotgun_hwg"
			elseif (string.find(self:GetModel(),"/soldier")) then
				item.item_slot = "secondary"
				class = "tf_weapon_shotgun_soldier"
			elseif (string.find(self:GetModel(),"/merc")) then
				item.item_slot = "secondary" 
				class = "tf_weapon_shotgun_soldier"
			elseif (string.find(self:GetModel(),"/pyro")) then
				item.item_slot = "secondary"
				class = "tf_weapon_shotgun_pyro"
			else
				class = "tf_weapon_shotgun_primary"
			end
		end
		if (item.item_class == "saxxy") then

			if (string.find(self:GetModel(),"/scout")) then
				class = "tf2_weapon_bat"
			elseif (string.find(self:GetModel(),"/soldier")) then
				class = "tf2_weapon_shovel"
			elseif (string.find(self:GetModel(),"/pyro")) then
				class = "tf2_weapon_fireaxe"
			elseif (string.find(self:GetModel(),"/demo")) then
				class = "tf2_weapon_bottle"
			elseif (string.find(self:GetModel(),"/heavy")) then
				class = "tf2_weapon_fists"
			elseif (string.find(self:GetModel(),"/engineer")) then
				class = "tf2_weapon_wrench"
			elseif (string.find(self:GetModel(),"/medic")) then
				class = "tf2_weapon_bonesaw"
			elseif (string.find(self:GetModel(),"/sniper")) then
				class = "tf2_weapon_club"
			elseif (string.find(self:GetModel(),"/spy")) then
				class = "tf2_weapon_knife"
			end
		end
		
		if (!item.item_class or item.item_class and string.find(item.item_class,"wearable")) then
			class = "gmod_button"
		end
		class = string.Replace(class,"tf_weapon","tf2_weapon")
		class = string.Replace(class,"saxxy","tf2_weapon_bat")
		class = string.Replace(class,"katana","sword")
		local classname
		if (string.find(self:GetModel(),"/heavy")) then
			classname = "heavy"
		elseif (string.find(self:GetModel(),"/engineer")) then
			classname = "engineer"
		elseif (string.find(self:GetModel(),"/soldier")) then
			classname = "soldier"
		elseif (string.find(self:GetModel(),"/merc")) then
			classname = "soldier"	
		elseif (string.find(self:GetModel(),"/civilian")) then
			classname = "soldier"
		elseif (string.find(self:GetModel(),"/pyro")) then
			classname = "pyro"
		elseif (string.find(self:GetModel(),"/scout")) then
			classname = "scout"
		elseif (string.find(self:GetModel(),"/medic")) then
			classname = "medic"
		elseif (string.find(self:GetModel(),"/sniper")) then
			classname = "sniper"
		elseif (string.find(self:GetModel(),"/skeleton")) then
			classname = "sniper"
		elseif (string.find(self:GetModel(),"/spy")) then
			classname = "spy"
		elseif (string.find(self:GetModel(),"/demo")) then
			classname = "demo"
		end
		weapon = ents.Create(class)
		weapon.Owner = self
		weapon:SetOwner(self)
		weapon:SetPos(self:GetPos())
		weapon:SetAngles(self:GetAngles())
		if (class != "gmod_button") then
			weapon:SetItemIndex(item.id)
		end
		if (class == "gmod_button") then
			if (classname == "heavy") then
				if (item.model_player_per_class and item.model_player_per_class.heavy) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.heavy,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "engineer") then
				if (item.model_player_per_class and item.model_player_per_class.engineer) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.engineer,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "soldier") then
				if (item.model_player_per_class and item.model_player_per_class.soldier) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.soldier,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "pyro") then
				if (item.model_player_per_class and item.model_player_per_class.pyro) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.pyro,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "scout") then
				if (item.model_player_per_class and item.model_player_per_class.scout) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.scout,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "medic") then
				if (item.model_player_per_class and item.model_player_per_class.medic) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.medic,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "sniper") then
				if (item.model_player_per_class and item.model_player_per_class.sniper) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.sniper,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "spy") then
				if (item.model_player_per_class and item.model_player_per_class.spy) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.spy,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			elseif (classname == "demo") then
				if (item.model_player_per_class and item.model_player_per_class.demo) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.demo,"%s",classname) or item.model_world or item.model_player))
				elseif (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			else
				if (item.model_player_per_class and item.model_player_per_class.basename) then
					weapon:SetModel(tostring(string.Replace(item.model_player_per_class.basename,"%s",classname) or item.model_world or item.model_player))
				else
					weapon:SetModel(tostring(item.model_world or item.model_player))
				end
			end
			weapon:SetParent(self)
			weapon:AddEffects(bit.bor(EF_BONEMERGE,EF_BONEMERGE_FASTCULL))
		else
			weapon:Spawn()
		end
		weapon:SetNWString("WorldModel2",tostring(item.model_world or item.model_player))
		weapon:SetNWString("PrintName2",tf_lang.GetRaw(item.item_name) or item.name)
		weapon:SetNW2Var("ItemData",item)
		if (item.visuals and (item.visuals.sound_double_shot or item.visuals.sound_melee_miss or item.visuals.sound_single_shot)) then
			weapon:SetNWString("PrimarySound2",item.visuals.sound_double_shot or item.visuals.sound_melee_miss or item.visuals.sound_single_shot)
		end
        
		if (item.item_slot == "head") then
			self:SetBodygroup(self:FindBodygroupByName("hat"), 1)
		end 
		local visuals = item.visuals or {}
		if visuals and visuals.player_bodygroups then
			for _,group in ipairs(visuals.player_bodygroups) do
				if visuals.player_bodygroups == "hat" then
					self:SetBodygroup(self:FindBodygroupByName("hat"), 1)
				elseif visuals.player_bodygroups == "head" then
					self:SetBodygroup(self:FindBodygroupByName("head"), 1)
				elseif visuals.player_bodygroups == "headphones" then
					self:SetBodygroup(self:FindBodygroupByName("headphones"), 1)
				elseif visuals.player_bodygroups == "grenades" then
					self:SetBodygroup(self:FindBodygroupByName("grenades"), 1)
				elseif visuals.player_bodygroups == "bullets" then
					self:SetBodygroup(self:FindBodygroupByName("bullets"), 1)
				elseif visuals.player_bodygroups == "arrows" then
					self:SetBodygroup(self:FindBodygroupByName("arrows"), 1)
				elseif visuals.player_bodygroups == "shoes_socks" then
					self:SetBodygroup(self:FindBodygroupByName("shoes_socks"), 1)
				elseif visuals.player_bodygroups == "medal" then
					self:SetBodygroup(self:FindBodygroupByName("medal"), 1)
				elseif visuals.player_bodygroups == "hands" then
					self:SetBodygroup(self:FindBodygroupByName("hands"), 1)
				end
			end
		end
        if not item.attributes then
            weapon.Attributes = {}
        else
            weapon.Attributes = table.Copy(item.attributes)
        end
        
        if weapon.ExtraAttributes then
            table.Add(weapon.Attributes, weapon.ExtraAttributes)
        end
         
        ApplyAttributes(weapon.Attributes, "equip", weapon, weapon:GetOwner())

		if (item.anim_slot == "MELEE_ALLCLASS") then
			weapon:SetNWString("HoldType2","melee")
		end
		if item.item_class == "tf_weapon_sword" or item.item_class == "tf_weapon_katana" then
			weapon:SetNWString("HoldType2","melee2")
		end
		local quality, level, custom_name, custom_desc
		
		if item.item_quality and tf_items.Qualities[item.item_quality] then
			quality = tf_items.Qualities[item.item_quality]
		end
		
		level = math.random(item.min_ilevel or 0, item.max_ilevel or 100)
		
		if properties then
			if properties.quality then
				quality = properties.quality
			end
			
			if properties.level then
				level = properties.level
			end
			
			if properties.custom_name then
				custom_name = properties.custom_name
			end
			
			if properties.custom_desc then
				custom_desc = properties.custom_desc
			end
			
			if properties.attributes and weapon.SetExtraAttributes then
				--weapon:SetExtraAttributes(properties.attributes)
			end
		end
		
		if quality and weapon.SetQuality then
			--weapon:SetQuality(quality)
		end
		
		if level and weapon.SetLevel then
			--weapon:SetLevel(level)
		end
		
		if custom_name and weapon.SetCustomName then
			--weapon:SetCustomName(custom_name)
		end
		
		if custom_desc and weapon.SetCustomDescription then
			--weapon:SetCustomDescription(custom_desc)
		end
		
		if weapon.InitAttributes then
			--weapon:InitAttributes(self, item.attributes)
		end
		--[[
		if weapon.InitVisuals then
			if self:EntityTeam() == TEAM_BLU then
				weapon:InitVisuals(self, item.visuals_blu or item.visuals)
			elseif self:EntityTeam() == TF_TEAM_PVE_INVADERS then
				weapon:InitVisuals(self, item.visuals_blu or item.visuals)
			else
				weapon:InitVisuals(self, item.visuals_red or item.visuals)
			end
		end
		]]

		_G.TFWeaponItemOwner = nil
		_G.TFWeaponItemIndex = nil
		--self.WeaponItemIndex = nil
		--MsgN(Format("Done! (%s)",itemname))
		if not weapon.IsTFItem then
			--ErrorNoHalt(Format("Warning: item '%s' uses class '%s' which does not support the items system!\n", itemname, class))
		end
		
		self:SelectWeapon(class)
	end

	
	function CC_GiveItem(pl,_,args)
		local resupply = nil
		for k,v in ipairs(pl:GetWeapons()) do
			if (string.StartWith(v:GetClass(),"weapon_")) then
				v:Remove()
			end
		end
	
		for k,v in ipairs(args) do
			if string.find(v, " ") then
				args[k] = Format("%q", v)
			end
		end
		
		local str = string.Implode(" ",args)
		
		str = string.gsub(str, "Ol '", "Ol'") -- fucking shit ol' snaggletooth
		str = string.gsub(str, "Chargin '", "Chargin'") -- FUCKING SHIT CHARGIN' TARGE
		str = string.gsub(str, " '$", "'")
		str = string.gsub(str, " ' ", "'") -- dirty quickfix for item names such as "The Scotsman's Skullcutter"
		
		str = string.gsub(str, "%(%s*(%d+)%s+(%d+)%s+(%d+)%s*%)", function(r, g, b)
			return 65536*tonumber(r) + 256*tonumber(g) + tonumber(b)
		end)
		
		--MsgFN("%s: GiveItem %s", tostring(pl), str)
		
		local name, prop = string.match(str, "^(.-)%s*:(.+)$")
		if not name then
			name = str
		else
			local t = {}
			t.level = tonumber(string.match(prop, "[Ll]%s*=%s*(%d+)"))
			t.quality = tonumber(string.match(prop, "[Qq]%s*=%s*(%d+)"))
			t.custom_name = string.match(prop, "[Nn]%s*=%s*'(.-)'") or string.match(prop, "[Nn]%s*=%s*\"(.-)\"")
			t.custom_desc = string.match(prop, "[Dd]%s*=%s*'(.-)'") or string.match(prop, "[Dd]%s*=%s*\"(.-)\"")
			
			t.attributes = {}
			for a,v in string.gmatch(prop, "(%d+)%s*=%s*([0-9%.%-]+)") do
				if tonumber(a) and tonumber(v) then
					table.insert(t.attributes, {tonumber(a),tonumber(v)})
				end
			end
			
			--PrintTable(t)
			prop = t
		end
		
		pl:GiveItem(name, prop)
		if (item.item_slot == "head") then
			self:SetBodygroup(self:FindBodygroupByName("hat"), 1)
		end 
		local visuals = item.visuals or {}
		if visuals and visuals.player_bodygroups then
			for _,group in ipairs(visuals.player_bodygroups) do
				if visuals.player_bodygroups == "hat" then
					self:SetBodygroup("hat", 1)
				elseif visuals.player_bodygroups == "head" then
					self:SetBodygroup("head", 1)
				elseif visuals.player_bodygroups == "headphones" then
					self:SetBodygroup("headphones", 1)
				end
			end
		end
		--pl:EquipInLoadout(name, prop)
	end
	

concommand.Add("__svgiveitem", CC_GiveItem)

end
if CLIENT then

	concommand.Remove("giveitem")

	concommand.Add("giveitem", function(pl,_,args)
		if LocalPlayer():Team() == TEAM_SPECTATOR then return end
		
		if table.HasValue( args, "list") then
			PrintTable(j)
		end
		
		RunConsoleCommand("__svgiveitem", unpack(args))
	end, AC_GiveItem)

end

if CLIENT then
	hook.Add( "PopulateTFWeapons", "AddWeaponContent", function( pnlContent, tree, browseNode )

		-- Loop through the weapons and add them to the menu
		local Weapons = list.Get( "TFWeapon" )
		local Categorised = {}

		-- Build into categories
		for k, weapon in pairs( Weapons ) do

			if ( !weapon.Spawnable ) then continue end

			local Category = weapon.Category or "Other2"
			if ( !isstring( Category ) ) then Category = tostring( Category ) end

			Categorised[ Category ] = Categorised[ Category ] or {}
			table.insert( Categorised[ Category ], weapon )

		end

		Weapons = nil

		-- Loop through each category
		local CustomIcons = list.Get( "ContentCategoryIcons" )
		for CategoryName, v in SortedPairs( Categorised ) do

			-- Add a node to the tree
			local node = tree:AddNode( CategoryName, CustomIcons[ CategoryName ] or "games/16/tf.png" )

			-- When we click on the node - populate it using this function
			node.DoPopulate = function( self )

				-- If we've already populated it - forget it.
				if ( self.PropPanel ) then return end

				-- Create the container panel
				self.PropPanel = vgui.Create( "ContentContainer", pnlContent )
				self.PropPanel:SetVisible( false )
				self.PropPanel:SetTriggerSpawnlistChange( false )

				for k, ent in SortedPairsByMemberValue( v, "PrintName" ) do

					spawnmenu.CreateContentIcon( "TFWeapon", self.PropPanel, {
						nicename	= ent.PrintName or ent.ClassName,
						spawnname	= ent.ClassName,
						material	= ent.IconOverride or ent.BackpackIcon,
						admin		= ent.AdminOnly,
						clicksound  = ent.ClickSound
					} )

				end

			end

			-- If we click on the node populate it and switch to it.
			node.DoClick = function( self )

				self:DoPopulate()
				pnlContent:SwitchPanel( self.PropPanel )

			end

		end

		-- Select the first node
		local FirstNode = tree:Root():GetChildNode( 0 )
		if ( IsValid( FirstNode ) ) then
			FirstNode:InternalDoClick()
		end

	end )

	spawnmenu.AddCreationTab( "Team Fortress 2", function()

		local ctrl = vgui.Create( "SpawnmenuContentPanel" )
		ctrl:EnableSearch( "TFWeapon", "PopulateTFWeapons" )
		ctrl:CallPopulateHook( "PopulateTFWeapons" )
		return ctrl

	end, "games/16/tf.png")

	list.Set( "ContentCategoryIcons", "Team Fortress 2", "games/16/tf.png" )

	list.Set( "ContentCategoryIcons", "Weapons - Demoman", "tf_icons/leaderboard_class_demo.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Engineer", "tf_icons/leaderboard_class_engineer.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Heavy", "tf_icons/leaderboard_class_heavy.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Medic", "tf_icons/leaderboard_class_medic.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Pyro", "tf_icons/leaderboard_class_pyro.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Scout", "tf_icons/leaderboard_class_scout.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Sniper", "tf_icons/leaderboard_class_sniper.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Soldier", "tf_icons/leaderboard_class_soldier.png" )
	list.Set( "ContentCategoryIcons", "Weapons - Spy", "tf_icons/leaderboard_class_spy.png" )
	list.Set( "ContentCategoryIcons", "Misc - Demoman", "tf_icons/leaderboard_class_demo.png" )
	list.Set( "ContentCategoryIcons", "Misc - Engineer", "tf_icons/leaderboard_class_engineer.png" )
	list.Set( "ContentCategoryIcons", "Misc - Heavy", "tf_icons/leaderboard_class_heavy.png" )
	list.Set( "ContentCategoryIcons", "Misc - Medic", "tf_icons/leaderboard_class_medic.png" )
	list.Set( "ContentCategoryIcons", "Misc - Pyro", "tf_icons/leaderboard_class_pyro.png" )
	list.Set( "ContentCategoryIcons", "Misc - Scout", "tf_icons/leaderboard_class_scout.png" )
	list.Set( "ContentCategoryIcons", "Misc - Sniper", "tf_icons/leaderboard_class_sniper.png" )
	list.Set( "ContentCategoryIcons", "Misc - Soldier", "tf_icons/leaderboard_class_soldier.png" )
	list.Set( "ContentCategoryIcons", "Misc - Spy", "tf_icons/leaderboard_class_spy.png" )
	list.Set( "ContentCategoryIcons", "Hats - Demoman", "tf_icons/leaderboard_class_demo.png" )
	list.Set( "ContentCategoryIcons", "Hats - Engineer", "tf_icons/leaderboard_class_engineer.png" )
	list.Set( "ContentCategoryIcons", "Hats - Heavy", "tf_icons/leaderboard_class_heavy.png" )
	list.Set( "ContentCategoryIcons", "Hats - Medic", "tf_icons/leaderboard_class_medic.png" )
	list.Set( "ContentCategoryIcons", "Hats - Pyro", "tf_icons/leaderboard_class_pyro.png" )
	list.Set( "ContentCategoryIcons", "Hats - Scout", "tf_icons/leaderboard_class_scout.png" )
	list.Set( "ContentCategoryIcons", "Hats - Sniper", "tf_icons/leaderboard_class_sniper.png" )
	list.Set( "ContentCategoryIcons", "Hats - Soldier", "tf_icons/leaderboard_class_soldier.png" )
	list.Set( "ContentCategoryIcons", "Hats - Spy", "tf_icons/leaderboard_class_spy.png" )

	spawnmenu.AddContentType( "TFWeapon", function( container, obj )
	
		if ( !obj.material ) then return end
		if ( !obj.nicename ) then return end
		if ( !obj.spawnname ) then return end
	
		local icon = vgui.Create( "ContentIcon", container )
		icon:SetContentType( "TFWeapon" )
		icon:SetSpawnName( obj.spawnname ) 
		icon:SetName( obj.nicename )
		icon:SetMaterial( obj.material )
		icon:SetAdminOnly( obj.admin )
		icon:SetColor( Color( 135, 206, 250, 255 ) )
		icon.DoClick = function()
	
			LocalPlayer():ConCommand( "giveitem "..string.Replace(obj.spawnname,"_"," ") )
			surface.PlaySound( obj.clicksound or "ui/buttonclick.wav" )
	
		end
	
		icon.DoMiddleClick = function()
	
			LocalPlayer():ConCommand( "giveitem "..string.Replace(obj.spawnname,"_"," ") )
			surface.PlaySound( obj.clicksound or "ui/buttonclick.wav" )
	
		end
	
		icon.OpenMenu = DoGenericSpawnmenuRightclickMenu
	
		if ( IsValid( container ) ) then
			container:Add( icon )
		end
	
		return icon
	
	end )
end 

function ReturnItems()
	return Items
end