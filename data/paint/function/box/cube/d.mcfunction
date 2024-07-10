tp @e[tag=spawnerD,tag=cube_spawner] ~ ~-10 ~
tp @e[tag=cube,tag=cubeD,type=!player] ~ ~-10 ~
kill @e[tag=spawnerD,tag=cube_spawner]
kill @e[tag=cube,tag=cubeD,type=!player]
kill @e[type=!player,scores={color=4}]
scoreboard players reset @e[scores={color=4}] color
execute as @a[tag=cubeD] run function paint:player/clear_cube
tag @a[tag=cubeD] remove cubeD
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["d","spawnerD","cube_spawner"]}
