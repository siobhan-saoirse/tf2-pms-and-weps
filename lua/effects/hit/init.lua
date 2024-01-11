function EFFECT:Init( data )
	self.Pos = data:GetOrigin()
	
	local dlight = DynamicLight( self:EntIndex() )
	if ( dlight ) then
		local r, g, b, a = self:GetColor()
		dlight.Pos = self:GetPos()
		dlight.r = 255
		dlight.g = 255
		dlight.b = 25
		dlight.Brightness = 0.8
		dlight.Size = 200
		dlight.Decay = 1000
		dlight.DieTime = CurTime() + 6
        dlight.Style = 0
	end	
end


function EFFECT:Think()
	return false	
end

function EFFECT:Render()

end
