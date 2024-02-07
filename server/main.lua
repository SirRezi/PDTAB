ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

ESX.RegisterServerCallback('pd-tab:getPlayerJob', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	
	if (xPlayer.getJob().name == Config.JobName) then
		cb(true)
	else
		cb(false)
	end
end)