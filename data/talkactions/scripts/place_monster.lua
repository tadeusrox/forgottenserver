function onSay(player, words, param)
	local orig = player:getPosition()
	local monster = Game.createMonster(param, orig)
	if monster then
		monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		orig:sendMagicEffect(CONST_ME_MAGIC_RED)
	else
		player:sendCancelMessage("There is not enough room.")
		orig:sendMagicEffect(CONST_ME_POFF)
	end
	return false
end
