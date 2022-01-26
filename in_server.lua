ESX = nil;

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("inject:kick")
AddEventHandler("inject:kick", function(reason)
	DropPlayer(source, reason)	
end)

RegisterServerEvent("screenshot:log")
AddEventHandler("screenshot:log", function(screenshots)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local playerName = xPlayer.getName(_source)
    local group = xPlayer.getGroup()
    local identifier = GetPlayerIdentifier(source, 0)
    local playerCash = xPlayer.getMoney()
    local bankMoney = xPlayer.getAccount('bank').money
    local blackMoney = xPlayer.getAccount('black_money').money
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    local ping = GetPlayerPing(source)
    local ip = GetPlayerEndpoint(source)
    local dateNow = os.date('%Y-%m-%d %H:%M')
    PerformHttpRequest(Logs.ScreenShot, function(err, text, headers) end, 'POST', json.encode({embeds={{title = "Injection Logs", description = "\nPlayer: "..playerName.."\nPermissionGroup : "..group.."\nPlayer ID:"..source.."\nSteam Hex :"..identifier.."\nMoney :"..playerCash.."\nBankMoney :"..bankMoney.."\nBlackCash :"..blackMoney.."\nJob :"..job.."\nJobGrade :"..grade.."\nPing :"..ping.."\nIP :"..ip.."\nDate :"..dateNow.."", color=11815}}}),  { ['Content-Type'] = 'application/json' })
end)
