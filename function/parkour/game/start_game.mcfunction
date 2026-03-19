# Turn off collisions
team modify red collisionRule never
team modify orange collisionRule never
team modify yellow collisionRule never
team modify lime collisionRule never
team modify cyan collisionRule never
team modify blue collisionRule never
team modify purple collisionRule never
team modify pink collisionRule never

# Invisibility
effect give @a[tag=player] invisibility infinite 0 true

# Team boots
item replace entity @a[tag=player,team=red] armor.feet with leather_boots[dyed_color=11546150,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=orange] armor.feet with leather_boots[dyed_color=16351261,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=yellow] armor.feet with leather_boots[dyed_color=16701501,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=lime] armor.feet with leather_boots[dyed_color=8439583,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=cyan] armor.feet with leather_boots[dyed_color=1481884,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=blue] armor.feet with leather_boots[dyed_color=3949738,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=purple] armor.feet with leather_boots[dyed_color=8991416,enchantments={"binding_curse":1},enchantment_glint_override=false]
item replace entity @a[tag=player,team=pink] armor.feet with leather_boots[dyed_color=15961002,enchantments={"binding_curse":1},enchantment_glint_override=false]

# Release the goobers
fill -772 65 -609 -772 69 -605 air replace gray_concrete destroy

# Reset parkour data
# Note: parkour completes can't be shown below name - players are invisible
scoreboard players set @a[tag=player] parkour_completes 0
scoreboard players set @a[tag=player] parkour_data 0
scoreboard players set @a[tag=player] parkour_used_skip 0


# Reset tags
tag @a[tag=player] remove parkour_0
tag @a[tag=player] remove parkour_1
tag @a[tag=player] remove parkour_2
tag @a[tag=player] remove parkour_3
tag @a[tag=player] remove parkour_4
tag @a[tag=player] remove parkour_5
tag @a[tag=player] remove parkour_6
tag @a[tag=player] remove parkour_7
tag @a[tag=player] remove parkour_8
tag @a[tag=player] remove parkour_9
tag @a[tag=player] remove parkour_10
tag @a[tag=player] remove parkour_11
tag @a[tag=player] remove parkour_12
tag @a[tag=player] remove parkour_13
tag @a[tag=player] remove parkour_14
tag @a[tag=player] remove parkour_15
tag @a[tag=player] remove parkour_16
tag @a[tag=player] remove parkour_17
tag @a[tag=player] remove parkour_18
tag @a[tag=player] remove parkour_19
tag @a[tag=player] remove parkour_20
tag @a[tag=player] remove parkour_21
tag @a[tag=player] remove parkour_22
tag @a[tag=player] remove parkour_23
tag @a[tag=player] remove parkour_24
tag @a[tag=player] remove parkour_25
tag @a[tag=player] remove parkour_26
tag @a[tag=player] remove parkour_27
tag @a[tag=player] remove parkour_28
tag @a[tag=player] remove parkour_29
tag @a[tag=player] remove parkour_30
tag @a[tag=player] remove parkour_31
tag @a[tag=player] remove parkour_32


# Start the timer - 15 mins
scoreboard players set $timer parkour_data 900
function minecraft:parkour/game/timer

function minecraft:parkour/game/loop