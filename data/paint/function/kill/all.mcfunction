kill @e[type=armor_stand,tag=spawnerA]
kill @e[type=armor_stand,tag=spawnerB]
kill @e[type=armor_stand,tag=spawnerC]
kill @e[type=armor_stand,tag=spawnerD]
kill @e[type=armor_stand,tag=spawnerE]
kill @e[type=armor_stand,tag=spawnerF]

kill @e[tag=bucket]

kill @e[tag=cake]
kill @e[tag=screen]
kill @e[tag=radio]

kill @e[tag=drone]
kill @e[tag=cam]
kill @e[tag=laser]

kill @e[tag=turret]
kill @e[tag=cleaner]

kill @e[type=armor_stand,tag=cube]
kill @e[type=shulker,tag=cube]
execute as @a run function paint:player/clear_cube

execute as @e[tag=pr] at @s run fill ~-5 ~-5 ~-5 ~5 ~6 ~5 stone replace #paint:paintable
kill @e[tag=pr]

execute as @e[tag=door] at @s run fill ~-1 ~-1 ~-1 ~1 ~4 ~1 minecraft:air replace minecraft:blue_stained_glass_pane
execute as @e[tag=door] at @s run fill ~-1 ~-1 ~-1 ~1 ~4 ~1 minecraft:air replace minecraft:light_blue_stained_glass_pane
kill @e[type=armor_stand,tag=door]

execute as @e[tag=detector,type=armor_stand] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block

execute as @e[tag=doorlock] at @s run tag @e[tag=door,limit=1,sort=nearest] remove lock
kill @e[tag=doorlock]

execute as @e[name=energy,type=armor_stand,tag=!stay] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore replace minecraft:redstone_block
kill @e[type=armor_stand,name=energy,tag=!stay]


kill @e[tag=fizzlerdoor]
kill @e[tag=fizzlerdoorlock]
kill @e[tag=detector]
kill @e[tag=platform]
kill @e[tag=transmitter]
kill @e[tag=receiver]

execute as @e[tag=!dark,tag=painter] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","white","spread"],Duration:7}
execute as @e[tag=dark,tag=painter] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","white","spread"],Duration:7}
kill @e[tag=painter]


scoreboard players set @a spotted 0
