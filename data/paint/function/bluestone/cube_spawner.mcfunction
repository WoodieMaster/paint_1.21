execute as @e[scores={color=1},type=shulker] at @s unless entity @e[tag=spawnerA,distance=..2] if block ~ ~ ~ oak_button run playsound minecraft:cube.happy master @a
execute as @e[scores={color=1},type=shulker] at @s unless entity @e[tag=spawnerA,distance=..2] if block ~ ~ ~ oak_button run function paint:box/cube/a
execute as @e[scores={color=2},type=shulker] at @s unless entity @e[tag=spawnerB,distance=..2] if block ~ ~ ~ spruce_button run playsound minecraft:cube.happy master @a
execute as @e[scores={color=2},type=shulker] at @s unless entity @e[tag=spawnerB,distance=..2] if block ~ ~ ~ spruce_button run function paint:box/cube/b
execute as @e[scores={color=3},type=shulker] at @s unless entity @e[tag=spawnerC,distance=..2] if block ~ ~ ~ birch_button run playsound minecraft:cube.happy master @a
execute as @e[scores={color=3},type=shulker] at @s unless entity @e[tag=spawnerC,distance=..2] if block ~ ~ ~ birch_button run function paint:box/cube/c
execute as @e[scores={color=4},type=shulker] at @s unless entity @e[tag=spawnerD,distance=..2] if block ~ ~ ~ jungle_button run playsound minecraft:cube.happy master @a
execute as @e[scores={color=4},type=shulker] at @s unless entity @e[tag=spawnerD,distance=..2] if block ~ ~ ~ jungle_button run function paint:box/cube/d
execute as @e[scores={color=5},type=shulker] at @s unless entity @e[tag=spawnerE,distance=..2] if block ~ ~ ~ acacia_button run playsound minecraft:cube.happy master @a
execute as @e[scores={color=5},type=shulker] at @s unless entity @e[tag=spawnerE,distance=..2] if block ~ ~ ~ acacia_button run function paint:box/cube/e

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerA] at @s unless entity @e[scores={color=1}] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeA"],NoGravity:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cubesetup","cubeA","cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe"}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerB] at @s unless entity @e[scores={color=2}] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeB"],NoGravity:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cubesetup","cubeB","cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe"}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerC] at @s unless entity @e[scores={color=3}] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeC"],NoGravity:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cubesetup","cubeC","cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe"}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerD] at @s unless entity @e[scores={color=4}] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeD"],NoGravity:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cubesetup","cubeD","cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_hoe"}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerE] at @s unless entity @e[scores={color=5}] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeE"],NoGravity:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cubesetup","cubeE","cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe"}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerF] at @s unless entity @e[scores={color=6}] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeF"],NoGravity:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cubesetup","cubeF","cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe"}]}]}

scoreboard players set @e[tag=cubeA,tag=cubesetup] color 1
scoreboard players set @e[tag=cubeB,tag=cubesetup] color 2
scoreboard players set @e[tag=cubeC,tag=cubesetup] color 3
scoreboard players set @e[tag=cubeD,tag=cubesetup] color 4
scoreboard players set @e[tag=cubeE,tag=cubesetup] color 5

#manual respawn
execute as @e[tag=spawnerA,tag=!cuberespawned] at @s if block ~ ~ ~ oak_button[powered=true] unless entity @e[type=!player,tag=cube,scores={color=1},distance=..2] run kill @e[type=!player,tag=cube,scores={color=1}]
execute as @e[tag=spawnerB,tag=!cuberespawned] at @s if block ~ ~ ~ spruce_button[powered=true] unless entity @e[type=!player,tag=cube,scores={color=2},distance=..2] run kill @e[type=!player,tag=cube,scores={color=2}]
execute as @e[tag=spawnerC,tag=!cuberespawned] at @s if block ~ ~ ~ birch_button[powered=true] unless entity @e[type=!player,tag=cube,scores={color=3},distance=..2] run kill @e[type=!player,tag=cube,scores={color=3}]
execute as @e[tag=spawnerD,tag=!cuberespawned] at @s if block ~ ~ ~ jungle_button[powered=true] unless entity @e[type=!player,tag=cube,scores={color=4},distance=..2] run kill @e[type=!player,tag=cube,scores={color=4}]
execute as @e[tag=spawnerE,tag=!cuberespawned] at @s if block ~ ~ ~ acacia_button[powered=true] unless entity @e[type=!player,tag=cube,scores={color=5},distance=..2] run kill @e[type=!player,tag=cube,scores={color=5}]

execute as @e[tag=cube_spawner,tag=!cuberespawned] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] run playsound minecraft:cube.meh master @a
execute as @e[tag=cube_spawner,tag=!cuberespawned] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] run tag @s add cuberespawned

execute as @e[tag=cube_spawner,tag=cuberespawned] at @s unless block ~ ~ ~ #minecraft:buttons[powered=true] run tag @s remove cuberespawned

#correct colors
execute as @e[tag=cube_spawner,tag=spawnerA] at @s positioned ~ ~0.5 ~ run particle minecraft:dust{color:[0f,.7f,1f],scale:.5} ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerB] at @s positioned ~ ~0.5 ~ run particle minecraft:dust{color:[0f,1f,.2f],scale:.5} ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerC] at @s positioned ~ ~0.5 ~ run particle minecraft:dust{color:[1f,.8f,0f],scale:.5} ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerD] at @s positioned ~ ~0.5 ~ run particle minecraft:dust{color:[1f,0f,.5f],scale:.5} ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerE] at @s positioned ~ ~0.5 ~ run particle minecraft:dust{color:[0f,0f,0f],scale:.5} ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerF] at @s positioned ~ ~0.5 ~ run particle minecraft:dust{color:[.8f,0f,1f],scale:.5} ~ ~ ~ 0.25 0.25 0.25 1 3