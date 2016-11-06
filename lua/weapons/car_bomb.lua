SWEP.PrintName = "Car Bomb"
SWEP.Instructions = "Primary fire on a car to plant the bomb.\nSecondary fire to alter the detonation time."
SWEP.Purpose = "Win a fight without wasting a single bullet."

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

SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true

SWEP.ViewModelFOV = 75
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/cstrike/c_c4.mdl"
SWEP.WorldModel = "models/weapons/w_c4.mdl"

if (SERVER) then
	local auto_Remove = {}
	
	local function explode(vehicle)
		local debree = ents.Create("prop_physics")
	
	    debree:SetModel(vehicle:GetModel())
        debree:SetPos(vehicle:GetPos())
        debree:SetAngles(vehicle:GetAngles())
        debree:Spawn()

        debree:GetPhysicsObject():AddVelocity(vehicle:GetPhysicsObject():GetVelocity() +Vector(0, 0, math.random(250, 500)))
	    debree:GetPhysicsObject():AddAngleVelocity(vehicle:GetPhysicsObject():GetAngleVelocity())

	    debree:SetMaterial("models/props_foliage/tree_deciduous_01a_trunk")
	    debree:Ignite(60)
	
	    local explosion = ents.Create("env_explosion")

        explosion:SetPos(vehicle:GetPos())
		explosion:SetOwner(debree)
	    explosion:Spawn()
		explosion:SetKeyValue("iMagnitude", "250")
	    explosion:Fire("Explode", 0, 0)
	
	    vehicle:Remove()
	
	    auto_Remove[debree] = 60
    end
	
	function SWEP:TimedExplosion(vehicle)
	    vehicle.beep = {}

		vehicle.beep.count = math.Clamp(self.timeToDetonate /10, SoundDuration("weapons/c4/c4_click.wav"), 999)
		vehicle.beep.time = CurTime() +vehicle.beep.count

		timer.Create("carBomb_"..vehicle:EntIndex().."_Explode", 1, self.timeToDetonate, function()
			vehicle.beep.count = math.Clamp(timer.RepsLeft("carBomb_"..vehicle:EntIndex().."_Explode") /10, SoundDuration("weapons/c4/c4_click.wav"), 999)

			if (timer.RepsLeft("carBomb_"..vehicle:EntIndex().."_Explode") == 0) then
				hook.Remove("Think", "carBomb_"..vehicle:EntIndex().."_TimedExplosion")
				explode(vehicle)
			end
		end)

		hook.Add("Think", "carBomb_"..vehicle:EntIndex().."_TimedExplosion", function()
			if (vehicle.beep.time <= CurTime()) then
		        vehicle:EmitSound("weapons/c4/c4_click.wav", 60)
			    vehicle.beep.time = CurTime() +vehicle.beep.count
		    end
		end)              
	end
	
	function SWEP:Holster()
	    self:SetNextPrimaryFire(CurTime())
	    self:SetNextSecondaryFire(CurTime())
		
		self.plantTarget = nil
		
		timer.Remove(self.Owner:EntIndex().."_plantBomb")
		
		return true
	end
	
	function SWEP:Think()
	    if (self.plantTarget) then
            local tr = self.Owner:GetEyeTrace()
		
		    if (self.plantTarget != tr.Entity or tr.HitPos:Distance(self.Owner:GetPos()) > 80) then
			    self:SendWeaponAnim(ACT_VM_IDLE)
				self:SetNextPrimaryFire(CurTime())
			    self:SetNextSecondaryFire(CurTime())
			
			    self.plantTarget = nil
			
			    timer.Remove(self.Owner:EntIndex().."_plantBomb")		
			end
		end
	end
	
	timer.Create("carBomb_AutoRemoval", 1, 0, function()
	    for k, v in pairs(auto_Remove) do
		    auto_Remove[k] = auto_Remove[k] -1
			
			if (auto_Remove[k] == 0) then
			    k:Remove()
			end
		end
	end)
	
	hook.Add("VehicleMove", "carBomb_DisableVehicle", function(ply, vehicle)
        if (vehicle.bombPlanted and not vehicle.beep) then
			explode(vehicle)
	    end
	end)
	
	hook.Add("EntityRemoved", "carBomb_RemoveEverything", function(ent)
	    if (ent.beep) then
		    timer.Remove("carBomb_"..ent:EntIndex().."_Explode")
			hook.Remove("Think", "carBomb_"..ent:EntIndex().."_TimedExplosion")
		end
		
		auto_Remove[ent] = nil
	end)
end

function SWEP:PrimaryAttack()
    if (SERVER) then
	    local ent = self.Owner:GetEyeTrace().Entity
		
		if (ent:IsVehicle() and self.Owner:GetEyeTrace().HitPos:Distance(self.Owner:GetPos()) < 80) then
		    if (not ent:IsEngineStarted()) then
				if (not ent.bombPlanted) then
					self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
					self:SetNextPrimaryFire(CurTime() +5)
				    self:SetNextSecondaryFire(CurTime() +5)
			
		            self.plantTarget = ent
		
		            timer.Create(self.Owner:EntIndex().."_plantBomb", 3, 1, function()
					    if (self:IsValid()) then
						    if (self.timeToDetonate > 0) then
						        self:TimedExplosion(ent)
					        end
					
					        ent.bombPlanted = ent:WorldToLocal(self.Owner:GetEyeTrace().HitPos) --needs updated details...
			            
						    self.Owner:PrintMessage(HUD_PRINTCENTER, "You have planted the car bomb...")
						    self.Owner:SendLua('surface.PlaySound("buttons/button14.wav")')
						    self.Owner:StripWeapon(self:GetClass())
                        end							
		            end)
			    else
			        DarkRP.notify(self.Owner, 1, 5, "This car already has a bomb planted!")
			    end
			else
			    DarkRP.notify(self.Owner, 1, 5, "You can't plant a bomb on a car that's on!")
			end
		end
	end
end

function SWEP:SecondaryAttack()
    if (SERVER) then
	    self.timeToDetonate = self.timeToDetonate +15
		
		if (self.timeToDetonate > 60) then
			self.timeToDetonate = 0
			self.Owner:PrintMessage(HUD_PRINTCENTER, "Detonate on Startup")
		else
		    self.Owner:PrintMessage(HUD_PRINTCENTER, self.timeToDetonate.." Seconds")
		end
		
		self.Owner:SendLua('surface.PlaySound("buttons/button17.wav")')
	end
end

function SWEP:Initialize()
	if (SERVER) then
	    self.timeToDetonate = 0
	end
	
	self:SetWeaponHoldType("slam")
end
