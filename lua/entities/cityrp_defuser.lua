AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "cityrp_base"
ENT.PrintName = "C4 Defuser"
ENT.Category = "CityRP"
ENT.Spawnable = true
ENT.Model = "models/weapons/w_defuser.mdl"

if SERVER then
	function ENT:Use(activator, caller)
		if IsValid(caller) and caller:IsPlayer() then
			if caller.CarryingC4Defuser then
				caller:ChatPrint("You are already carrying a defuser.")
			else
				caller:ChatPrint("You have picked up a defuser.")
				self:EmitSound(Sound("items/itempickup.wav"))
				caller.CarryingC4Defuser = true
				SafeRemoveEntity(self)
			end
		end
	end
end