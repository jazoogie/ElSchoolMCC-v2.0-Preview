# Safe tag lobby arrows
execute as @e[type=arrow,x=95,y=45,z=-89,dx=8,dy=3,dz=9] run tag @s add lobby_arrow
execute as @e[type=arrow,x=97,y=45,z=-108,dx=4,dy=3,dz=11] run tag @s add lobby_arrow
kill @e[type=arrow,tag=!lobby_arrow]

# Remove safe tag
tag @e[type=arrow, tag=lobby_arrow] remove lobby_arrow

# Kill dropped items
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]


# Tag players in shooting ranges
tag @a[tag=player,x=95,y=45,z=-89,dx=8,dy=3,dz=9] add lobby_shooter
tag @a[tag=player,x=97,y=45,z=-108,dx=4,dy=3,dz=11] add lobby_shooter

# Give players bows and arrows
item replace entity @a[tag=player, tag=lobby_shooter] container.0 with bow
item replace entity @a[tag=player, tag=lobby_shooter] container.1 with arrow

# Clear player bows and arrows
clear @a[tag=player, tag=!lobby_shooter] bow
clear @a[tag=player, tag=!lobby_shooter] arrow

# Remove tag
tag @a[tag=player, tag=lobby_shooter] remove lobby_shooter