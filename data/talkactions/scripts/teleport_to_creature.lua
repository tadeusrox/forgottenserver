function onSay(player, words, param)

	local target = Creature(param)
	if target == nil then
		player:sendCancelMessage("Creature not found.")
		return false
	end

	player:teleportTo(target:getPosition())
	return false
end
