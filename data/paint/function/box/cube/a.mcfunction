tp @e[tag=spawnerA,tag=cube_spawner] ~ ~-10 ~
tp @e[tag=cube,tag=cubeA,type=!player] ~ ~-10 ~
kill @e[tag=spawnerA,tag=cube_spawner]
kill @e[tag=cube,tag=cubeA,type=!player]
kill @e[type=!player,scores={color=1}]
scoreboard players reset @e[scores={color=1}] color
tag @a[tag=cubeA] remove cube
tag @a[tag=cubeA] remove cubeA

execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["a","spawnerA","cube_spawner"]}
