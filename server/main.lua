ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('esx_okradanie:handcuff')
AddEventHandler('esx_okradanie:handcuff', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_okradanie:handcuff', target)
end)

RegisterServerEvent('esx_okradanie:handcuff2')
AddEventHandler('esx_okradanie:handcuff2', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_okradanie:handcuff', target)
end)

RegisterServerEvent('esx_okradanie:drag')
AddEventHandler('esx_okradanie:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_okradanie:drag', target, source)
end)

RegisterServerEvent('esx_okradanie:putInVehicle')
AddEventHandler('esx_okradanie:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_okradanie:putInVehicle', target)
end)

RegisterServerEvent('esx_okradanie:OutVehicle')
AddEventHandler('esx_okradanie:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
		TriggerClientEvent('esx_okradanie:OutVehicle', target)
end)

RegisterServerEvent('esx_okradanie:requestarrest')
AddEventHandler('esx_okradanie:requestarrest', function(targetid, playerheading, playerCoords,  playerlocation)
	_source = source
	TriggerClientEvent('esx_okradanie:getarrested', targetid, playerheading, playerCoords, playerlocation)
	TriggerClientEvent('esx_okradanie:doarrested', _source)
end)

RegisterServerEvent('esx_okradanie:requestrelease')
AddEventHandler('esx_okradanie:requestrelease', function(targetid, playerheading, playerCoords,  playerlocation)
	_source = source
	TriggerClientEvent('esx_okradanie:getuncuffed', targetid, playerheading, playerCoords, playerlocation)
	TriggerClientEvent('esx_okradanie:douncuffing', _source)
end)

RegisterServerEvent('esx_okradanie:message')
AddEventHandler('esx_okradanie:message', function(target, msg)
	TriggerClientEvent('esx:showNotification', target, msg)
end)