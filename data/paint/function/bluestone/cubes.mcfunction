#stacking on other cubes/lasers
tag @e[tag=blockplace,type=shulker] remove blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid positioned ^ ^ ^1 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid if block ^ ^ ^2 #paint:nonsolid positioned ^ ^ ^2 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid if block ^ ^ ^2 #paint:nonsolid if block ^ ^ ^3 #paint:nonsolid positioned ^ ^ ^3 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid if block ^ ^ ^2 #paint:nonsolid if block ^ ^ ^3 #paint:nonsolid if block ^ ^ ^4 #paint:nonsolid positioned ^ ^ ^4 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @e[type=shulker] at @s align xyz positioned ~0.5 ~-1 ~0.5 run tag @e[type=shulker,limit=1,distance=..0.5,tag=blockplace] remove blockplace

#picking up the cube
execute as @a[tag=!cube,scores={pick=1..}] at @s as @e[type=shulker,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..8] at @s run tag @e[tag=cube,type=shulker,limit=1,sort=nearest,distance=..1] add picked
execute as @a[scores={pick=1..},tag=!cube] at @s if entity @e[tag=cube,tag=picked,distance=..8] run playsound cube.pickup block @a ~ ~ ~ 2 1.2

execute as @e[type=shulker,tag=picked] at @s run scoreboard players operation @p[scores={pick=1..},tag=!cube] color = @s color
execute as @e[type=shulker,tag=picked] at @s as @p[distance=..8,scores={pick=1..},tag=!cube] run function paint:player/give_cube

#killing picked cube
execute as @e[tag=picked,type=!player] at @s run tp @s ~ ~-40 ~
execute as @e[tag=picked,type=!player] at @s run data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @e[tag=picked,type=!player]

#resetting pick score
scoreboard players reset @a[scores={pick=1..}] pick

#TODO
#laser blocks pushing other cubes
execute as @e[type=shulker,tag=laser] at @s align xyz if entity @e[type=shulker,tag=cube,dx=0,dy=0,dz=0] as @e[type=shulker,tag=cube,dx=0,dy=10,dz=0] at @s run tp @s ~ ~1 ~
#execute as @e[type=shulker,tag=cube] at @s align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=shulker,tag=cube,distance=..0.40] as @e[type=shulker,tag=cube,dx=0,dy=10,dz=0] at @s run tp @s ~ ~1 ~

#gravity
execute as @e[type=shulker,tag=cube,tag=!blue,tag=!green,tag=!red,tag=!yellow,tag=!gray] at @s unless block ~ ~ ~ iron_trapdoor unless block ~ ~1 ~ #paint:painter_all unless block ~ ~-1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all unless block ~ ~-1 ~ iron_trapdoor[half=top] positioned ~ ~-1 ~ unless entity @e[type=shulker,tag=laser,distance=..0.5] unless entity @e[type=shulker,tag=cube,distance=..0.5] if block ~ ~ ~ #paint:cubegravity run teleport @s ~ ~ ~

#correcting cube position on spawn
#clinging to conveyor belts
execute as @e[tag=cubespawn] at @s if block ~ ~2 ~ iron_trapdoor[open=false] run tp @s ~ ~2 ~
execute as @e[tag=cubespawn] at @s if block ~ ~1 ~ iron_trapdoor[open=false] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s if block ~1 ~ ~ iron_trapdoor[open=true,facing=west] run tp @s ~1 ~ ~
execute as @e[tag=cubespawn] at @s if block ~-1 ~ ~ iron_trapdoor[open=true,facing=east] run tp @s ~-1 ~ ~
execute as @e[tag=cubespawn] at @s if block ~ ~ ~1 iron_trapdoor[open=true,facing=north] run tp @s ~ ~ ~1
execute as @e[tag=cubespawn] at @s if block ~ ~ ~-1 iron_trapdoor[open=true,facing=south] run tp @s ~ ~ ~-1

execute as @e[tag=cubespawn] at @s if block ~ ~ ~ dirt_path run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s if block ~ ~-1 ~ #paint:cubegravity unless block ~ ~ ~ iron_trapdoor unless block ~ ~-1 ~ iron_trapdoor[half=top] unless block ~ ~1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all unless block ~1 ~ ~ minecraft:polished_andesite unless block ~-1 ~ ~ minecraft:polished_andesite unless block ~ ~ ~1 polished_andesite unless block ~ ~ ~-1 polished_andesite unless block ~ ~1 ~ polished_andesite positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.5] run tp @s ~ ~ ~
execute as @e[tag=cubespawn] at @s if block ~ ~-1 ~ #paint:cubegravity unless block ~ ~ ~ iron_trapdoor unless block ~ ~-1 ~ iron_trapdoor[half=top] unless block ~ ~1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all unless block ~1 ~ ~ minecraft:polished_andesite unless block ~-1 ~ ~ minecraft:polished_andesite unless block ~ ~ ~1 polished_andesite unless block ~ ~ ~-1 polished_andesite unless block ~ ~1 ~ polished_andesite positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.5] run tp @s ~ ~ ~

