# SFX
playsound minecraft:entity.player.levelup player @a 86.50 51.00 -53.50 2 1.5
# Announce MVP
tellraw @a [{"bold":true,"selector":"@p[tag=player,scores={lobby_mvp=1}]"},{"bold":false,"color":"aqua","text":" is this MCC's highest-scoring player - the "},{"bold":true,"text":"MVP"},{"bold":false,"color":"aqua","text":"!"}]