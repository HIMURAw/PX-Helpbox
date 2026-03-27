local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

-- Kutuların kullanılabilir hale getirilmesi
for boxName, data in pairs(Config.Boxes) do
    QBCore.Functions.CreateUseableItem(boxName, function(source, item)
        -- Etkinlik kontrolü
        if not Config.EventActive then
            TriggerClientEvent('ox_lib:notify', source, {type = 'error', description = Config.Locales['not_in_event']})
            return false
        end

        local playerName = GetPlayerName(source)
        print(string.format('^3[PX-Helpbox] %s bir kutu açtı: %s^7', playerName, boxName))

        -- Eşyayı tüket
        ox_inventory:RemoveItem(source, boxName, 1, nil, item.slot)

        -- Sabit eşya dağıtımı
        for _, itemData in ipairs(data.items) do
            local amount = itemData.amount or 1
            if ox_inventory:CanCarryItem(source, itemData.name, amount) then
                ox_inventory:AddItem(source, itemData.name, amount)
            else
                TriggerClientEvent('ox_lib:notify', source, {type = 'error', description = 'Envanteriniz çok ağır! Bazı eşyalar sığmadı.'})
            end
        end

        TriggerClientEvent('ox_lib:notify', source, {type = 'success', description = Config.Locales['box_opened']})
    end)
end

-- Etkinlik eşyalarının kontrolü
for itemName, _ in pairs(Config.EventItems) do
    -- Eğer bu eşya zaten bir kutu olarak tescil edildiyse, burada tekrar tescil etme (çakışma olmasın)
    if not Config.Boxes[itemName] then
        QBCore.Functions.CreateUseableItem(itemName, function(source, item)
            if not Config.EventActive then
                TriggerClientEvent('ox_lib:notify', source, {type = 'error', description = Config.Locales['not_in_event']})
                return false
            end
            
            return true
        end)
    end
end

-- Admin Komutu: Etkinliği Başlat/Bitir
RegisterCommand('etkinlikkutukullanim', function(source, args, rawCommand)
    local player = source
    
    -- Admin kontrolü (ESX/QB/ACE yetkisi)
    -- Bu örnekte basitçe ace yetkisi kontrolü yapıyoruz:
    if IsPlayerAceAllowed(source, 'command.etkinlikkutukullanim') or source == 0 then
        Config.EventActive = not Config.EventActive
        local status = Config.EventActive and Config.Locales['event_on'] or Config.Locales['event_off']
        local color = Config.EventActive and '^2' or '^1'
        
        TriggerEvent('px_helpbox:server:syncEvent', Config.EventActive)
        TriggerClientEvent('ox_lib:notify', -1, {type = 'inform', description = status})
        print(string.format('^3[PX-Helpbox] Etkinlik durumu: %s%s^7', color, status))
    else
        TriggerClientEvent('ox_lib:notify', source, {type = 'error', description = Config.Locales['no_permission']})
    end
end, false)

-- Client tarafına senkronizasyon için event
RegisterNetEvent('px_helpbox:server:syncEvent', function(state)
    Config.EventActive = state
    TriggerClientEvent('px_helpbox:client:syncEvent', -1, state)
end)

-- İlk girişte oyunculara durumu gönder
AddEventHandler('playerJoining', function()
    local source = source
    TriggerClientEvent('px_helpbox:client:syncEvent', source, Config.EventActive)
end)
