# Tell admins the MCC is commenced
tellraw @a[team=admin] {"bold":true,"color":"aqua","text":"The MCC has been commenced!"}

# Begin decision dome countdown (30s)
scoreboard players set $countdown lobby_data 31
function minecraft:lobby/countdown