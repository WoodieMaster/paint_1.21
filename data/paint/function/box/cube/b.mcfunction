tp @e[tag=spawnerB,tag=cube_spawner] ~ ~-10 ~
tp @e[tag=cube,tag=cubeB,type=!player] ~ ~-10 ~
kill @e[tag=spawnerB,tag=cube_spawner]
kill @e[tag=cube,tag=cubeB,type=!player]
kill @e[type=!player,scores={color=2}]
scoreboard players reset @e[scores={color=2}] color
tag @a[tag=cubeB] remove cube
tag @a[tag=cubeB] remove cubeB
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["b","spawnerB","cube_spawner"]}
