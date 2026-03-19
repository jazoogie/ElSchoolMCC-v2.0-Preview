# Admin testing:
# execute if entity @s[name=JesseM702] run team join red @s
# execute if entity @s[name=Roomab] run team join orange @s

#> Add this current player (@s) to specified team
# Red
execute if entity @s[name=Yar1] run team join red @s
execute if entity @s[name=klejdi6] run team join red @s

# Orange
execute if entity @s[name=Willeoall] run team join orange @s
execute if entity @s[name=Glizzy_funny] run team join orange @s

# Yellow
execute if entity @s[name=frnnk] run team join yellow @s
execute if entity @s[name=Masaters] run team join yellow @s

# Lime
execute if entity @s[name=lgie] run team join lime @s
execute if entity @s[name=arttic__] run team join lime @s

# Cyan
execute if entity @s[name=Paradox_40] run team join cyan @s
execute if entity @s[name=lilz123] run team join cyan @s

# Blue
execute if entity @s[name=ace75_] run team join blue @s
execute if entity @s[name=mseg] run team join blue @s

# Purple
execute if entity @s[name=Mogibear12] run team join purple @s
execute if entity @s[name=letters4600] run team join purple @s

# Pink
execute if entity @s[name=Bynjamin] run team join pink @s
execute if entity @s[name=rubberducky7979] run team join pink @s


# Tp
tp @s 86.5 44.5 -92.5

# Reset player data
gamemode adventure @s
effect clear @s
clear @s
xp set @s 0 points
xp set @s 0 levels


# Tag player
tag @s add player
# Mark player as registered in lobby
scoreboard players set @s lobby_data 1