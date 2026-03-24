fx_version 'cerulean'
game 'gta5'

author 'Antigravity'
description 'PX-Helpbox Script'
version '1.0.0'

shared_script 'shared/config.lua'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory'
}
