execute as @e[type=armor_stand,tag=detector,tag=!setup] at @s run setblock ~ ~ ~ minecraft:diamond_ore
execute as @e[type=armor_stand,tag=detector,tag=setup] at @s if block ~ ~ ~ air run kill @s

tag @e[type=armor_stand,tag=detector,tag=!setup] add setup

execute as @e[type=armor_stand,tag=detector,tag=!active] at @s if block ~ ~ ~ minecraft:redstone_block run playsound deactivate master @a ~ ~ ~ 0.5 1 1
execute as @e[type=armor_stand,tag=detector,tag=!active] at @s unless block ~ ~ ~ diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore
execute as @e[type=armor_stand,tag=detector,tag=active] at @s if block ~ ~ ~ minecraft:diamond_ore run playsound activate master @a ~ ~ ~ 0.5 1 1
execute as @e[type=armor_stand,tag=detector,tag=active] at @s unless block ~ ~ ~ redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block
