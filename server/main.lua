ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('noktovision', function(source)
    TriggerClientEvent('damag_nokto:useNokto', source) 
end)
