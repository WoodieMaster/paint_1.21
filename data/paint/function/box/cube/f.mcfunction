tp @e[tag=spawnerF,tag=cube_spawner] ~ ~-10 ~
tp @e[tag=cube,tag=cubeF,type=!player] ~ ~-10 ~
kill @e[tag=spawnerF,tag=cube_spawner]
kill @e[tag=cube,tag=cubeF,type=!player]
kill @e[type=!player,scores={color=6}]
scoreboard players reset @e[scores={color=6}] color
execute as @a[tag=cubeF] run function paint:player/clear_cube
tag @a[tag=cubeF] remove cubeF
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["f","spawnerF","cube_spawner"]}
