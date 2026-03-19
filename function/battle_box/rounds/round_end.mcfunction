# Disable pvp
gamerule pvp false

# Announce round end
title @a title {"bold":true,"color":"yellow","text":"Round over!"}
# SFX
playsound minecraft:entity.player.levelup player @a -633.50 9999 556.50 9999 2


# Remove the previously commenced round from the fixture
data remove storage minecraft:fixture fixture[0]

# If there is an upcoming round in the fixture, schedule the next round
execute if data storage minecraft:fixture fixture[0] run schedule function minecraft:battle_box/rounds/round_init 5s
    
# If not, end battle box
execute unless data storage minecraft:fixture fixture[0] run schedule function minecraft:battle_box/battle_box_end 5s