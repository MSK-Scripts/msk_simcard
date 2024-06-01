## Installation Guide
https://docu.msk-scripts.de/simcard/installation

## yFlip/ySeries Phone
```lua
Config.Database = {
    usersDB = 'users', -- ESX: 'users' // QB: 'players'
    usersIdentifierTB = 'identifier', -- ESX: 'identifier' // QB: 'citizenid'

    numberDB = 'yphone_sim_cards', 
    numberTB = 'sim_number', 
    identifierTB = 'phone_imei'
}
```

## Chezza Phone
```lua
Config.Database = {
    usersDB = 'users', -- ESX: 'users' // QB: 'players'
    usersIdentifierTB = 'identifier', -- ESX: 'identifier' // QB: 'citizenid'

    numberDB = 'phones', 
    numberTB = 'phone_number', 
    identifierTB = 'identifier' -- ESX: 'identifier' // QB: 'citizenid'
}
```

## High Phone
```lua
Config.Database = {
    usersDB = 'users', -- ESX: 'users' // QB: 'players'
    usersIdentifierTB = 'identifier', -- ESX: 'identifier' // QB: 'citizenid'

    numberDB = 'users', -- ESX: 'users' // QB: 'players'
    numberTB = 'phone', 
    identifierTB = 'identifier' -- ESX: 'identifier' // QB: 'citizenid'
}
```

## GC Phone & D-Phone
```lua
Config.Database = {
    usersDB = 'users', -- ESX: 'users' // QB: 'players'
    usersIdentifierTB = 'identifier', -- ESX: 'identifier' // QB: 'citizenid'

    numberDB = 'users', -- ESX: 'users' // QB: 'players'
    numberTB = 'phone_number', 
    identifierTB = 'identifier' -- ESX: 'identifier' // QB: 'citizenid'
}
```

## GKS Phone
```lua
Config.Database = {
    usersDB = 'users', -- ESX: 'users' // QB: 'players'
    usersIdentifierTB = 'identifier', -- ESX: 'identifier' // QB: 'citizenid'

    numberDB = 'gksphone_settings', 
    numberTB = 'phone_number', 
    identifierTB = 'identifier'
}
```

## QBCore Phone
```lua
Config.Database = {
    usersDB = 'players', 
    usersIdentifierTB = 'citizenid',

    numberDB = 'players', 
    numberTB = 'charinfo', 
    identifierTB = 'citizenid' 
}
```