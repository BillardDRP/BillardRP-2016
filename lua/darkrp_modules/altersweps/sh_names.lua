
hook.Add("InitPostEntity", "RemoveAltFromPrintName", function()
	for k, v in pairs(weapons.GetList()) do
		if string.lower(string.Left(v.PrintName, 4)) == "alt " then
			local oldname = v.PrintName
			local wep = v
			wep.PrintName = string.sub(oldname, 5)
			weapons.Register(wep, v.ClassName)
		end
	end
end)
