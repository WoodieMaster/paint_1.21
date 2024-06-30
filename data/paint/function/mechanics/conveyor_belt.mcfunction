scoreboard players set @e[tag=cube,type=shulker] count 0
execute as @e[type=shulker,tag=cube,scores={count=0}] at @s store result score @s count if block ~ ~ ~ iron_trapdoor[open=false,facing=north] if block ~ ~ ~1 #paint:nonsolid run tp @s ~ ~ ~1
execute as @e[type=shulker,tag=cube,scores={count=0}] at @s store result score @s count if block ~ ~ ~ iron_trapdoor[open=false,facing=south] if block ~ ~ ~-1 #paint:nonsolid run tp @s ~ ~ ~-1
execute as @e[type=shulker,tag=cube,scores={count=0}] at @s store result score @s count if block ~ ~ ~ iron_trapdoor[open=false,facing=west] if block ~1 ~ ~ #paint:nonsolid run tp @s ~1 ~ ~
execute as @e[type=shulker,tag=cube,scores={count=0}] at @s store result score @s count if block ~ ~ ~ iron_trapdoor[open=false,facing=east] if block ~-1 ~ ~ #paint:nonsolid run tp @s ~-1 ~ ~

execute as @e[type=shulker,tag=cube,scores={count=0}] at @s if block ~ ~ ~ iron_trapdoor[open=true,half=top] if block ~ ~1 ~ #paint:nonsolid align xyz positioned ~0.5 ~1 ~0.5 as @a[distance=..0.80] at @s run tp @s ~ ~1.2 ~
execute as @e[type=shulker,tag=cube,scores={count=0}] at @s store result score @s count if block ~ ~ ~ iron_trapdoor[open=true,half=top] if block ~ ~1 ~ #paint:nonsolid run tp @s ~ ~1 ~
execute as @e[type=shulker,tag=cube,scores={count=0}] at @s store result score @s count if block ~ ~ ~ iron_trapdoor[open=true,half=bottom] if block ~ ~-1 ~ #paint:nonsolid run tp @s ~ ~-1 ~

schedule function paint:mechanics/conveyor_belt 15t
