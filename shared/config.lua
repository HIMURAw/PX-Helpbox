Config = {}

-- Etkinlik durumu (Admin komutu ile değiştirilebilir)
Config.EventActive = false

-- Bildirimler için kullanılan dil dosyası gibi düşünebilirsiniz
Config.Locales = {
    ['not_in_event'] = 'Bu eşya sadece etkinlik sırasında kullanılabilir!',
    ['box_opened'] = 'Kutuyu açtın ve içindekileri aldın.',
    ['event_on'] = 'Etkinlik modu AKTİF edildi.',
    ['event_off'] = 'Etkinlik modu DEAKTİF edildi.',
    ['no_permission'] = 'Bu komutu kullanmak için yetkiniz yok!'
}

-- Kutular ve içinden kesin olarak çıkacak eşyalar
Config.Boxes = {
    ['pistol_box'] = {
        label = 'Pistol Kutusu',
        items = {
            { name = 'water', amount = 1 },
            { name = 'bandage', amount = 2 },
            { name = 'bread', amount = 1 }
        }
    },
    ['medic_box'] = {
        label = 'Medikal Kutusu',
        items = {
            { name = 'bandage', amount = 3 },
            { name = 'medkit', amount = 1 }
        }
    }
}

-- Sadece etkinlik sırasında kullanılabilen eşyalar
Config.EventItems = {
    ['water'] = true,
    ['bandage'] = true,
    ['bread'] = true,
    ['medkit'] = true
}

-- Admin yetkisi kontrolü için kullanılan grup (QB/ESX uyumlu olması için server tarafında kontrol edilecek)
Config.AdminGroup = 'admin'
