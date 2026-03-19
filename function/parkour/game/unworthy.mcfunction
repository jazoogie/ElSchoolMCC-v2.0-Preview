# TP off of throne
tp @s -665.50 80.00 -589.50 90 0

# Tell player they are unworthy
tellraw @s {"bold":true,"color":"dark_red","text":"You are unworthy of the throne."}
# SFX
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.2