execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
data merge entity @s {Duration:20}
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 0.2 1
scoreboard players set @s bounce 8
