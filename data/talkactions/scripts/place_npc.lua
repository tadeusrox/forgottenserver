function onSay(player, words, param)

	local orig = player:getPosition()
	local npc = Game.createNpc(param, orig)
	if npc then
		orig:sendMagicEffect(CONST_ME_MAGIC_RED)
		npc:setMasterPos(orig)
	else
		player:sendCancelMessage("There is not enough room.")
		orig:sendMagicEffect(CONST_ME_POFF)
	end
	return false
end
