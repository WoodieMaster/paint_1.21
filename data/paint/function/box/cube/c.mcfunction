tp @e[tag=spawnerC,tag=cube_spawner] ~ ~-10 ~
tp @e[tag=cube,tag=cubeC,type=!player] ~ ~-10 ~
kill @e[tag=spawnerC,tag=cube_spawner]
kill @e[tag=cube,tag=cubeC,type=!player]
kill @e[type=!player,scores={color=3}]
scoreboard players reset @e[scores={color=3}] color
execute as @a[tag=cubeC] run function paint:player/clear_cube
tag @a[tag=cubeC] remove cubeC
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["c","spawnerC","cube_spawner"]}
