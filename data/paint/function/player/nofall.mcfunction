execute store result score @s fall run data get entity @s Motion[1] 100
execute if entity @s[scores={fall=..-40},gamemode=!creative,gamemode=!spectator] unless block ~ ~-1 ~ #paint:nonsolid run scoreboard players set @s nofall 2
execute if entity @s[scores={fall=..-80},gamemode=!creative,gamemode=!spectator] run scoreboard players set @s nofall 2

execute if entity @s[scores={nofall=1..}] run scoreboard players remove @s nofall 1
execute if entity @s[scores={nofall=1..}] run effect give @s slow_falling 1 100 true
execute if entity @s[scores={nofall=0}] run effect clear @s slow_falling
execute if entity @s[scores={nofall=..0}] run scoreboard players reset @s nofall
