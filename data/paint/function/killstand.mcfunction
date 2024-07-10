particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20
execute as @e[distance=..3,type=!player] at @s run setblock ~ ~ ~ air destroy
execute as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace blue_stained_glass_pane
execute as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace light_blue_stained_glass_pane
execute as @e[distance=..3,type=!player,tag=fizzlerdoor] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace tripwire
kill @e[distance=..3,type=!player]