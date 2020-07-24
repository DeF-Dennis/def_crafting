------------------------------
----------- By DeF -----------
---- Easy Crafting System ----
------------------------------

Citizen.CreateThread(function()
    WarMenu.CreateMenu('craft', "Crafting")
    WarMenu.SetSubTitle('craft', "Manufacturing of goods")
	
    WarMenu.CreateSubMenu('inv1', 'craft', 'Weapons')
    WarMenu.CreateSubMenu('inv2', 'craft', 'Items')
    WarMenu.CreateSubMenu('inv3', 'craft', 'Tools')
    WarMenu.CreateSubMenu('inv4', 'craft', 'Ammo')


    while true do

        local ped = GetPlayerPed()
        local coords = GetEntityCoords(PlayerPedId())
		
        if WarMenu.IsMenuOpened('craft') then
		
		if WarMenu.MenuButton('Weapons', 'inv1') then
            end
        if WarMenu.MenuButton('Items', 'inv2') then
            end
        if WarMenu.MenuButton('Tools', 'inv3') then
            end
        if WarMenu.MenuButton('Ammo', 'inv4') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv1') then

			if WarMenu.Button("Craft Bow") then
			TriggerServerEvent("def_crafting:getbow", "bow_w", "WEAPON_BOW")
			WarMenu.CloseMenu()
			
            elseif WarMenu.Button("Craft Knife") then
              TriggerServerEvent("def_crafting:getknife", "knife_w", "WEAPON_MELEE_KNIFE")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("Craft Throwing knife") then
              TriggerServerEvent("def_crafting:getthrowing", "throwing_w", "WEAPON_THROWN_THROWING_KNIVES")
            WarMenu.CloseMenu()
            end


            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv2') then

            if WarMenu.Button("Craft Knife blade") then
                TriggerServerEvent("def_crafting:getknifeblade")
            WarMenu.CloseMenu()
        
            elseif WarMenu.Button("Craft handle") then
                TriggerServerEvent("def_crafting:gethandle")
            WarMenu.CloseMenu()
            
            elseif WarMenu.Button("Craft fishinghook") then
                TriggerServerEvent("def_crafting:getfishinghook")
            WarMenu.CloseMenu()

            elseif WarMenu.Button("Craft arrowhead") then
                TriggerServerEvent("def_crafting:getarrowhead")
            WarMenu.CloseMenu()
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv3') then

            if WarMenu.Button("Craft fishingrod") then
                TriggerServerEvent("def_crafting:getfishingrod")
            WarMenu.CloseMenu()
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv4') then

            if WarMenu.Button("Craft arrows") then
                TriggerServerEvent("def_crafting:getarrow")
            WarMenu.CloseMenu()
            end


            WarMenu.Display()

        elseif IsControlJustReleased(1, 0x4CC0E2FE) then -- Use B to open the Menu
           WarMenu.OpenMenu('craft')
        end
		
	
        Citizen.Wait(0)
    end
end)

-- If you want to open the Menu by a Command --

--[[RegisterCommand("craft", function(source, args, rawCommand) -- craft COMMAND
local _source = source
WarMenu.OpenMenu('craft')
end, false)]]--

-- {Settings ProgressBars} --  

-- {Weapons}

RegisterNetEvent('def_crafting:getbow')
AddEventHandler('def_crafting:getbow', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 35000, true, false, false, false)
    exports['progressBars']:startUI(35000, "Crafting bow...")
    Citizen.Wait(35000)
    ClearPedTasksImmediately(PlayerPedId())

end)

RegisterNetEvent('def_crafting:getknife')
AddEventHandler('def_crafting:getknife', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 35000, true, false, false, false)
    exports['progressBars']:startUI(35000, "Crafting knife...")
    Citizen.Wait(35000)
    ClearPedTasksImmediately(PlayerPedId())

end)

RegisterNetEvent('def_crafting:getthrowing')
AddEventHandler('def_crafting:getthrowing', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 35000, true, false, false, false)
    exports['progressBars']:startUI(35000, "Crafting throwing knife...")
    Citizen.Wait(35000)
    ClearPedTasksImmediately(PlayerPedId())

end)

-- {Items} --

RegisterNetEvent('def_crafting:getknifeblade')
AddEventHandler('def_crafting:getknifeblade', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 32500, true, false, false, false)
    exports['progressBars']:startUI(32500, "Crafting knifeblade...")
    Citizen.Wait(32500)
    ClearPedTasksImmediately(PlayerPedId())

end)

RegisterNetEvent('def_crafting:gethandle')
AddEventHandler('def_crafting:gethandle', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 25000, true, false, false, false)
    exports['progressBars']:startUI(25000, "Crafting handle...")
    Citizen.Wait(25000)
    ClearPedTasksImmediately(PlayerPedId())

end)

RegisterNetEvent('def_crafting:getfishinghook')
AddEventHandler('def_crafting:getfishinghook', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 20000, true, false, false, false)
    exports['progressBars']:startUI(20000, "Crafting fishinghook...")
    Citizen.Wait(20000)
    ClearPedTasksImmediately(PlayerPedId())

end)

RegisterNetEvent('def_crafting:getarrowhead')
AddEventHandler('def_crafting:getarrowhead', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 27000, true, false, false, false)
    exports['progressBars']:startUI(27000, "Crafting arrowhead...")
    Citizen.Wait(27000)
    ClearPedTasksImmediately(PlayerPedId())

end)

-- {Tools} --

RegisterNetEvent('def_crafting:getfishingrod')
AddEventHandler('def_crafting:getfishingrod', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "Crafting fishingrod...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())

end)

-- {Ammo} --

RegisterNetEvent('def_crafting:getarrow')
AddEventHandler('def_crafting:getarrow', function()

    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 31000, true, false, false, false)
    exports['progressBars']:startUI(31000, "Crafting Arrow...")
    Citizen.Wait(31000)
    ClearPedTasksImmediately(PlayerPedId())

end)
