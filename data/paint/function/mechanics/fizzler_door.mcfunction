#fizzlerdoor

execute as @e[tag=fizzlerdoor,tag=x] at @s if block ~ ~ ~ air run particle block{block_state:"tripwire"} ~ ~2.5 ~ 0 1 1 0 1
execute as @e[tag=fizzlerdoor,tag=z] at @s if block ~ ~ ~ air run particle block{block_state:"tripwire"} ~ ~2.5 ~ 1 1 0 0 1

execute as @e[tag=fizzlerdoor,tag=lock] at @s if block ~ ~ ~ air run playsound minecraft:lock master @a ~ ~ ~ 1 2
execute as @e[tag=fizzlerdoor,tag=!lock] at @s if block ~ ~ ~ tripwire run playsound minecraft:unlock master @a ~ ~ ~ 1 2

execute as @e[tag=fizzlerdoor,tag=x,tag=lock] at @s run fill ~ ~ ~-2 ~ ~4 ~2 tripwire replace air
execute as @e[tag=fizzlerdoor,tag=x,tag=lock] at @s run fill ~ ~ ~-2 ~ ~4 ~2 tripwire replace tripwire_hook
execute as @e[tag=fizzlerdoor,tag=x,tag=!lock] at @s run fill ~ ~ ~-2 ~ ~4 ~2 air replace tripwire
execute as @e[tag=fizzlerdoor,tag=x,tag=!lock] at @s run fill ~ ~ ~-2 ~ ~4 ~2 air replace tripwire_hook

execute as @e[tag=fizzlerdoor,tag=z,tag=lock] at @s run fill ~-2 ~ ~ ~2 ~4 ~ tripwire replace air
execute as @e[tag=fizzlerdoor,tag=z,tag=lock] at @s run fill ~-2 ~ ~ ~2 ~4 ~ tripwire replace tripwire_hook
execute as @e[tag=fizzlerdoor,tag=z,tag=!lock] at @s run fill ~-2 ~ ~ ~2 ~4 ~ air replace tripwire
execute as @e[tag=fizzlerdoor,tag=z,tag=!lock] at @s run fill ~-2 ~ ~ ~2 ~4 ~ air replace tripwire_hook

