#setup
scoreboard players set @e[tag=painter,tag=!reg] alive 0

execute as @e[type=armor_stand,tag=!reg,tag=painter] at @s if block ~ ~ ~ #paint:painter_dark run tag @s add dark
execute as @e[type=armor_stand,tag=!reg,tag=painter] at @s if block ~ ~ ~ #paint:painter_gray run tag @s add gray

tag @e[type=armor_stand,tag=painter,tag=!reg] add reg
execute as @e[type=armor_stand,tag=reg,tag=painter] at @s if block ~ ~ ~ minecraft:air run kill @s

#painter off
scoreboard players add @e[tag=painter,tag=active,scores={alive=..4}] alive 1
scoreboard players remove @e[tag=painter,tag=!active,scores={alive=1..}] alive 1

#activate
execute as @e[tag=painter,tag=active,scores={alive=2}] at @s unless entity @e[tag=painter,scores={alive=3..},distance=..3] run playsound minecraft:tube_exit master @a ~ ~ ~ 1 2

execute as @e[tag=painter,tag=active,scores={alive=2},tag=blue] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid","blue","spread","spread_start"],Duration:7}
execute as @e[tag=painter,tag=active,scores={alive=2},tag=green] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid","green","spread","spread_start"],Duration:7}
execute as @e[tag=painter,tag=active,scores={alive=2},tag=orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid","yellow","spread","spread_start"],Duration:7}
execute as @e[tag=painter,tag=active,scores={alive=2},tag=red] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid","red","spread","spread_start"],Duration:7}
execute as @e[tag=painter,tag=active,scores={alive=2},tag=purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid","purple","spread","spread_start"],Duration:7}

#deactivate
execute as @e[tag=painter,tag=!active,scores={alive=1}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=armor_stand,tag=active,distance=1..1.5] run playsound minecraft:entity.squid.ambient master @a ~ ~ ~ 1 1.2
execute as @e[tag=!dark,tag=!gray,tag=painter,tag=!active,scores={alive=1}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=armor_stand,tag=active,distance=1..1.5] run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","white","spread"],Duration:7}
execute as @e[tag=dark,tag=painter,tag=!active,scores={alive=1}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=armor_stand,tag=active,distance=1..1.5] run summon area_effect_cloud ~ ~ ~ {Tags:["solid","white","spread"],Duration:7}
execute as @e[tag=gray,tag=painter,tag=!active,scores={alive=1}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=armor_stand,tag=active,distance=1..1.5] run summon area_effect_cloud ~ ~ ~ {Tags:["solid","white","spread"],Duration:7}
execute as @e[tag=!gray,tag=!dark,tag=painter,tag=!active,scores={alive=1}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=armor_stand,tag=active,distance=1..1.5] run summon area_effect_cloud ~ ~ ~ {Tags:["solid","white","spread"],Duration:7}

kill @e[tag=!active,scores={alive=0},tag=painter]

#if two painters are on at the same time
execute as @e[tag=painter,tag=!active,scores={alive=7}] at @s if entity @a[tag=break_painter,distance=..9] run scoreboard players set @e[tag=painter,scores={alive=8},limit=1,sort=nearest,distance=..9] alive 1
execute as @a[tag=break_painter] at @s run scoreboard players set @e[tag=painter,tag=!active,distance=..9,limit=1,sort=nearest] alive 2
tag @e[tag=break_painter] remove break_painter
