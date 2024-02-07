fx_version 'cerulean'
game 'gta5'

author 'Trascher_TV'
description 'Police CAD on Google Docs in game! by TRMD'
version '1.3.0'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

shared_script{
    "config.lua"
}

client_script {
    "client/main.lua"
}

server_script {
    "server/main.lua"
}