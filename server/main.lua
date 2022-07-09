local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("repairitem", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-repair:client:RepairVeh", source, item.name)
    end
end)
