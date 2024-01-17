AddCSLuaFile()

module("tf_util", package.seeall)

RegisteredModels = {}

function ReadActivitiesFromModel(ent)
	if not util.IsValidModel(ent:GetModel() or "") then return end
	
	if not RegisteredModels[ent:GetModel()] then
		--MsgFN("Reading activities from '%s'", ent:GetModel())
		local i = 0
		while ent:GetSequenceName(i)~="Unknown" do
			local act = string.upper(ent:GetSequenceActivityName(i))
			if act~="" and not _G[act] then
				_G[act] = ent:GetSequenceActivity(i)
				
				--[[if act == "ACT_MELEE_VM_HITCENTER" then
					MsgFN("Setting %s to %d (model='%s' entity=%s owner=%s)", act, _G[act], ent:GetModel(), tostring(ent), tostring(ent:GetOwner()))
				end]]
			end
			i = i+1
		end
		RegisteredModels[ent:GetModel()] = true
	end
end