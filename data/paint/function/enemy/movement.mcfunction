#direction block on ground

#ersetze die direction scores mit directions
#abprallen abhängig von blickrichtung des cleaners (@s[x_rotation=0], @s[x_rotation=!0])
execute if block ~ ~-1 ~ dark_oak_log[axis=x] run tp @s ~ ~ ~ -90 0
execute if block ~ ~ ~1 dark_oak_log[axis=x] run tp @s ~ ~ ~ -90 0
execute if block ~ ~ ~-1 dark_oak_log[axis=x] run tp @s ~ ~ ~ -90 0
execute if block ~-1 ~ ~ dark_oak_log[axis=x] run tp @s ~ ~ ~ -90 0


execute if block ~ ~-1 ~ stripped_dark_oak_log[axis=z] run tp @s ~ ~ ~ 0 0
execute if block ~1 ~ ~ stripped_dark_oak_log[axis=z] run tp @s ~ ~ ~ 0 0
execute if block ~-1 ~ ~ stripped_dark_oak_log[axis=z] run tp @s ~ ~ ~ 0 0
execute if block ~ ~ ~-1 dark_oak_log[axis=z] run tp @s ~ ~ ~ 0 0

execute if block ~ ~-1 ~ stripped_dark_oak_log[axis=x] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~1 stripped_dark_oak_log[axis=x] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~-1 stripped_dark_oak_log[axis=x] run tp @s ~ ~ ~ 90 0
execute if block ~1 ~ ~ dark_oak_log[axis=x] run tp @s ~ ~ ~ 90 0

execute if block ~ ~-1 ~ dark_oak_log[axis=z] run tp @s ~ ~ ~ 180 0
execute if block ~1 ~ ~ dark_oak_log[axis=z] run tp @s ~ ~ ~ 180 0
execute if block ~-1 ~ ~ dark_oak_log[axis=z] run tp @s ~ ~ ~ 180 0
execute if block ~ ~ ~1 dark_oak_log[axis=z] run tp @s ~ ~ ~ 180 0

execute if block ~1 ~ ~ dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 -90
execute if block ~-1 ~ ~ dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 -90
execute if block ~ ~ ~1 dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 -90
execute if block ~ ~ ~-1 dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 -90
execute if block ~ ~-1 ~ dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 -90

execute if block ~1 ~ ~ stripped_dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 90
execute if block ~-1 ~ ~ stripped_dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 90
execute if block ~ ~ ~1 stripped_dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 90
execute if block ~ ~ ~-1 stripped_dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 90
execute if block ~ ~1 ~ dark_oak_log[axis=y] run tp @s ~ ~ ~ 0 90

execute as @s[x_rotation=0] unless block ^ ^ ^1 #paint:laserwhitelist run tp @s ~ ~ ~ ~180 ~
execute as @s[x_rotation=90] unless block ^ ^ ^1 #paint:laserwhitelist run tp @s ~ ~ ~ ~ -90
execute as @s[x_rotation=-90] unless block ^ ^ ^1 #paint:laserwhitelist run tp @s ~ ~ ~ ~ 90

#move cube
execute as @s[scores={direction=1,movecd=10}] at @s positioned ~1 ~ ~ if entity @e[tag=cube,type=!player,distance=..0.5] run playsound cleaner.move master @a ~ ~ ~ 10 1
execute as @s[scores={direction=2,movecd=10}] at @s positioned ~ ~ ~1 if entity @e[tag=cube,type=!player,distance=..0.5] run playsound cleaner.move master @a ~ ~ ~ 10 1
execute as @s[scores={direction=3,movecd=10}] at @s positioned ~-1 ~ ~ if entity @e[tag=cube,type=!player,distance=..0.5] run playsound cleaner.move master @a ~ ~ ~ 10 1
execute as @s[scores={direction=4,movecd=10}] at @s positioned ~ ~ ~-1 if entity @e[tag=cube,type=!player,distance=..0.5] run playsound cleaner.move master @a ~ ~ ~ 10 1
execute as @s[scores={direction=5,movecd=10}] at @s positioned ~ ~1 ~ if entity @e[tag=cube,type=!player,distance=..0.5] run playsound cleaner.move master @a ~ ~ ~ 10 1
execute as @s[scores={direction=6,movecd=10}] at @s positioned ~ ~-1 ~ if entity @e[tag=cube,type=!player,distance=..0.5] run playsound cleaner.move master @a ~ ~ ~ 10 1


