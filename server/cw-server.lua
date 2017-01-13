-- Clear Weapons V1.0

-- Chat command to clear weapons
clearcommand = "/cw"

function PlayerChat(args)
	if args.text == clearcommand then
		InventoryClear(args.player)
	end
end

function InventoryClear(player)
	player:ClearInventory()
end

Events:Subscribe("PlayerChat", PlayerChat)
