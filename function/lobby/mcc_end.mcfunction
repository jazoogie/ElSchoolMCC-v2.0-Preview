# Disable pvp
gamerule pvp false

#> Podium handling
# Reset player podium data
scoreboard players set @a[tag=player] lobby_podium 0

# Initialise lobby_podium tracking variable
scoreboard players set $podium_tracker lobby_podium 1
# Set ts_marker lobby_podium scores to 0 
#  - if this were missing, we wouldn't be able to target them with scores={lobby_podium=0}
scoreboard players set @e[type=armor_stand,tag=ts_marker] lobby_podium 0
# Begin assigning recursion
function minecraft:lobby/assign_podium

#> MVP handling
# Reset all player mvp data
scoreboard players set @a[tag=player] lobby_mvp 0
# Find the highest score
scoreboard players set $highest lobby_mvp -1
scoreboard players operation $highest lobby_mvp > @a[tag=player] scores

# Temporarily track the highest scoring players (-1)
execute as @a[tag=player] if score @s scores = $highest lobby_mvp run scoreboard players set @s lobby_mvp -1
# Randomly pick from the pool of highest scoring players
scoreboard players set @r[tag=player,scores={lobby_mvp=-1}] lobby_mvp 1

#> Crowns
# Regular podium crowns
item replace entity @a[tag=player,scores={lobby_podium=1}] armor.head with golden_helmet[enchantments={"binding_curse":1}]
item replace entity @a[tag=player,scores={lobby_podium=2}] armor.head with iron_helmet[enchantments={"binding_curse":1}]
item replace entity @a[tag=player,scores={lobby_podium=3}] armor.head with copper_helmet[enchantments={"binding_curse":1}]

# MVP crowns
item replace entity @a[tag=player,scores={lobby_mvp=1}] armor.head with netherite_helmet[trim={material:"minecraft:amethyst",pattern:"minecraft:raiser"},enchantments={"binding_curse":1}]
item replace entity @a[tag=player,scores={lobby_podium=1,lobby_mvp=1}] armor.head with golden_helmet[trim={material:"minecraft:amethyst",pattern:"minecraft:raiser"},enchantments={"binding_curse":1}]
item replace entity @a[tag=player,scores={lobby_podium=2,lobby_mvp=1}] armor.head with iron_helmet[trim={material:"minecraft:amethyst",pattern:"minecraft:raiser"},enchantments={"binding_curse":1}]
item replace entity @a[tag=player,scores={lobby_podium=3,lobby_mvp=1}] armor.head with copper_helmet[trim={material:"minecraft:amethyst",pattern:"minecraft:raiser"},enchantments={"binding_curse":1}]


# Tp all to podium section
tp @a 86.50 45.00 -67.50 0 -20

# Re-tp admins to hallway
tp @a[team=admin] 86.50 45.00 -77.50 0 0 

# Re-tp podium finishers to their podiums
tp @a[tag=player,scores={lobby_podium=1}] 86.50 51.00 -53.50 180 0
tp @a[tag=player,scores={lobby_podium=2}] 83.50 49.00 -56.50 180 0 
tp @a[tag=player,scores={lobby_podium=3}] 89.50 47.00 -56.50 180 0 



# Announce winner
title @a reset
execute if entity @a[tag=player,team=red,scores={lobby_podium=1}] run title @a title [{"text":"Red","color":"red","bold":true}]
execute if entity @a[tag=player,team=orange,scores={lobby_podium=1}] run title @a title [{"text":"Orange","color":"gold","bold":true}]
execute if entity @a[tag=player,team=yellow,scores={lobby_podium=1}] run title @a title [{"text":"Yellow","color":"yellow","bold":true}]
execute if entity @a[tag=player,team=lime,scores={lobby_podium=1}] run title @a title [{"text":"Lime","color":"green","bold":true}]
execute if entity @a[tag=player,team=cyan,scores={lobby_podium=1}] run title @a title [{"text":"Cyan","color":"dark_aqua","bold":true}]
execute if entity @a[tag=player,team=blue,scores={lobby_podium=1}] run title @a title [{"text":"Blue","color":"blue","bold":true}]
execute if entity @a[tag=player,team=purple,scores={lobby_podium=1}] run title @a title [{"text":"Purple","color":"dark_purple","bold":true}]
execute if entity @a[tag=player,team=pink,scores={lobby_podium=1}] run title @a title [{"text":"Pink","color":"light_purple","bold":true}]
title @a subtitle "wins the El School MCC!"

# Refresh scoreboard
function minecraft:lobby/scoreboard/scoreboard_init

# Firework
summon firework_rocket 86 47 -60 {LifeTime:17,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[65280],fade_colors:[255]}]}}}}

# Show original team scores
scoreboard objectives setdisplay sidebar team_scores
# Show player scores
scoreboard objectives setdisplay list scores

# Schedule MVP announcement notification
schedule function minecraft:lobby/mvp_announce 5s