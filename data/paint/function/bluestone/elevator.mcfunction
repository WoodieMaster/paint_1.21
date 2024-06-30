#door setup
scoreboard players set @e[type=armor_stand,tag=elevator,tag=!fix] elevator 80


execute as @e[type=armor_stand,tag=elevator,tag=!fix,tag=x] run say hallo ich bin ein Fahrstuhl! X
execute as @e[type=armor_stand,tag=elevator,tag=!fix,tag=z] run say hallo ich bin ein Fahrstuhl! Z

execute as @e[type=armor_stand,tag=elevator,tag=!fix] run data merge entity @s {Pose:{}}

execute as @e[type=armor_stand,tag=elevator,tag=!fix,tag=z] at @s positioned ^0.5 ^0.5 ^1.5 run function paint:box/door/z
execute as @e[type=armor_stand,tag=elevator,tag=!fix,tag=z] at @s positioned ^0.5 ^0.5 ^-2.5 run function paint:box/door/z
execute as @e[type=armor_stand,tag=elevator,tag=!fix,tag=x] at @s positioned ^0.5 ^0.5 ^1.5 run function paint:box/door/x
execute as @e[type=armor_stand,tag=elevator,tag=!fix,tag=x] at @s positioned ^0.5 ^0.5 ^-2.5 run function paint:box/door/x
tag @e[type=armor_stand,tag=elevator,tag=!fix] add fix
