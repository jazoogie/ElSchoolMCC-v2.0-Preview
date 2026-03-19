# tell player they're safe
title @s actionbar [{"color":"green","text":"Safe - Barrier at y="},{"score":{"name":"$death_barrier_y","objective":"sumo_data"}}]

# reset their sumo barrier score (timer)
scoreboard players set @s sumo_barrier 101