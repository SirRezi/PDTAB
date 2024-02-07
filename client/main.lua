PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local showUi = false
local playerLoaded = false

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
    playerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
    if playerLoaded then
        CheckJob()
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(100)
    while true do
        if Config.Open == "Key" then
            if IsControlJustReleased(0, Config.OpenKey) then
                TriggerEvent('openCAD:TRMD_CAD')
            end
        end
        Citizen.Wait(100)
    end
end)

RegisterNetEvent('openCAD:TRMD_CAD')
AddEventHandler('openCAD:TRMD_CAD', function()
    if showUi == false then
        CheckJob()
    end
end)

RegisterCommand(Config.OpenCommand, function(source, args, rawCommand)
    if Config.Open == "Command" then
        CheckJob()
    end
end)

RegisterNUICallback('NUIFocusOff', function()
    if showUi == true then
        SetNuiFocus(false, false)
        SendNUIMessage({type = "disable"})
        showUi = false
        stopAnim()
    end
end)

function stopAnim()
    StopAnimTask(PlayerPedId(), "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a" ,8.0, -8.0, -1, 50, 0, false, false, false)
    DeleteObject(tab)
end

function startAnim()
    RequestAnimDict("amb@code_human_in_bus_passenger_idles@female@tablet@idle_a")
    while not HasAnimDictLoaded("amb@code_human_in_bus_passenger_idles@female@tablet@idle_a") do
        Citizen.Wait(0)
    end
    TaskPlayAnim(PlayerPedId(), "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a" ,8.0, -8.0, -1, 50, 0, false, false, false)
    tab = CreateObject(GetHashKey("prop_cs_tablet"), 0, 0, 0, true, true, true)
    AttachEntityToEntity(tab, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), -0.05, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
end

function CheckJob()
    if ESX.PlayerData.job and ESX.PlayerData.job.name ~= nil and ESX.PlayerData.job.name == Config.Jobname then
        SetNuiFocus(true, true)
        SendNUIMessage({type = "enable"})
        showUi = true;
        startAnim()
    end
end
