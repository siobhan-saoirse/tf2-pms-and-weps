SWEP.Base = "weapon_base"
SWEP.ViewModel = "models/weapons/v_models/v_bat_scout.mdl"
SWEP.WorldModel = "models/weapons/c_models/c_bat.mdl"

if CLIENT then

		local WorldModel2 = ClientsideModel("models/empty.mdl")
		-- Settings...
		WorldModel2:SetNoDraw(true)
	function SWEP:DrawWorldModel()
			self.WModel = self:GetNWString("WorldModel2",self.OldWorldModel)
			local _Owner = self:GetOwner()
			if (self.OldWorldModel == nil) then
				self.OldWorldModel = self.WorldModel
			else
				self.WorldModel = "models/empty.mdl"
			end
			local skin = self:GetSkin()
			if (IsValid(_Owner)) then
				skin = self:GetOwner():GetSkin()
			end
			WorldModel2:SetSkin(skin)
			WorldModel2:SetModel(self.WModel or self.OldWorldModel)
			if (IsValid(_Owner)) then
				-- Specify a good position
				local offsetVec = Vector(5, -2.7, -3.4)
				local offsetAng = Angle(180, 180, 0)
				if (_Owner:LookupBone("ValveBiped.Bip01_R_Hand")) then
					local boneid = _Owner:LookupBone("ValveBiped.Bip01_R_Hand") -- Right Hand
					if !boneid then return end

					local matrix = _Owner:GetBoneMatrix(boneid)
					if !matrix then return end

					local newPos, newAng = LocalToWorld(offsetVec, offsetAng, matrix:GetTranslation(), matrix:GetAngles())

					WorldModel2:SetPos(newPos)
					WorldModel2:SetAngles(newAng)

					WorldModel2:SetupBones()
				else

					WorldModel2:SetParent(_Owner)
					WorldModel2:AddEffects(bit.bor(EF_BONEMERGE,EF_BONEMERGE_FASTCULL))
					WorldModel2:SetPos(self:GetPos())
					WorldModel2:SetAngles(self:GetAngles())

				end
			else
				WorldModel2:SetPos(self:GetPos())
				WorldModel2:SetAngles(self:GetAngles())
			end
			WorldModel2:DrawModel()
	end
end