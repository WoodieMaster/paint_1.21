execute as @e[tag=turret,distance=..24] at @a[distance=..24,gamemode=adventure] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Duration:6,Tags:["paint","laser_check"]}
execute as @e[tag=turret,distance=..24] at @s facing entity @p[gamemode=adventure] eyes run tp @s ~ ~ ~ ~ ~

execute as @e[tag=laser_check,tag=!setup] at @s run tp @s ~ ~ ~ facing entity @e[tag=turret,sort=nearest,limit=1] eyes

execute as @e[tag=turret] at @s run data merge entity @s {Glowing:0b}
execute as @s[tag=laser_check] positioned ~ ~ ~ run data merge entity @e[tag=turret,distance=..1,limit=1,sort=nearest] {Glowing:1b}

scoreboard players set @e[type=area_effect_cloud,tag=laser_check,tag=!setup] pspeed 20
tag @e[tag=laser_check,tag=paint,tag=!setup] add setup

scoreboard players remove @a[scores={spotted=1..}] spotted 1
