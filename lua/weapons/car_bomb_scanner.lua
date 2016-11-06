SWEP.PrintName = "Car Bomb Scanner"
SWEP.Instructions = "Primary fire on a car to create a visual representation of it revealing the location of the bomb (has to be updated manually)."
SWEP.Purpose = "Where are those shit bombs?"

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
SWEP.ViewModelFlip = true
SWEP.ViewModel = "models/weapons/c_slam.mdl"
SWEP.WorldModel = ""

function SWEP:PrimaryAttack()	
	if (SERVER) then
		if (self.isOn) then
			self:SetNextPrimaryFire(CurTime() +5)
			self.isOn = false
			
			net.Start("carBomb_Scanner")
			    net.WriteBool(false)
			net.Send(self.Owner)
			
			timer.Remove(self.Owner:EntIndex().."_KickOutOfVision")
		elseif (self.Owner:GetEyeTrace().Entity:IsVehicle()) then
			local ent = self.Owner:GetEyeTrace().Entity
			local tab = {ent}
			
			if (ent.bombPlanted) then
			    tab[2] = ent.bombPlanted
			end

			self.isOn = true
			
			net.Start("carBomb_Scanner")
			    net.WriteBool(true)
                net.WriteTable(tab)
			net.Send(self.Owner)
				
			timer.Create(self.Owner:EntIndex().."_KickOutOfVision", 5, 1, function()
				if (self:IsValid()) then
					self.isOn = false
					
					net.Start("carBomb_Scanner")
			            net.WriteBool(false)
			        net.Send(self.Owner)
	
					self:EmitSound("weapons/stunstick/alyx_stunner1.wav")
				    self:SetNextPrimaryFire(CurTime() +10)
				end
			end)
			
			self:SetNextPrimaryFire(CurTime() +1.5)
		else 
		    return
		end

		self:SendWeaponAnim(ACT_SLAM_DETONATOR_DETONATE)
		self.Owner:SendLua('surface.PlaySound("npc/scanner/combat_scan1.wav")')
		
		timer.Simple(1, function() 
		    if (self:IsValid()) then 
		        self:SendWeaponAnim(ACT_SLAM_DETONATOR_IDLE)
		    end
		end)
	end
end

if (CLIENT) then
	net.Receive("carBomb_Scanner", function()
	    local on = net.ReadBool()
		
		if (on) then
            target = net.ReadTable()
			
			LocalPlayer().vehicleRepresentation = ents.CreateClientProp()
			
			LocalPlayer().vehicleRepresentation:SetPos(target[1]:GetPos())
			LocalPlayer().vehicleRepresentation:SetAngles(target[1]:GetAngles())
			LocalPlayer().vehicleRepresentation:SetModel(target[1]:GetModel())
			LocalPlayer().vehicleRepresentation:SetMaterial("models/wireframe")
			LocalPlayer().vehicleRepresentation:Spawn()
			
			LocalPlayer().holdScan = CreateSound(LocalPlayer(), "weapons/physcannon/hold_loop.wav")
			LocalPlayer().holdScan:Play()
		else
			target = nil
			
			LocalPlayer().vehicleRepresentation:Remove()
			LocalPlayer().holdScan:Stop()
		end
	end)
	
	hook.Add("HUDPaint", "carBomb_ScannerHUD", function()
	    if (target) then
		    surface.SetDrawColor(255, 255, 255)
			surface.SetMaterial(Material("effects/combine_binocoverlay"))
			surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
		end
	end)
	
	hook.Add("PostDrawOpaqueRenderables", "carBomb_Scanner3D", function()
		if (target and target[2]) then
		    local pos = LocalPlayer().vehicleRepresentation:LocalToWorld(target[2])
		    local ang = LocalPlayer():EyeAngles()
 
	        ang:RotateAroundAxis(ang:Forward(), 90)
	        ang:RotateAroundAxis(ang:Right(), 90)
		    
			cam.IgnoreZ(true)
		        cam.Start3D2D(pos, Angle(0, ang.y, ang.r), 0.15)
			        draw.SimpleTextOutlined("*DETECTED*", "Default", 0, 0, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, color_black)
			    cam.End3D2D()
			cam.IgnoreZ(false)
	    end
	end)
else
    util.AddNetworkString("carBomb_Scanner")
end

if (SERVER) then
    function SWEP:Holster()
	    if (self.isOn) then
		    self:SetNextPrimaryFire(CurTime() +5)
			self.isOn = false
			
			net.Start("carBomb_Scanner")
			    net.WriteBool(false)
			net.Send(self.Owner)
			
			timer.Remove(self.Owner:EntIndex().."_KickOutOfVision")
		end
	
	    return true
	end
end

function SWEP:SecondaryAttack()
end

function SWEP:Deploy()
    self:SendWeaponAnim(ACT_SLAM_DETONATOR_IDLE)
end

function SWEP:Initialize()
	self:SetWeaponHoldType("normal")
end