execute as @s[scores={direction=1,movecd=10}] at @s positioned ~1 ~ ~ run tag @e[tag=cube,tag=red,tag=spawnedlaser,distance=..0.5] remove spawnedlaser
execute as @s[scores={direction=2,movecd=10}] at @s positioned ~ ~ ~1 run tag @e[tag=cube,tag=red,tag=spawnedlaser,distance=..0.5] remove spawnedlaser
execute as @s[scores={direction=3,movecd=10}] at @s positioned ~-1 ~ ~ run tag @e[tag=cube,tag=red,tag=spawnedlaser,distance=..0.5] remove spawnedlaser
execute as @s[scores={direction=4,movecd=10}] at @s positioned ~ ~ ~-1 run tag @e[tag=cube,tag=red,tag=spawnedlaser,distance=..0.5] remove spawnedlaser
execute as @s[scores={direction=5,movecd=10}] at @s positioned ~ ~1 ~ run tag @e[tag=cube,tag=red,tag=spawnedlaser,distance=..0.5] remove spawnedlaser
execute as @s[scores={direction=6,movecd=10}] at @s positioned ~ ~-1 ~ run tag @e[tag=cube,tag=red,tag=spawnedlaser,distance=..0.5] remove spawnedlaser

execute as @s[scores={direction=1,movecd=10}] at @s positioned ~1 ~ ~ as @e[tag=cube,type=shulker,distance=..0.5,tag=!complained] run playsound minecraft:cube.complain master @a ~ ~ ~ 10 1

execute as @s[scores={direction=2,movecd=10}] at @s positioned ~ ~ ~1 as @e[tag=cube,type=shulker,distance=..0.5,tag=!complained] run playsound minecraft:cube.complain master @a ~ ~ ~ 10 1

execute as @s[scores={direction=3,movecd=10}] at @s positioned ~-1 ~ ~ as @e[tag=cube,type=shulker,distance=..0.5,tag=!complained] run playsound minecraft:cube.complain master @a ~ ~ ~ 10 1

execute as @s[scores={direction=4,movecd=10}] at @s positioned ~ ~ ~-1 as @e[tag=cube,type=shulker,distance=..0.5,tag=!complained] run playsound minecraft:cube.complain master @a ~ ~ ~ 10 1

execute as @s[scores={direction=5,movecd=10}] at @s positioned ~ ~1 ~ as @e[tag=cube,type=shulker,distance=..0.5,tag=!complained] run playsound minecraft:cube.complain master @a ~ ~ ~ 10 1

execute as @s[scores={direction=6,movecd=10}] at @s positioned ~ ~-1 ~ as @e[tag=cube,type=shulker,distance=..0.5,tag=!complained] run playsound minecraft:cube.complain master @a ~ ~ ~ 10 1

execute as @s[scores={direction=1,movecd=10}] at @s positioned ~1 ~ ~ run tag @e[tag=cube,distance=..0.5,type=shulker] add complained
execute as @s[scores={direction=2,movecd=10}] at @s positioned ~ ~ ~1 run tag @e[tag=cube,distance=..0.5,type=shulker] add complained
execute as @s[scores={direction=3,movecd=10}] at @s positioned ~-1 ~ ~ run tag @e[tag=cube,distance=..0.5,type=shulker] add complained
execute as @s[scores={direction=4,movecd=10}] at @s positioned ~ ~ ~-1 run tag @e[tag=cube,distance=..0.5,type=shulker] add complained
execute as @s[scores={direction=5,movecd=10}] at @s positioned ~ ~1 ~ run tag @e[tag=cube,distance=..0.5,type=shulker] add complained
execute as @s[scores={direction=6,movecd=10}] at @s positioned ~ ~-1 ~ run tag @e[tag=cube,distance=..0.5,type=shulker] add complained

execute as @s[scores={direction=1,movecd=10}] at @s positioned ~1 ~ ~ run tp @e[type=shulker,tag=cube,distance=..0.5] ~1 ~ ~
execute as @s[scores={direction=2,movecd=10}] at @s positioned ~ ~ ~1 run tp @e[type=shulker,tag=cube,distance=..0.5] ~ ~ ~1
execute as @s[scores={direction=3,movecd=10}] at @s positioned ~-1 ~ ~ run tp @e[type=shulker,tag=cube,distance=..0.5] ~-1 ~ ~
execute as @s[scores={direction=4,movecd=10}] at @s positioned ~ ~ ~-1 run tp @e[type=shulker,tag=cube,distance=..0.5] ~ ~ ~-1
execute as @s[scores={direction=5,movecd=10}] at @s positioned ~ ~1 ~ run tp @e[type=shulker,tag=cube,distance=..0.5] ~ ~1 ~
execute as @s[scores={direction=6,movecd=10}] at @s positioned ~ ~-1 ~ run tp @e[type=shulker,tag=cube,distance=..0.5] ~ ~-1 ~

execute at @s run tp @s ^ ^ ^0.1
