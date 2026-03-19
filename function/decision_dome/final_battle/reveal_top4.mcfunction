# Summon lightning for coolness 
execute at @a[tag=player,scores={final_battle_data=1..}] run summon lightning_bolt

# Give finalists their coloured outfits
# Red
item replace entity @a[tag=player,team=red,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=11546150,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=red,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=11546150,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=red,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=11546150,enchantments={"binding_curse":1},unbreakable={}]
# Orange
item replace entity @a[tag=player,team=orange,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=16351261,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=orange,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=16351261,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=orange,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=16351261,enchantments={"binding_curse":1},unbreakable={}]
# Yellow
item replace entity @a[tag=player,team=yellow,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=16701501,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=yellow,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=16701501,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=yellow,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=16701501,enchantments={"binding_curse":1},unbreakable={}]
# Lime
item replace entity @a[tag=player,team=lime,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=8439583,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=lime,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=8439583,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=lime,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=8439583,enchantments={"binding_curse":1},unbreakable={}]
# Cyan
item replace entity @a[tag=player,team=cyan,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=1481884,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=cyan,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=1481884,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=cyan,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=1481884,enchantments={"binding_curse":1},unbreakable={}]
# Blue
item replace entity @a[tag=player,team=blue,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=3949738,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=blue,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=3949738,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=blue,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=3949738,enchantments={"binding_curse":1},unbreakable={}]
# Purple
item replace entity @a[tag=player,team=purple,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=8991416,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=purple,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=8991416,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=purple,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=8991416,enchantments={"binding_curse":1},unbreakable={}]
# Pink
item replace entity @a[tag=player,team=pink,scores={final_battle_data=1..}] armor.chest with leather_chestplate[dyed_color=15961002,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=pink,scores={final_battle_data=1..}] armor.legs with leather_leggings[dyed_color=15961002,enchantments={"binding_curse":1},unbreakable={}]
item replace entity @a[tag=player,team=pink,scores={final_battle_data=1..}] armor.feet with leather_boots[dyed_color=15961002,enchantments={"binding_curse":1},unbreakable={}]

# Schedule start of the final battle
schedule function minecraft:final_battle/final_battle_start 5s


