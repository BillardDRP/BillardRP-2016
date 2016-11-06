SWEP.PrintName = "Car Bomb Defuser"
SWEP.Instructions = "Primary fire near where a car bomb is planted to defuse it."
SWEP.Purpose = "No one is dying today!"

SWEP.Category = "Car Bomb"

SWEP.AdminSpawnable = true
SWEP.Spawnable = true

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo		= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo		= "none"

SWEP.UseHands = true

SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true

SWEP.ViewModelFOV = 55
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

function SWEP:PrimaryAttack()
    if (SERVER) then
	    local tr = self.Owner:GetEyeTrace()
		
		if (tr.Entity:IsVehicle()) then
		    if (tr.Entity.bombPlanted and tr.Entity:LocalToWorld(tr.Entity.bombPlanted):Distance(tr.HitPos) < 10) then
				self:SetNextPrimaryFire(CurTime() +15)
				self.Owner:EmitSound("vo/npc/vortigaunt/yes.wav")
				
				self.defuseTarget = tr.Entity
				
				timer.Create(self.Owner:EntIndex().."_defuseBomb", 1, 10, function()
					self:SendWeaponAnim(ACT_VM_HITCENTER)

                    local sparks = EffectData()
                    
					sparks:SetOrigin(self.Owner:GetEyeTrace().HitPos)
                    util.Effect("StunstickImpact", sparks, false, true)
					
					if (timer.RepsLeft(self.Owner:EntIndex().."_defuseBomb") == 0) then
					    self:EmitSound("weapons/stunstick/alyx_stunner1.wav")
						self.Owner:PrintMessage(HUD_PRINTCENTER, "You have defused the Car Bomb!")
						
						self.defuseTarget = nil
						
						tr.Entity.bombPlanted = nil
						tr.Entity.beep = nil
						
						timer.Remove("carBomb_"..tr.Entity:EntIndex().."_Explode")
			            hook.Remove("Think", "carBomb_"..tr.Entity:EntIndex().."_TimedExplosion")
					else
					    self:EmitSound("physics/metal/metal_computer_impact_hard"..math.random(1, 3)..".wav")
					end
					
					timer.Simple(0.5, function()
				        if (self:IsValid()) then
					        self:SendWeaponAnim(ACT_VM_IDLE)
					    end
				    end)
				end)
			end
		end
	end
end

if (SERVER) then
    function SWEP:Think()
	    if (self.defuseTarget) then
		    local tr = self.Owner:GetEyeTrace()
		
	        if (self.defuseTarget != tr.Entity or tr.HitPos:Distance(self.Owner:GetPos()) > 80 or tr.Entity:LocalToWorld(tr.Entity.bombPlanted):Distance(tr.HitPos) > 25) then
			    self:SetNextPrimaryFire(CurTime())
				self.defuseTarget = nil
				
				timer.Remove(self.Owner:EntIndex().."_defuseBomb")
			end
		end
	end

	function SWEP:Holster()
		self:SetNextPrimaryFire(CurTime())
	    self.defuseTarget = nil
	
		timer.Remove(self.Owner:EntIndex().."_defuseBomb")
		
		return true
	end
end

function SWEP:SecondaryAttack()
end

function SWEP:Initialize()
	self:SetWeaponHoldType("slam")
end