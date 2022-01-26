local screenshot = false

ESX = nil;

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


if Anti.InjectionStop then
    AddEventHandler('onResourceStop', function(resource)
        if resource == GetCurrentResourceName() then
            print('^1A Guy Tried To Stop A RESOURCE!!^0')
                TriggerServerEvent("inject:kick", "Tried To Stop A RESOURCE!!")
        end
    end)
end


