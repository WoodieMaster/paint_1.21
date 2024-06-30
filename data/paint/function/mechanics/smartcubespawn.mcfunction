#system that allows cubes to have spawnpoints and that also sets them up with tags depending on where they spawn on a level setup


#cubeA
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~-1 ~ #paint:cubespawn_blue run tag @s add cubeA
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~1 ~ #paint:cubespawn_blue run tag @s add cubeA
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~1 ~ ~ #paint:cubespawn_blue run tag @s add cubeA
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~-1 ~ ~ #paint:cubespawn_blue run tag @s add cubeA
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~1 #paint:cubespawn_blue run tag @s add cubeA
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~-1 #paint:cubespawn_blue run tag @s add cubeA

#cubeB
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~-1 ~ #paint:cubespawn_green run tag @s add cubeB
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~1 ~ #paint:cubespawn_green run tag @s add cubeB
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~1 ~ ~ #paint:cubespawn_green run tag @s add cubeB
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~-1 ~ ~ #paint:cubespawn_green run tag @s add cubeB
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~1 #paint:cubespawn_green run tag @s add cubeB
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~-1 #paint:cubespawn_green run tag @s add cubeB

#cubeC
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~-1 ~ #paint:cubespawn_orange run tag @s add cubeC
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~1 ~ #paint:cubespawn_orange run tag @s add cubeC
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~1 ~ ~ #paint:cubespawn_orange run tag @s add cubeC
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~-1 ~ ~ #paint:cubespawn_orange run tag @s add cubeC
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~1 #paint:cubespawn_orange run tag @s add cubeC
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~-1 #paint:cubespawn_orange run tag @s add cubeC

#cubeD
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~-1 ~ #paint:cubespawn_red run tag @s add cubeD
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~1 ~ #paint:cubespawn_red run tag @s add cubeD
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~1 ~ ~ #paint:cubespawn_red run tag @s add cubeD
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~-1 ~ ~ #paint:cubespawn_red run tag @s add cubeD
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~1 #paint:cubespawn_red run tag @s add cubeD
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~-1 #paint:cubespawn_red run tag @s add cubeD

#cubeE
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~-1 ~ #paint:cubespawn_purple run tag @s add cubeE
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~1 ~ #paint:cubespawn_purple run tag @s add cubeE
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~1 ~ ~ #paint:cubespawn_purple run tag @s add cubeE
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~-1 ~ ~ #paint:cubespawn_purple run tag @s add cubeE
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~1 #paint:cubespawn_purple run tag @s add cubeE
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~-1 #paint:cubespawn_purple run tag @s add cubeE

#cubeF
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~-1 ~ #paint:cubespawn_white run tag @s add cubeF
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~1 ~ #paint:cubespawn_white run tag @s add cubeF
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~1 ~ ~ #paint:cubespawn_white run tag @s add cubeF
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~-1 ~ ~ #paint:cubespawn_white run tag @s add cubeF
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~1 #paint:cubespawn_white run tag @s add cubeF
execute as @e[type=shulker,tag=cube,tag=levelsetup] at @s if block ~ ~ ~-1 #paint:cubespawn_white run tag @s add cubeF

tag @e[type=shulker,tag=cube,tag=levelsetup] remove levelsetup

#cubeA
execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~-1 ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerA]
execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~-1 ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerA","bluestone"]}

execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~1 ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerA]
execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~1 ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerA","bluestone"]}

execute as @e[type=shulker,tag=cubeA] at @s if block ~1 ~ ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerA]
execute as @e[type=shulker,tag=cubeA] at @s if block ~1 ~ ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerA","bluestone"]}

execute as @e[type=shulker,tag=cubeA] at @s if block ~-1 ~ ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerA]
execute as @e[type=shulker,tag=cubeA] at @s if block ~-1 ~ ~ #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerA","bluestone"]}

execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~ ~1 #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerA]
execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~ ~1 #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerA","bluestone"]}

execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~ ~-1 #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerA]
execute as @e[type=shulker,tag=cubeA] at @s if block ~ ~ ~-1 #paint:cubespawn_blue unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerA","bluestone"]}


#cubeB
execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~-1 ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerB]
execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~-1 ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerB","bluestone"]}

execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~1 ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerB]
execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~1 ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerB","bluestone"]}

