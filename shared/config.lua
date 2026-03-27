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
    ['brownin_box'] = {
        label = 'Brownin Kutusu',
        items = {
            { name = 'weapon_pistol', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['draco_box'] = {
        label = 'Draco Kutusu',
        items = {
            { name = 'weapon_compactrifle', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['shotgun_box'] = {
        label = 'Shotgun Kutusu',
        items = {
            { name = 'weapon_pumpshotgun', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['heavysniper_box'] = {
        label = 'Heavy Sniper Kutusu',
        items = {
            { name = 'weapon_heavysniper', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['ak47_box'] = {
        label = 'AK47 Kutusu',
        items = {
            { name = 'weapon_assaultrifle', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['revolver_box'] = {
        label = 'Revolver Kutusu',
        items = {
            { name = 'weapon_revolver', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['tommygun_box'] = {
        label = 'Tommy Gun Kutusu',
        items = {
            { name = 'weapon_gusenberg', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    },
    ['minismg_box'] = {
        label = 'Mini SMG Kutusu',
        items = {
            { name = 'weapon_minismg', amount = 1 },
            { name = 'bandage', amount = 20 },
            { name = 'armor', amount = 10 },
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 5 }
        }
    }
}

-- Sadece etkinlik sırasında kullanılabilen eşyalar
Config.EventItems = {
    ['water'] = true,
    ['bandage'] = true,
    ['bread'] = true,
    ['armor'] = true,
    ['weapon_pistol'] = true,
    ['weapon_compactrifle'] = true,
    ['weapon_pumpshotgun'] = true,
    ['weapon_heavysniper'] = true,
    ['weapon_assaultrifle'] = true,
    ['weapon_revolver'] = true,
    ['weapon_gusenberg'] = true,
    ['weapon_minismg'] = true,
    ['brownin_box'] = true,
    ['draco_box'] = true,
    ['shotgun_box'] = true,
    ['heavysniper_box'] = true,
    ['ak47_box'] = true,
    ['revolver_box'] = true,
    ['tommygun_box'] = true,
    ['minismg_box'] = true
}

-- Admin yetkisi kontrolü için kullanılan grup (QB/ESX uyumlu olması için server tarafında kontrol edilecek)
Config.AdminGroup = 'admin'
