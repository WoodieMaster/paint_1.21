execute as @e[tag=blue,tag=bucket] at @s run particle minecraft:dust{color:[0f,.7f,1f],scale:.5} ~ ~ ~ 0.1 0.1 0.1 1 8 force
execute as @e[tag=green,tag=bucket] at @s run particle minecraft:dust{color:[0f,1f,.2f],scale:.5} ~ ~ ~ 0.1 0.1 0.1 1 8 force
execute as @e[tag=yellow,tag=bucket] at @s run particle minecraft:dust{color:[1f,.8f,0f],scale:.5} ~ ~ ~ 0.1 0.1 0.1 1 8 force
execute as @e[tag=red,tag=bucket] at @s run particle minecraft:dust{color:[1f,0f,.5f],scale:.5} ~ ~ ~ 0.1 0.1 0.1 1 8 force


execute as @e[tag=blue,tag=bucket] at @s as @a[tag=!mode5,tag=!mode1,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @e[tag=blue,tag=bucket] at @s as @a[tag=!mode5,tag=!mode1,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run scoreboard players set @s mode 1
execute as @e[tag=blue,tag=bucket] at @s as @a[tag=!mode5,tag=!mode1,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run tag @s add mode1

execute as @e[tag=green,tag=bucket] at @s as @a[tag=!mode5,tag=!mode2,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @e[tag=green,tag=bucket] at @s as @a[tag=!mode5,tag=!mode2,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run scoreboard players set @s mode 2
execute as @e[tag=green,tag=bucket] at @s as @a[tag=!mode5,tag=!mode2,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run tag @s add mode2

execute as @e[tag=yellow,tag=bucket] at @s as @a[tag=!mode5,tag=!mode3,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @e[tag=yellow,tag=bucket] at @s as @a[tag=!mode5,tag=!mode3,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run scoreboard players set @s mode 3
execute as @e[tag=yellow,tag=bucket] at @s as @a[tag=!mode5,tag=!mode3,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run tag @s add mode3

execute as @e[tag=red,tag=bucket] at @s as @a[tag=!mode5,tag=!mode4,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @e[tag=red,tag=bucket] at @s as @a[tag=!mode5,tag=!mode4,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run scoreboard players set @s mode 4
execute as @e[tag=red,tag=bucket] at @s as @a[tag=!mode5,tag=!mode4,distance=..0.7] at @s if block ~ ~ ~ minecraft:oak_pressure_plate run tag @s add mode4

execute as @e[tag=bucket] at @s if block ~ ~ ~ air run kill @s
