function Injections()    
    Citizen.Wait(2000)
    TriggerServerEvent("inject:kick", "⚡Server Protected By Anti-Injections⚡")
    Citizen.Wait(2000)
    TriggerServerEvent("screenshot:log")
end

local G3K3n7 = "vrp"
local Qk8uw = "server"
local jNEccV1yb0U7LIBE = "client"
local FMof2r1FT39VaFhlkR = "alex"
local Ji_cWOyMTiwSTW = "vrp"
local lYDzTKovN3RQ8k = "server"
local nRH6FdmUQao9Rv = "client"
local IkC8OCh7Kk1gwqFu = "alex"
local By = "emp"

if Anti.Injection then
    Citizen.CreateThread(function()
        Citizen.Wait(2000)
        while true do
            Citizen.Wait(2000)
            for Pk, Kj_iqT in next, _G do
                if type(Kj_iqT) == "table" and Pk ~= "exports" then
                    if Kj_iqT.CreateMenu ~= nil and type(Kj_iqT.CreateMenu) == "function" then
                        if Pk ~= "WarMenu" and Pk ~= "vRP" and Pk ~= "NativeUI" and Pk ~= "RageUI" and Pk ~= "JayMenu" and Pk ~= "VEM" and Pk ~= "VLM" and Pk ~= "func" and not string.match(Pk:lower(), Ji_cWOyMTiwSTW:lower()) and not string.match(Pk:lower(), lYDzTKovN3RQ8k:lower()) and not string.match(Pk:lower(), nRH6FdmUQao9Rv:lower()) and not string.match(Pk:lower(), IkC8OCh7Kk1gwqFu:lower()) and not string.match(Pk:lower(), By:lower()) then
                            TriggerServerEvent("inject:kick","⚡Player injected mod menu in **" .. GetCurrentResourceName() .. "** : " ..Pk.."")
                            TriggerServerEvent("screenshot:log")
                            Injections()
                        end
                    elseif Kj_iqT.InitializeTheme ~= nil then
                        TriggerServerEvent("inject:kick","⚡Player injected mod menu in **" .. GetCurrentResourceName() .. "** : " ..Pk.."")
                        TriggerServerEvent("screenshot:log")
                        Injections()
                    end
                end
            end
        end
    end)
end
