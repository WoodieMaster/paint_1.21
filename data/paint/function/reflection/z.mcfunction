execute store result score @s reflect run data get entity @s Rotation[0] 10000
scoreboard players set mirror reflect 1800000
scoreboard players operation mirror reflect -= @s reflect
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get mirror reflect
data merge entity @s {Duration:20}
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 0.2 1.5
scoreboard players set @s bounce 8
