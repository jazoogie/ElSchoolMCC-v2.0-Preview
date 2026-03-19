# Kill bb_cw - robustness to do beforehand
kill @e[type=armor_stand,tag=bb_cw]
# Summon bb_cw - 'battle box check wool'
summon armor_stand -633.50 108.00 556.50 {Marker:1b,Invisible:1b,Tags:["bb_cw"]}

# Reset bba_tracker
scoreboard players set $bba_tracker battle_box_arena 1
# Loop over every arena to check for completed wool
function minecraft:battle_box/rounds/check_wool/cw_arena

# Kill bb_cw
kill @e[type=armor_stand,tag=bb_cw]