#placing cubes on other cubes or lasers
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run scoreboard players set @p[scores={shoot=1..},tag=cube] place 1
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run kill @e[tag=cubespawn,distance=..5]
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["stacked_cube","cubespawn"]}

execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=cube,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=cube,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=cube,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=cube,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=cube,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~

execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=laser,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=laser,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=laser,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=laser,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~
execute as @e[tag=cubespawn] at @s align xyz if entity @e[tag=laser,type=shulker,dx=0,dy=0,dz=0] run tp @s ~ ~1 ~

execute as @e[tag=cubespawn] at @s align xyz if block ~ ~ ~ #paint:cubewhitelist run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup"],NoGravity:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand","cubesetup"],NoAI:1b,Invulnerable:0b,NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe"}]}]}

execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run scoreboard players set @e place 0
execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist as @p run function paint:player/give_cube
execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run tp @s ~ ~-10 ~
execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run playsound minecraft:cube.meh master @a ~ ~ ~ 1 1.3
execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run kill @s

#copying cube color score back to cube
execute as @a[tag=cube,scores={place=1..}] at @s run scoreboard players operation @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] color = @s color
execute as @a[tag=cube,scores={place=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=cubesetup,limit=1,sort=nearest] color = @s color
scoreboard players reset @a[scores={place=1..}] color

#color score for cubes out of tubes
execute as @e[tag=cubespawn_valve] at @s run scoreboard players operation @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] color = @s color
execute as @e[tag=cubespawn_valve] at @s run scoreboard players operation @e[tag=cube,type=armor_stand,tag=cubesetup,limit=1,sort=nearest] color = @s color

#adjust cube color model
item replace entity @e[tag=cube,type=armor_stand,scores={color=1}] armor.head with minecraft:iron_hoe
item replace entity @e[tag=cube,type=armor_stand,scores={color=2}] armor.head with minecraft:diamond_hoe
item replace entity @e[tag=cube,type=armor_stand,scores={color=3}] armor.head with minecraft:golden_hoe
item replace entity @e[tag=cube,type=armor_stand,scores={color=4}] armor.head with minecraft:stone_hoe

tag @e[tag=cubesetup] remove cubesetup

execute as @e[tag=cubespawn] at @s run tp @s ~ 0 ~
kill @e[tag=cubespawn]
execute as @e[type=chicken] at @s run tp @s ~ 0 ~
kill @e[type=chicken]

#walking through fizzler
execute as @a[tag=cube] at @s if block ~ ~ ~ #paint:cube_remove run particle minecraft:poof ~ ~0.5 ~ 0.1 0.1 0.1 0.1 4
execute as @a[tag=cube] at @s if block ~ ~ ~ #paint:cube_remove run scoreboard players set @s place 1
execute as @a[tag=cube] at @s if block ~ ~ ~ #paint:cube_remove run playsound cube.complain master @a ~ ~ ~ 10 1 1

#placing a cube
execute as @a[scores={place=1..}] run function paint:player/clear_cube
execute as @a[scores={place=1..}] at @s run playsound cube.place block @a ~ ~ ~ 1 1
item replace entity @s[tag=!cube] weapon.offhand with air
scoreboard players reset @a[tag=!cube] color
scoreboard players reset @a[scores={place=1..}] place

#blocks lethal for cubes
execute as @e[type=shulker,tag=cube] at @s unless block ~ ~ ~ #paint:cubewhitelist run tag @s add cubehurt
execute as @e[type=shulker,tag=cube] at @s if block ~ ~ ~ minecraft:dead_brain_coral run tag @s add cubehurt

#cube death
execute as @e[type=shulker,tag=cubehurt] at @s run playsound cube.death master @a ~ ~ ~ 10 1 1
execute as @e[type=shulker,tag=cubehurt] at @s run particle minecraft:poof ~ ~0.5 ~ 0.1 0.1 0.1 0.1 4
execute as @e[type=shulker,tag=cubehurt] at @s run tp @s ~ ~-50 ~
execute as @e[type=shulker,tag=cubehurt] at @s run kill @e[limit=1,sort=nearest,tag=cube]

#cube armor stand without shulker self kill
execute as @e[type=armor_stand,tag=cube] at @s unless entity @e[type=shulker,tag=cube,distance=..2,limit=1] run kill @s
