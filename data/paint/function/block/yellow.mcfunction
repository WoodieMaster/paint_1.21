execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~ ~2 ~ #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~-1 ~ ~ #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~1 ~ ~ #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~-1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~-1 ~1 ~ #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~1 ~1 ~ #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~ ~1 ~1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~ ~1 ~-1 #paint:speed run effect give @s minecraft:speed 2 2 true

execute as @a[gamemode=!spectator] at @s if block ~1 ~ ~1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~-1 ~ ~1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~1 ~ ~-1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~-1 ~ ~-1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~1 ~1 ~1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~-1 ~1 ~1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~1 ~1 ~-1 #paint:speed run effect give @s minecraft:speed 2 2 true
execute as @a[gamemode=!spectator] at @s if block ~-1 ~1 ~-1 #paint:speed run effect give @s minecraft:speed 2 2 true

execute as @a[scores={speed=..10}] at @s if block ~ ~-1 ~ #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~ ~2 ~ #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~-1 ~ ~ #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~1 ~ ~ #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~ ~ ~1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~ ~ ~-1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~-1 ~1 ~ #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~1 ~1 ~ #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~ ~1 ~1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~ ~1 ~-1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1

execute as @a[scores={speed=..10}] at @s if block ~1 ~ ~1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~-1 ~ ~1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~1 ~ ~-1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~-1 ~ ~-1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~1 ~1 ~1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~-1 ~1 ~1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~1 ~1 ~-1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1
execute as @a[scores={speed=..10}] at @s if block ~-1 ~1 ~-1 #paint:speed run playsound minecraft:contact.yellow master @a ~ ~ ~ 2 1

scoreboard players set @a[nbt={active_effects:[{duration:40,id:"minecraft:speed",amplifier:2b}]}] speed 41
scoreboard players remove @a[scores={speed=1..}] speed 1

execute as @a[team=P1] store result bossbar minecraft:speed value run scoreboard players get @s speed
bossbar set minecraft:speed players @a[team=P1,scores={speed=1..}]

execute as @a[team=P2] store result bossbar minecraft:speed2 value run scoreboard players get @s speed
bossbar set minecraft:speed2 players @a[team=P2,scores={speed=1..}]

execute as @a[team=P3] store result bossbar minecraft:speed3 value run scoreboard players get @s speed
bossbar set minecraft:speed3 players @a[team=P3,scores={speed=1..}]

execute as @a[team=P4] store result bossbar minecraft:speed4 value run scoreboard players get @s speed
bossbar set minecraft:speed4 players @a[team=P4,scores={speed=1..}]

execute as @a at @s run fill ~-1 ~-3 ~-1 ~1 ~2 ~1 minecraft:spruce_fence_gate[open=true] replace minecraft:spruce_fence_gate[open=false]
