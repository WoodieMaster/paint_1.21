execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s run setblock ~ ~ ~ minecraft:redstone_lamp
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:white_terracotta run tag @s add blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:white_terracotta run tag @s add blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:orange_terracotta run tag @s add not_blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:orange_terracotta run tag @s add not_blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:magenta_terracotta run tag @s add green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:magenta_terracotta run tag @s add green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:light_blue_terracotta run tag @s add not_green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:light_blue_terracotta run tag @s add not_green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:yellow_terracotta run tag @s add yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:yellow_terracotta run tag @s add yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:lime_terracotta run tag @s add not_yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:lime_terracotta run tag @s add not_yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:pink_terracotta run tag @s add red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:pink_terracotta run tag @s add red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:gray_terracotta run tag @s add not_red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:gray_terracotta run tag @s add not_red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:light_gray_terracotta run tag @s add blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:light_gray_terracotta run tag @s add blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:cyan_terracotta run tag @s add not_blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add not_blue
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:purple_terracotta run tag @s add green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:purple_terracotta run tag @s add green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:blue_terracotta run tag @s add not_green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:blue_terracotta run tag @s add not_green
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:brown_terracotta run tag @s add yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:brown_terracotta run tag @s add yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:green_terracotta run tag @s add not_yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:green_terracotta run tag @s add not_yellow
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:red_terracotta run tag @s add red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:red_terracotta run tag @s add red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~1 ~ minecraft:black_terracotta run tag @s add not_red
execute as @e[type=armor_stand,tag=transmitter,tag=!setup] at @s if block ~ ~-1 ~ minecraft:black_terracotta run tag @s add not_red
tag @e[type=armor_stand,tag=transmitter,tag=!setup] add setup

execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s run setblock ~ ~ ~ minecraft:diamond_ore
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:white_terracotta run tag @s add blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:white_terracotta run tag @s add blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:white_terracotta run tag @s add blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:white_terracotta run tag @s add blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:orange_terracotta run tag @s add not_blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:orange_terracotta run tag @s add not_blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:orange_terracotta run tag @s add not_blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:orange_terracotta run tag @s add not_blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:magenta_terracotta run tag @s add green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:magenta_terracotta run tag @s add green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:magenta_terracotta run tag @s add green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:magenta_terracotta run tag @s add green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:light_blue_terracotta run tag @s add not_green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:light_blue_terracotta run tag @s add not_green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:light_blue_terracotta run tag @s add not_green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:light_blue_terracotta run tag @s add not_green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:yellow_terracotta run tag @s add yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:yellow_terracotta run tag @s add yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:yellow_terracotta run tag @s add yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:yellow_terracotta run tag @s add yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:lime_terracotta run tag @s add not_yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:lime_terracotta run tag @s add not_yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:lime_terracotta run tag @s add not_yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:lime_terracotta run tag @s add not_yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:pink_terracotta run tag @s add red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:pink_terracotta run tag @s add red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:pink_terracotta run tag @s add red2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:pink_terracotta run tag @s add red2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:gray_terracotta run tag @s add not_red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:gray_terracotta run tag @s add not_red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:gray_terracotta run tag @s add not_red2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:gray_terracotta run tag @s add not_red2

execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:light_gray_terracotta run tag @s add blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:light_gray_terracotta run tag @s add blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:light_gray_terracotta run tag @s add blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:light_gray_terracotta run tag @s add blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:cyan_terracotta run tag @s add not_blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:cyan_terracotta run tag @s add not_blue1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:cyan_terracotta run tag @s add not_blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:cyan_terracotta run tag @s add not_blue2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:purple_terracotta run tag @s add green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:purple_terracotta run tag @s add green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:purple_terracotta run tag @s add green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:purple_terracotta run tag @s add green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:blue_terracotta run tag @s add not_green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:blue_terracotta run tag @s add not_green1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:blue_terracotta run tag @s add not_green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:blue_terracotta run tag @s add not_green2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:brown_terracotta run tag @s add yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:brown_terracotta run tag @s add yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:brown_terracotta run tag @s add yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:brown_terracotta run tag @s add yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:green_terracotta run tag @s add not_yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:green_terracotta run tag @s add not_yellow1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:green_terracotta run tag @s add not_yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:green_terracotta run tag @s add not_yellow2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:red_terracotta run tag @s add red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:red_terracotta run tag @s add red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:red_terracotta run tag @s add red2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:red_terracotta run tag @s add red2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~1 ~ minecraft:black_terracotta run tag @s add not_red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~2 ~ minecraft:black_terracotta run tag @s add not_red1
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-1 ~ minecraft:black_terracotta run tag @s add not_red2
execute as @e[type=armor_stand,tag=receiver,tag=!setup] at @s if block ~ ~-2 ~ minecraft:black_terracotta run tag @s add not_red2
tag @e[type=armor_stand,tag=receiver,tag=!setup] add setup


execute as @e[type=armor_stand,tag=a,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] as @e[tag=a,tag=receiver] at @s unless block ~ ~ ~ minecraft:diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=a,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=a,tag=receiver] at @s unless block ~ ~ ~ minecraft:redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:diamond_ore
execute as @e[type=armor_stand,tag=b,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] as @e[tag=b,tag=receiver] at @s unless block ~ ~ ~ minecraft:diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=b,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=b,tag=receiver] at @s unless block ~ ~ ~ minecraft:redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:diamond_ore
execute as @e[type=armor_stand,tag=c,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] as @e[tag=c,tag=receiver] at @s unless block ~ ~ ~ minecraft:diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=c,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=c,tag=receiver] at @s unless block ~ ~ ~ minecraft:redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:diamond_ore
execute as @e[type=armor_stand,tag=d,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] as @e[tag=d,tag=receiver] at @s unless block ~ ~ ~ minecraft:diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=d,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=d,tag=receiver] at @s unless block ~ ~ ~ minecraft:redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:diamond_ore
execute as @e[type=armor_stand,tag=e,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] as @e[tag=e,tag=receiver] at @s unless block ~ ~ ~ minecraft:diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=e,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=e,tag=receiver] at @s unless block ~ ~ ~ minecraft:redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:diamond_ore
execute as @e[type=armor_stand,tag=f,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=false] as @e[tag=f,tag=receiver] at @s unless block ~ ~ ~ minecraft:diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=f,tag=transmitter] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] as @e[tag=f,tag=receiver] at @s unless block ~ ~ ~ minecraft:redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:diamond_ore

execute as @e[type=armor_stand,tag=a,tag=transmitter] at @s if block ~ ~ ~ minecraft:air at @e[tag=a,tag=receiver] run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=b,tag=transmitter] at @s if block ~ ~ ~ minecraft:air at @e[tag=b,tag=receiver] run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=c,tag=transmitter] at @s if block ~ ~ ~ minecraft:air at @e[tag=c,tag=receiver] run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=d,tag=transmitter] at @s if block ~ ~ ~ minecraft:air at @e[tag=d,tag=receiver] run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=e,tag=transmitter] at @s if block ~ ~ ~ minecraft:air at @e[tag=e,tag=receiver] run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=f,tag=transmitter] at @s if block ~ ~ ~ minecraft:air at @e[tag=f,tag=receiver] run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
execute as @e[type=armor_stand,tag=transmitter] at @s if block ~ ~ ~ minecraft:air run kill @s
execute as @e[type=armor_stand,tag=receiver] at @s if block ~ ~ ~ minecraft:air run kill @s
