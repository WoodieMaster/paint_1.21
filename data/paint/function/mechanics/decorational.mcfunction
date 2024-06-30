execute as @e[type=armor_stand,tag=radio,tag=!setup] run data merge entity @s {NoBasePlate:1,Pose:[]}
execute as @e[type=armor_stand,tag=screen,tag=!setup] run data merge entity @s {NoBasePlate:1,Pose:[]}
execute as @e[type=armor_stand,tag=cake,tag=!setup] run data merge entity @s {NoBasePlate:1,Pose:[]}
item replace entity @e[type=armor_stand,tag=!setup,tag=radio] armor.head with minecraft:feather
item replace entity @e[type=armor_stand,tag=!setup,tag=cake] armor.head with minecraft:gunpowder
item replace entity @e[type=armor_stand,tag=!setup,tag=screen] armor.head with minecraft:wheat_seeds