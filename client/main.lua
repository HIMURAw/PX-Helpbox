-- Sunucudan gelen etkinlik durumunu senkronize et
RegisterNetEvent('px_helpbox:client:syncEvent', function(state)
    Config.EventActive = state
end)

-- ox_inventory için client tarafında eşya kullanım kontrolü (opsiyonel bildirimler için)
-- Eğer sunucu tarafında registerUsableItem 'false' döndürürse eşya tüketilmez.
-- Ancak oyuncuya neden kullanılamadığını söylemek için client notification kullanıyoruz.

-- Not: Eğer standart eşyalar (water, bandage) kullanılıyorsa ve bunlar başka scriptlerde de tanımlıysa,
-- sunucu tarafındaki registerUsableItem çakışma yaratabilir. 
-- Bu durumda oyunculara bu eşyaların SADECE etkinlik eşyası olan versiyonlarını vermeniz daha sağlıklı olur (örn: event_water).

-- Eğer admin etkinlik modu kapalıyken bir eşya kullanmaya çalışırsa bildirim gönderiyoruz.
-- Bu kısım sunucudaki kontrole ek olarak görsel geri bildirim sağlar.

-- Bazı framework'lerde eşya kullanımı client tarafında bir event tetikler. 
-- QBCore: 'inventory:client:ItemBox' veya 'consumables:client:Eat' vb.
-- ox_inventory için en doğru yöntem sunucu tarafındaki 'registerUsableItem' dır.
-- Biz sunucu tarafında bunu zaten yaptık.

-- Ekstra: Eğer belirli bir alanda (zone) kullanım kısıtlaması isterseniz buraya polyzone kontrolü eklenebilir.

CreateThread(function()
    while true do
        Wait(1000)
        -- Gelecekte buraya etkinlik alanına girip çıkma kontrolleri eklenebilir.
    end
end)
