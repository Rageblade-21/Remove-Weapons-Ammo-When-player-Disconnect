-- server.lua
local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('playerDropped', function(reason)
    local playerId = source
    local xPlayer = QBCore.Functions.GetPlayer(playerId)
    
    if xPlayer then
        local inventory = xPlayer.PlayerData.items
        
        -- Define a comprehensive list of weapon types and throwables
        local weaponTypes = {
            'weapon_unarmed', 'weapon_knife', 'weapon_nightstick', 'weapon_hammer', 'weapon_bat', 
            'weapon_golfclub', 'weapon_crowbar', 'weapon_bottle', 'weapon_dagger', 'weapon_hatchet', 
            'weapon_knuckle', 'weapon_machete', 'weapon_flashlight', 'weapon_switchblade', 
            'weapon_poolcue', 'weapon_wrench', 'weapon_battleaxe', 'weapon_stone_hatchet', 
            'weapon_pistol', 'weapon_pistol_mk2', 'weapon_combatpistol', 'weapon_appistol', 
            'weapon_stungun', 'weapon_pistol50', 'weapon_snspistol', 'weapon_snspistol_mk2', 
            'weapon_heavypistol', 'weapon_vintagepistol', 'weapon_flaregun', 'weapon_marksmanpistol', 
            'weapon_revolver', 'weapon_revolver_mk2', 'weapon_doubleaction', 'weapon_raypistol', 
            'weapon_ceramicpistol', 'weapon_navyrevolver', 'weapon_microsmg', 'weapon_smg', 
            'weapon_smg_mk2', 'weapon_assaultsmg', 'weapon_combatpdw', 'weapon_machinepistol', 
            'weapon_minismg', 'weapon_raycarbine', 'weapon_pumpshotgun', 'weapon_pumpshotgun_mk2', 
            'weapon_sawnoffshotgun', 'weapon_assaultshotgun', 'weapon_bullpupshotgun', 
            'weapon_musket', 'weapon_heavyshotgun', 'weapon_dbshotgun', 'weapon_autoshotgun', 
            'weapon_assaultrifle', 'weapon_assaultrifle_mk2', 'weapon_carbinerifle', 
            'weapon_carbinerifle_mk2', 'weapon_advancedrifle', 'weapon_specialcarbine', 
            'weapon_specialcarbine_mk2', 'weapon_bullpuprifle', 'weapon_bullpuprifle_mk2', 
            'weapon_compactrifle', 'weapon_mg', 'weapon_combatmg', 'weapon_combatmg_mk2', 
            'weapon_gusenberg', 'weapon_sniperrifle', 'weapon_heavysniper', 'weapon_heavysniper_mk2', 
            'weapon_marksmanrifle', 'weapon_marksmanrifle_mk2', 'weapon_rpg', 'weapon_grenadelauncher', 
            'weapon_grenadelauncher_smoke', 'weapon_minigun', 'weapon_firework', 'weapon_railgun', 
            'weapon_hominglauncher', 'weapon_compactlauncher', 'weapon_rayminigun', 'weapon_grenade', 
            'weapon_bzgas', 'weapon_molotov', 'weapon_stickybomb', 'weapon_proxmine', 
            'weapon_snowball', 'weapon_pipebomb', 'weapon_ball', 'weapon_smokegrenade', 
            'weapon_flare', 'weapon_petrolcan', 'weapon_fireextinguisher', 'weapon_hazardcan'
        }
        
        -- Function to check if an item is a weapon or throwable
        local function isWeapon(item)
            for _, weapon in ipairs(weaponTypes) do
                if item.name == weapon then
                    return true
                end
            end
            return false
        end

        -- Loop through the inventory and remove weapons and ammo
        for _, item in pairs(inventory) do
            if isWeapon(item) or item.type == 'ammo' then
                xPlayer.Functions.RemoveItem(item.name, item.amount)
            end
        end

        -- Notify that the weapons and ammo have been cleared
        print(('Player %s weapons and ammo cleared on disconnect'):format(playerId))
    end
end)
