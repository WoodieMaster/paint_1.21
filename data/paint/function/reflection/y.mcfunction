execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
data merge entity @s {Duration:20}
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 0.2 1.3
scoreboard players set @s bounce 8
