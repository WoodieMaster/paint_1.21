execute if block ~ ~-1 ~ air run item replace entity @s armor.head with minecraft:cocoa_beans
execute if block ~ ~-1 ~ air run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 1
execute unless block ~ ~-1 ~ air run item replace entity @s armor.head with minecraft:green_dye

execute store result score @s success run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stone replace #paint:painted
execute as @s[scores={success=1..}] at @s run playsound cleaner.clean master @a ~ ~ ~ 10 1 1
