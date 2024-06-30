
execute if score music music matches 1 if score music musictime matches 1210.. run scoreboard players set music musictime 0
execute if score music music matches 2 if score music musictime matches 3010.. run scoreboard players set music musictime 0
execute if score music music matches 3 if score music musictime matches 4201.. run scoreboard players set music musictime 0
execute if score music music matches 4 if score music musictime matches 4101.. run scoreboard players set music musictime 0
execute if score music music matches 5 if score music musictime matches 3600.. run scoreboard players set music musictime 0
execute if score music music matches 6 if score music musictime matches 3600.. run scoreboard players set music musictime 0
execute if score music music matches 7 if score music musictime matches 1900.. run scoreboard players set music musictime 0
execute if score music music matches 8 if score music musictime matches 1500.. run scoreboard players set music musictime 0
execute if score music music matches 9 if score music musictime matches 2220.. run scoreboard players set music musictime 0
execute if score music music matches 10 if score music musictime matches 2740.. run scoreboard players set music musictime 0

execute if score music musictime matches 0 run stopsound @a record


execute if score music music matches 1 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_lost record @s ~ ~ ~ 1000 1 1
execute if score music music matches 2 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_focus record @s ~ ~ ~ 1000 1 1
execute if score music music matches 3 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_hello record @s ~ ~ ~ 1000 1 1
execute if score music music matches 4 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_echo record @s ~ ~ ~ 1000 1 1
execute if score music music matches 5 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_carrie record @s ~ ~ ~ 1000 1 1
execute if score music music matches 6 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_abandoned record @s ~ ~ ~ 1000 1 1
execute if score music music matches 7 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_uplift record @s ~ ~ ~ 1000 1 1
execute if score music music matches 8 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_chase record @s ~ ~ ~ 1000 1 1
execute if score music music matches 9 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_mission record @s ~ ~ ~ 1000 1 1
execute if score music music matches 10 if score music musictime matches 0 as @a at @s run playsound minecraft:bg_light record @s ~ ~ ~ 1000 1 1

scoreboard players add music musictime 1