execute as @e[type=shulker,tag=cubeB] at @s if block ~1 ~ ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerB]
execute as @e[type=shulker,tag=cubeB] at @s if block ~1 ~ ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerB","bluestone"]}

execute as @e[type=shulker,tag=cubeB] at @s if block ~-1 ~ ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerB]
execute as @e[type=shulker,tag=cubeB] at @s if block ~-1 ~ ~ #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerB","bluestone"]}

execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~ ~1 #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerB]
execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~ ~1 #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerB","bluestone"]}

execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~ ~-1 #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerB]
execute as @e[type=shulker,tag=cubeB] at @s if block ~ ~ ~-1 #paint:cubespawn_green unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerB","bluestone"]}

#cubeC
execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~-1 ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerC]
execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~-1 ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerC","bluestone"]}

execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~1 ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerC]
execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~1 ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerC","bluestone"]}

execute as @e[type=shulker,tag=cubeC] at @s if block ~1 ~ ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerC]
execute as @e[type=shulker,tag=cubeC] at @s if block ~1 ~ ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerC","bluestone"]}

execute as @e[type=shulker,tag=cubeC] at @s if block ~-1 ~ ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerC]
execute as @e[type=shulker,tag=cubeC] at @s if block ~-1 ~ ~ #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerC","bluestone"]}

execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~ ~1 #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerC]
execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~ ~1 #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerC","bluestone"]}

execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~ ~-1 #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerC]
execute as @e[type=shulker,tag=cubeC] at @s if block ~ ~ ~-1 #paint:cubespawn_orange unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerC","bluestone"]}

#cubeD
execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~-1 ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerD]
execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~-1 ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerD","bluestone"]}

execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~1 ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerD]
execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~1 ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerD","bluestone"]}

execute as @e[type=shulker,tag=cubeD] at @s if block ~1 ~ ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerD]
execute as @e[type=shulker,tag=cubeD] at @s if block ~1 ~ ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerD","bluestone"]}

execute as @e[type=shulker,tag=cubeD] at @s if block ~-1 ~ ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerD]
execute as @e[type=shulker,tag=cubeD] at @s if block ~-1 ~ ~ #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerD","bluestone"]}

execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~ ~1 #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerD]
execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~ ~1 #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerD","bluestone"]}

execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~ ~-1 #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerD]
execute as @e[type=shulker,tag=cubeD] at @s if block ~ ~ ~-1 #paint:cubespawn_red unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerD","bluestone"]}

#cubeE
execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~-1 ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerE]
execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~-1 ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerE","bluestone"]}

execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~1 ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerE]
execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~1 ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerE","bluestone"]}

execute as @e[type=shulker,tag=cubeE] at @s if block ~1 ~ ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerE]
execute as @e[type=shulker,tag=cubeE] at @s if block ~1 ~ ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerE","bluestone"]}

execute as @e[type=shulker,tag=cubeE] at @s if block ~-1 ~ ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerE]
execute as @e[type=shulker,tag=cubeE] at @s if block ~-1 ~ ~ #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerE","bluestone"]}

execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~ ~1 #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerE]
execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~ ~1 #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerE","bluestone"]}

execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~ ~-1 #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerE]
execute as @e[type=shulker,tag=cubeE] at @s if block ~ ~ ~-1 #paint:cubespawn_purple unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerE","bluestone"]}

#cubeF
execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~-1 ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerF]
execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~-1 ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerF","bluestone"]}

execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~1 ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerF]
execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~1 ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerF","bluestone"]}

execute as @e[type=shulker,tag=cubeF] at @s if block ~1 ~ ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerF]
execute as @e[type=shulker,tag=cubeF] at @s if block ~1 ~ ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerF","bluestone"]}

execute as @e[type=shulker,tag=cubeF] at @s if block ~-1 ~ ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerF]
execute as @e[type=shulker,tag=cubeF] at @s if block ~-1 ~ ~ #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerF","bluestone"]}

execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~ ~1 #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerF]
execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~ ~1 #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerF","bluestone"]}

execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~ ~-1 #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run kill @e[tag=cube_spawner,tag=spawnerF]
execute as @e[type=shulker,tag=cubeF] at @s if block ~ ~ ~-1 #paint:cubespawn_white unless entity @e[tag=cube_spawner,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["cube_spawner","spawnerF","bluestone"]}
