
DarkRP.removeChatCommand("advert")

DarkRP.defineChatCommand("advert", function(ply, args)
	if args == "" then
		DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
		return ""
	end
	local DoSay = function(text)
		if text == "" then
			DarkRP.notify(ply, 1, 4, DarkRP.getPhrase("invalid_x", "argument", ""))
			return
		end
		for k,v in pairs(player.GetAll()) do
			local col = team.GetColor(ply:Team())
			DarkRP.talkToPerson(v, col, "[Advert] " .. ply:Nick(), Color(255, 255, 0, 255), text, ply)
		end
	end
	return args, DoSay
end, 1.5)

DarkRP.declareChatCommand{
	command = "advert",
	description = "Advertise something to everyone in the server.",
	delay = 1.5
}
