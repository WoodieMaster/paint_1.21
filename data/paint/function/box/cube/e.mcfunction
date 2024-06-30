tp @e[tag=spawnerE,tag=cube_spawner] ~ ~-10 ~
tp @e[tag=cube,tag=cubeE,type=!player] ~ ~-10 ~
kill @e[tag=spawnerE,tag=cube_spawner]
kill @e[tag=cube,tag=cubeE,type=!player]
kill @e[type=!player,scores={color=5}]
scoreboard players reset @e[scores={color=5}] color
tag @a[tag=cubeE] remove cube
tag @a[tag=cubeE] remove cubeE
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["e","spawnerE","cube_spawner"]}
