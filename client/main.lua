
local helmetnr = -1

RegisterNetEvent('damag_nokto:useNokto')
AddEventHandler('damag_nokto:useNokto', function()
	
	if IsNightvisionActive() then
		TaskStartScenarioInPlace(PlayerPedId(), Config.animation, 0, true) 
        Citizen.Wait(3000) 
        ClearPedTasksImmediately(PlayerPedId())
        TriggerEvent('skinchanger:change', "helmet_1", helmetnr)
		SetNightvision(false)
		notify("Noktowizja wyłączona")
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
        helmetnr = skin['helmet_1']
    end)
		TaskStartScenarioInPlace(PlayerPedId(), Config.animation, 0, true) 
        Citizen.Wait(3000) 
        ClearPedTasksImmediately(PlayerPedId())
        TriggerEvent('skinchanger:change', "helmet_1", Config.numerkasku)
		SetNightvision(true)
		notify("Noktowizja włączona")

		
	end
end)


function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end
