execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~1 ~ ~ #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~-1 ~ ~ #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~ ~ ~1 #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~ ~ ~-1 #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~1 ~1 ~ #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~-1 ~1 ~ #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~ ~1 ~1 #paint:jump run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s if block ~ ~1 ~-1 #paint:jump run effect give @s minecraft:jump_boost 1 3 true

execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~ ~-1 ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~1 ~ ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~-1 ~ ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~ ~ ~1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~ ~ ~-1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~1 ~1 ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~-1 ~1 ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~ ~1 ~1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[gamemode=!spectator,nbt={OnGround:1b}] at @s positioned ~ ~1 ~-1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run effect give @s minecraft:jump_boost 1 3 true

execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~1 ~ ~ #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~-1 ~ ~ #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~ ~ ~1 #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~ ~ ~-1 #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~-1 ~1 ~ #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~1 ~1 ~ #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~ ~1 ~1 #paint:jump run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s if block ~ ~1 ~-1 #paint:jump run scoreboard players set @s lev 2

execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~1 ~ ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~-1 ~ ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~ ~ ~1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~ ~ ~-1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~1 ~1 ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~-1 ~1 ~ if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~ ~1 ~1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2
execute as @a[gamemode=!spectator,nbt={OnGround:0b}] at @s positioned ~ ~1 ~-1 if entity @e[type=shulker,tag=type_green,tag=laser,distance=..0.7] run scoreboard players set @s lev 2

scoreboard players set @a[scores={lev=2..,sneak=1..}] lev 0

execute as @a[nbt={active_effects:[{id:"minecraft:jump_boost"}]},scores={jump=1..}] at @s run playsound minecraft:contact.green_jump master @a ~ ~ ~ 1 1
scoreboard players set @a[scores={jump=1..}] jump 0

effect give @a[scores={lev=1..}] minecraft:levitation 1 20 true

tag @a[scores={lev=1..}] add greenjump
execute as @a[tag=greenjump,tag=!greenjumpsound] at @s run playsound minecraft:contact.green_jump master @a ~ ~ ~ 1 1
tag @a[tag=greenjump,tag=!greenjumpsound] add greenjumpsound

effect clear @a[scores={lev=..0}] minecraft:levitation

scoreboard players remove @a[scores={lev=1..}] lev 1

execute as @a[tag=greenjump] at @s align y if block ~ ~3 ~ #paint:magnet run tp ~ ~1 ~

tag @a[nbt={OnGround:1b},tag=greenjump] remove greenjump
tag @a[scores={lev=0}] remove greenjump
tag @a[scores={lev=0}] remove greenjumpsound

effect clear @a[nbt={OnGround:0b}] minecraft:jump_boost
