#door setup
scoreboard players set @e[type=armor_stand,tag=door,tag=!fix] locksound 0
scoreboard players set @e[type=armor_stand,tag=door,tag=!fix] open 0
execute as @e[type=armor_stand,tag=door,tag=x,tag=!fix] run data merge entity @s {Pose:[],Rotation:[90.0f,0.0f]}
execute as @e[type=armor_stand,tag=door,tag=z,tag=!fix] run data merge entity @s {Pose:[],Rotation:[0.0f,0.0f]}
execute as @e[type=armor_stand,tag=door,tag=x,tag=!fix] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:light_blue_stained_glass_pane replace minecraft:air
execute as @e[type=armor_stand,tag=door,tag=z,tag=!fix] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:light_blue_stained_glass_pane replace minecraft:air
execute as @e[type=armor_stand,tag=door,tag=inv,tag=!fix] at @s run tp @s ~ ~1 ~
tag @e[type=armor_stand,tag=door,tag=!fix] add fix

item replace entity @e[type=armor_stand,tag=door,tag=!lock,tag=!dark] armor.head with minecraft:oak_door
item replace entity @e[type=armor_stand,tag=door,tag=!lock,tag=dark] armor.head with minecraft:birch_door
item replace entity @e[type=armor_stand,tag=door,tag=lock,tag=!dark] armor.head with minecraft:spruce_door
item replace entity @e[type=armor_stand,tag=door,tag=lock,tag=dark] armor.head with minecraft:jungle_door


scoreboard players add @e[type=armor_stand,tag=door,tag=lock,scores={locksound=..1}] locksound 1

scoreboard players remove @e[type=armor_stand,tag=door,tag=!lock,scores={locksound=1..}] locksound 1
execute as @e[type=armor_stand,tag=door,tag=lock,scores={locksound=1}] at @s run playsound lock master @a ~ ~ ~ 3 1
execute as @e[type=armor_stand,tag=door,tag=!lock,scores={locksound=1}] at @s run playsound unlock master @a ~ ~ ~ 3 1

execute as @e[tag=door,tag=open,scores={open=6..9}] at @s unless entity @a[distance=..4,gamemode=!spectator] run tag @s remove open
execute as @e[tag=door,tag=!open,scores={open=0..3}] at @s if entity @a[distance=..7.5,gamemode=!spectator] run tag @s add open
tag @e[type=armor_stand,tag=door,tag=lock,tag=open] remove open

execute as @e[tag=door,tag=open,scores={open=..8}] at @s if entity @p[distance=..4,gamemode=!spectator] run scoreboard players add @s open 1
execute as @e[tag=door,tag=!open,scores={open=1..}] at @s unless entity @p[distance=..7.6,gamemode=!spectator] run scoreboard players remove @s open 1
execute as @e[tag=door,tag=!open,tag=lock,scores={open=1..}] run scoreboard players remove @s open 1

execute as @e[type=armor_stand,tag=door,tag=open,tag=z,scores={open=5}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:blue_stained_glass_pane
execute as @e[type=armor_stand,tag=door,tag=open,tag=z,scores={open=5}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:light_blue_stained_glass_pane
execute as @e[type=armor_stand,tag=door,tag=open,tag=x,scores={open=5}] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:blue_stained_glass_pane
execute as @e[type=armor_stand,tag=door,tag=open,tag=x,scores={open=5}] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:light_blue_stained_glass_pane

execute as @e[type=armor_stand,tag=door,tag=!open,tag=z,scores={open=1}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:light_blue_stained_glass_pane replace minecraft:blue_stained_glass_pane
execute as @e[type=armor_stand,tag=door,tag=!open,tag=z,scores={open=1}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:light_blue_stained_glass_pane replace minecraft:air
execute as @e[type=armor_stand,tag=door,tag=!open,tag=x,scores={open=1}] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:light_blue_stained_glass_pane replace minecraft:blue_stained_glass_pane
execute as @e[type=armor_stand,tag=door,tag=!open,tag=x,scores={open=1}] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:light_blue_stained_glass_pane replace minecraft:air

execute as @e[type=armor_stand,tag=door,tag=open,scores={open=6},tag=!opened] at @s run teleport @s ~ ~-3 ~
execute as @e[type=armor_stand,tag=door,tag=!open,scores={open=3},tag=opened] at @s run teleport @s ~ ~3 ~

tag @e[type=armor_stand,tag=door,tag=open,scores={open=6},tag=!opened] add opened
tag @e[type=armor_stand,tag=door,tag=!open,scores={open=3},tag=opened] remove opened

execute as @a at @s run execute as @e[distance=..6,tag=door,tag=z,tag=lock,scores={open=..0}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:blue_stained_glass_pane replace light_blue_stained_glass_pane
execute as @a at @s run execute as @e[distance=..6,tag=door,tag=z,tag=lock,scores={open=..0}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:blue_stained_glass_pane replace air
execute as @a at @s run execute as @e[distance=..6,tag=door,tag=x,tag=lock,scores={open=..0}] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:blue_stained_glass_pane replace light_blue_stained_glass_pane
execute as @a at @s run execute as @e[distance=..6,tag=door,tag=x,tag=lock,scores={open=..0}] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:blue_stained_glass_pane replace air

execute as @e[type=armor_stand,tag=door,scores={open=4},tag=open] at @s run particle cloud ~ ~-0.5 ~ 0.7 0.7 0.7 0.4 20
execute as @e[type=armor_stand,tag=door,scores={open=4},tag=open] at @s run playsound open master @a ~ ~ ~ 0.5 1
execute as @e[type=armor_stand,tag=door,scores={open=4},tag=!open] at @s run playsound close master @a ~ ~ ~ 0.5 1
