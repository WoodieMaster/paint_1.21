tag @a[scores={purple_wallrun=1..}] add wallrun
scoreboard players remove @a[scores={purple_wallrun=1..}] purple_wallrun 1

execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~ ~2 ~ #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~1 ~ ~ #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~-1 ~ ~ #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~ ~ ~-1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~-1 ~1 ~ #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~1 ~1 ~ #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~ ~1 ~1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~ ~1 ~-1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~1 ~ ~1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~1 ~ ~-1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~-1 ~ ~1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~-1 ~ ~-1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~1 ~1 ~1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~1 ~1 ~-1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~-1 ~1 ~1 #paint:magnet run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s if block ~-1 ~1 ~-1 #paint:magnet run tag @s add wallrun

execute as @a[gamemode=!spectator] at @s positioned ~ ~2 ~ if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~1 ~ ~ if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~-1 ~ ~ if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~ ~ ~-1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~1 ~ ~1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~1 ~ ~-1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~-1 ~ ~1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~-1 ~ ~-1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~1 ~1 ~ if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~-1 ~1 ~ if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~ ~1 ~1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~ ~1 ~-1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~1 ~1 ~1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~1 ~1 ~-1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~-1 ~1 ~1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun
execute as @a[gamemode=!spectator] at @s positioned ~-1 ~1 ~-1 if entity @e[type=shulker,tag=type_blue,tag=laser,distance=..0.7] run tag @s add wallrun

scoreboard players add @a[tag=wallrun,scores={magnet=..3},nbt={OnGround:1b}] magnet 1
execute as @a[nbt={OnGround:1b},scores={magnet=1,lev=0},tag=wallrun] at @s if block ~ ~-1 ~ air run playsound minecraft:contact.blue master @a ~ ~ ~ 0.4 1
scoreboard players remove @a[tag=!wallrun,scores={magnet=1..}] magnet 1

#speed particle orange
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~0.5 ~ ~ 0.2 0 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~0.5 ~ ~1 0.2 0 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~ ~ ~0.5 0 0 0.2 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~1 ~ ~0.5 0 0 0.2 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~0.5 ~-1 ~ 0.2 0 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~0.5 ~-1 ~1 0.2 0 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~ ~-1 ~0.5 0 0 0.2 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~1 ~-1 ~0.5 0 0 0.2 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~1 ~-0.5 ~1 0 0.2 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~1 ~-0.5 ~ 0 0.2 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~ ~-0.5 ~1 0 0.2 0 0 1 normal
execute as @a[scores={speed=1..}] at @s align xyz if block ~ ~-1 ~ minecraft:spruce_fence_gate run particle minecraft:dust{color:[1f,.8f,0f],scale:.5f} ~ ~-0.5 ~ 0 0.2 0 0 1 normal

#wallrun particle blue
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~0.5 ~ ~ 0.2 0 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~0.5 ~ ~1 0.2 0 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~ ~ ~0.5 0 0 0.2 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~1 ~ ~0.5 0 0 0.2 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~0.5 ~-1 ~ 0.2 0 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~0.5 ~-1 ~1 0.2 0 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~ ~-1 ~0.5 0 0 0.2 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~1 ~-1 ~0.5 0 0 0.2 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~1 ~-0.5 ~1 0 0.2 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~1 ~-0.5 ~ 0 0.2 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~ ~-0.5 ~1 0 0.2 0 0 1 normal
execute as @a[tag=wallrun] at @s align xyz if block ~ ~-1 ~ minecraft:air run particle minecraft:dust{color:[0f,.7f,1f],scale:.5f} ~ ~-0.5 ~ 0 0.2 0 0 1 normal

tag @a[scores={sneak=1..}] remove wallrun

execute as @e[tag=magnetblock,type=shulker] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[scores={sneak=0},distance=..1] run tag @s add killrun
execute as @e[tag=magnetblock,type=shulker] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[tag=wallrun,distance=..1] run tag @s add killrun
execute as @e[tag=speedblock,type=shulker] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[scores={sneak=0},distance=..2.5] run tag @s add killrun
execute as @e[tag=speedblock,type=shulker] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @a[scores={speed=1..},distance=..2.5] run tag @s add killrun

tp @e[type=shulker,tag=magnetblock,tag=killrun] ~ -100 ~
tp @e[type=shulker,tag=speedblock,tag=killrun] ~ -100 ~
kill @e[type=shulker,tag=magnetblock,tag=killrun]
kill @e[type=shulker,tag=speedblock,tag=killrun]

execute as @a[scores={sneak=0,speed=1..}] at @s rotated ~ 0 positioned ^ ^-1 ^1 if block ~ ~ ~ spruce_fence_gate align xyz unless entity @e[tag=speedblock,type=shulker,dx=0] run summon minecraft:shulker ~0.5 ~ ~0.5 {Tags:["speedblock"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b,Team:"knockback",Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_fence_gate"}]}]}
execute as @a[scores={sneak=0,speed=1..}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ spruce_fence_gate align xyz unless entity @e[tag=speedblock,type=shulker,dx=0] run summon minecraft:shulker ~0.5 ~ ~0.5 {Tags:["speedblock"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b,Team:"knockback",Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_fence_gate"}]}]}


#same but with orange laser blocks from caster
execute as @a[scores={sneak=0,speed=1..}] at @s rotated ~ 0 positioned ^ ^-0.5 ^1 if entity @e[tag=type_yellow,tag=laser,type=armor_stand,distance=..0.5] align xyz unless entity @e[tag=speedblock,type=shulker,dx=0] run summon minecraft:shulker ~0.5 ~ ~0.5 {Tags:["speedblock"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b,Team:"knockback",Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_fence_gate"}]}]}
execute as @a[scores={sneak=0,speed=1..}] at @s positioned ~ ~-0.5 ~ if entity @e[tag=type_yellow,tag=laser,type=armor_stand,distance=..0.5] align xyz unless entity @e[tag=speedblock,type=shulker,dx=0] run summon minecraft:shulker ~0.5 ~ ~0.5 {Tags:["speedblock"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b,Team:"knockback",Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_fence_gate"}]}]}


execute as @a[scores={sneak=0},tag=wallrun] at @s rotated ~ 0 positioned ^ ^-1 ^1 align xyz unless entity @e[tag=magnetblock,type=shulker,dx=0] run summon minecraft:shulker ~0.5 ~ ~0.5 {Tags:["magnetblock"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b,Team:"knockback"}
execute as @a[scores={sneak=0},tag=wallrun] at @s positioned ~ ~-1 ~ align xyz unless entity @e[tag=magnetblock,type=shulker,dx=0] run summon minecraft:shulker ~0.5 ~ ~0.5 {Tags:["magnetblock"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b,Team:"knockback"}

execute as @e[tag=speedblock,tag=!setup] at @s run playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 2
tag @e[tag=speedblock,tag=!setup] add setup
tag @e[tag=magnetblock,tag=!setup] add setup

bossbar set minecraft:magnet players @a[tag=wallrun]

tag @a[tag=wallrun] remove wallrun
