ESX                           = nil  
local PlayerData              = {}  

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do
      Citizen.Wait(10)
    end
    PlayerData = ESX.GetPlayerData()
end)
  
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer    
end)

RegisterCommand("simcard", function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    if args[1] ~= nil then
        local rawNumber = args[1]
        local isValid = tonumber(rawNumber) ~= nil
        if string.len(rawNumber) == 7 then
            if isValid then
                if Config.RequiresSimItem then
                    local inventory = ESX.GetPlayerData().inventory
                    local simCardCount = nil
                    for i=1, #inventory, 1 do                          
                        if inventory[i].name == 'sim_card' then
                            simCardCount = inventory[i].count
                        end
                    end
                    if simCardCount > 0 then
                        TriggerServerEvent('matriarch_simcards:useSimCard', args)               
                    else 
                        ESX.ShowNotification("You don't have any sim cards")
                    end
                else
                    TriggerServerEvent('matriarch_simcards:useSimCard', args)   
                end                  
            else
                ESX.ShowNotification('Phone numbers must only contain digits')
            end             
        else
            ESX.ShowNotification('Phone numbers need to be ~r~7 ~w~digits')
        end
        
    else
        ESX.ShowNotification('~r~Missing number - ~w~Use /simcard {number}')
    end     
end)

RegisterNetEvent('matriarch_simcards:startNumChange')
AddEventHandler('matriarch_simcards:startNumChange', function(newNum)
    if Config.UseAnimation then
        exports.dpemotes:OnEmotePlay({"cellphone@", "cellphone_text_read_base", "Phone", AnimationOptions =
        {
            Prop = "prop_npc_phone_02",
            PropBone = 28422,
            PropPlacement = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
            EmoteLoop = true,
            EmoteMoving = true,
        }})
        -- PROGRESS START
        -- REPLACE THIS WITH WHATEVER PROGRESS MOD YOU USE
        local complete = false
        Citizen.Wait(Config.TimeToChange)
        complete = true
        -- PROGRESS END        
        if complete then
            TriggerServerEvent('matriarch_simcards:changeNumber', newNum)        
            exports.dpemotes:EmoteCancel()                                              
            ESX.ShowNotification('Phone number updated to ~g~' .. newNum)                                        
            if Config.gcphoneEnabled then
                Citizen.Wait(2000) -- just give the update 2 seconds to hit DB before calling the gcphone update
                TriggerServerEvent('gcPhone:allUpdate')
            end         
        end   
    else
        TriggerServerEvent('matriarch_simcards:changeNumber', newNum)   
        ESX.ShowNotification('Phone number updated to ~g~' .. newNum)
        Citizen.Wait(2000)                             
        if Config.gcphoneEnabled then
            TriggerServerEvent('gcPhone:allUpdate')
        end  
    end
	 
end)

function loadanimdict(dictname)
	if not HasAnimDictLoaded(dictname) then
		RequestAnimDict(dictname) 
		while not HasAnimDictLoaded(dictname) do 
			Citizen.Wait(1)
		end
	end
end