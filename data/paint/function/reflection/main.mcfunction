execute if entity @s[scores={bounce=0}] if block ~ ~0.1 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~0.2 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~0.3 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~0.4 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~0.5 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~-0.1 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~-0.2 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~-0.3 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~-0.4 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~ ~-0.5 ~ iron_block run function paint:reflection/y
execute if entity @s[scores={bounce=0}] if block ~0.1 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~0.2 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~0.3 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~0.4 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~0.5 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~-0.1 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~-0.2 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~-0.3 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~-0.4 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~-0.5 ~ ~ iron_block run function paint:reflection/x
execute if entity @s[scores={bounce=0}] if block ~ ~ ~0.1 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~0.2 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~0.3 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~0.4 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~0.5 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~-0.1 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~-0.2 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~-0.3 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~-0.4 iron_block run function paint:reflection/z
execute if entity @s[scores={bounce=0}] if block ~ ~ ~-0.5 iron_block run function paint:reflection/z

scoreboard players remove @s[scores={bounce=1..}] bounce 1
