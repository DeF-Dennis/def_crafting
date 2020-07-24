------------------------------
----------- By DeF -----------
---- Easy Crafting System ----
------------------------------

local data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)


-- {Weapons} --

RegisterServerEvent('def_crafting:getbow')
AddEventHandler("def_crafting:getbow", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "wood")
        local count2 = data.checkItem(_source, "string")
		if count >= 2 and count2 >= 3 then
		
			data.delItem(_source,"wood", 2)
            data.delItem(_source,"string",3)
			
          TriggerClientEvent('def_crafting:getbow', _source)
		  
          Citizen.Wait(35000)
		  
                data.addItem(_source, name, 100, GetHashKey(weapon))
                TriggerClientEvent("redemrp_notification:start", source, "Bow successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 2 Wood and 3 String', 5)
        end
    end)
end)

RegisterServerEvent('def_crafting:getknife')
AddEventHandler("def_crafting:getknife", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "handle")
        local count2 = data.checkItem(_source, "knifeblade")
        local count3 = data.checkItem(_source, "string")
		if count >= 1 and count2 >= 1 and count3 >= 1 then
		
			data.delItem(_source,"handle", 1)
            data.delItem(_source,"knifeblade",1)
            data.delItem(_source,"string",1)
			
          TriggerClientEvent('def_crafting:getknife', _source)
		  
          Citizen.Wait(35000)
		  
                data.addItem(_source, name, 100, GetHashKey(weapon))
                TriggerClientEvent("redemrp_notification:start", source, "Knife successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 1 Handle, 1 Knifeblade and 1 String', 5)
        end
    end)
end)

RegisterServerEvent('def_crafting:getthrowing')
AddEventHandler("def_crafting:getthrowing", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "handle")
        local count2 = data.checkItem(_source, "knifeblade")
        local count3 = data.checkItem(_source, "string")
		if count >= 1 and count2 >= 1 and count3 >= 1 then
		
			data.delItem(_source,"handle", 1)
            data.delItem(_source,"knifeblade",1)
            data.delItem(_source,"string",1)
			
          TriggerClientEvent('def_crafting:getthrowing', _source)
		  
          Citizen.Wait(35000)
		  
                data.addItem(_source, name, 100, GetHashKey(weapon))
                TriggerClientEvent("redemrp_notification:start", source, "Throwing knife successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 1 Handle, 1 Knifeblade and 1 String', 5)
        end
    end)
end)

-- {Items} --

RegisterServerEvent('def_crafting:getknifeblade')
AddEventHandler("def_crafting:getknifeblade", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "iron")
		if count >= 3 then
		
			data.delItem(_source,"iron", 3)
			
          TriggerClientEvent('def_crafting:getknifeblade', _source)
		  
          Citizen.Wait(32500)
		  
                data.addItem(_source,"knifeblade", 1)
                TriggerClientEvent("redemrp_notification:start", source, "Knifeblade successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 3 Iron', 5)
        end
    end)
end)

RegisterServerEvent('def_crafting:gethandle')
AddEventHandler("def_crafting:getghandle", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "stick")
		if count >= 1 then
		
			data.delItem(_source,"stick", 1)
			
          TriggerClientEvent('def_crafting:gethandle', _source)
		  
          Citizen.Wait(25000)
		  
                data.addItem(_source,"handle", 1)
                TriggerClientEvent("redemrp_notification:start", source, "Handle successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 1 Stick', 5)
        end
    end)
end)

RegisterServerEvent('def_crafting:getfishinghook')
AddEventHandler("def_crafting:getfishinghook", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "iron")
		if count >= 1 then
		
			data.delItem(_source,"iron", 1)
			
          TriggerClientEvent('def_crafting:getfishinghook', _source)
		  
          Citizen.Wait(30000)
		  
                data.addItem(_source, "fishinghook", 3)
                TriggerClientEvent("redemrp_notification:start", source, "Fishinghook successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 1 Iron', 5)
        end
    end)
end)

RegisterServerEvent('def_crafting:getarrowhead')
AddEventHandler("def_crafting:getarrowhead", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "iron")
		if count >= 1 then
		
			data.delItem(_source,"iron", 1)
			
          TriggerClientEvent('def_crafting:getarrowhead', _source)
		  
          Citizen.Wait(30000)
		  
                data.addItem(_source, "arrowhead", 1)
                TriggerClientEvent("redemrp_notification:start", source, "Arrowhead successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 1 Iron', 5)
        end
    end)
end)

-- {Tools} --

RegisterServerEvent('def_crafting:getfishingrod')
AddEventHandler("def_crafting:getfishingrod", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local count = data.checkItem(_source, "stick")
        local count2 = data.checkItem(_source, "fishinghook")
        local count3 = data.checkItem(_source, "string")
		if count >= 3 and count2 >= 1 and count3 >= 2 then
		
			data.delItem(_source,"stick", 3)
            data.delItem(_source,"fishinghook",1)
            data.delItem(_source,"string",2)
			
          TriggerClientEvent('def_crafting:getfishingrod', _source)
		  
          Citizen.Wait(30000)
		  
                data.addItem(_source, "fishingrod", 1)
                TriggerClientEvent("redemrp_notification:start", source, "Fishingrod successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 3 Stick, 1 Fishinghook und 2 String', 5)
        end
    end)
end)

-- {Ammo} --

RegisterServerEvent('def_crafting:getarrow')
AddEventHandler("def_crafting:getarrow", function(name, weapon)
    local _source = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        local count = data.checkItem(_source, "stick")
        local count2 = data.checkItem(_source, "feather")
        local count3 = data.checkItem(_source, "arrowhead")
		if count >= 1 and count2 >= 4 and count3 >= 1 then
		
            data.delItem(_source,"stick", 1)
            data.delItem(_source,"feather", 4)
            data.delItem(_source,"arrowhead", 1)
			
          TriggerClientEvent('def_crafting:getarrow', _source)
		  
          Citizen.Wait(31000)
		  
                data.addItem(_source, "arrows", 1)
                TriggerClientEvent("redemrp_notification:start", source, "Arrow successfully produced", 2, "success")
        else
            TriggerClientEvent("redemrp_notification:start", _source, 'You need: 1 Stick, 4 Feather und 1 Arrowhead', 4)
        end
    end)
end)

