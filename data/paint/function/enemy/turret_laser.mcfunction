execute as @e[tag=turret] run data merge entity @s {Glowing:0b}
execute if entity @e[tag=turret,distance=..1] as @e[tag=turret,sort=nearest,limit=1] run data merge entity @s {Glowing:1b}
execute as @e[tag=turret,nbt={Glowing:1b}] at @s run particle minecraft:dust{color:[1f,0f,0f],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 1 force @a

execute unless entity @e[tag=turret,nbt={Glowing:1b},sort=nearest,limit=1] as @a run scoreboard players set @s spotted 0
execute if entity @e[tag=turret,nbt={Glowing:1b}] as @a run scoreboard players add @s spotted 1
execute if entity @e[tag=turret,nbt={Glowing:1b}] as @a run team join cube_d @e[tag=turret]

execute positioned ~ ~0.25 ~ if entity @e[type=shulker,distance=..0.5] run scoreboard players reset @s spotted
execute positioned ~ ~0.25 ~ if entity @e[type=shulker,distance=..0.5] run scoreboard players set @s spotted2 -2

particle minecraft:dust{color:[1f,0f,0f],scale:.2} ~ ~ ~ 0 0 0 1 1 force @a

execute positioned ~ ~0.25 ~ unless entity @e[tag=laser,type=shulker,distance=..0.5] positioned ~ ~-0.25 ~ positioned ^ ^ ^0.2 unless entity @e[tag=turret,distance=..0.5] if block ~ ~0.75 ~ #paint:laserwhitelist run function paint:enemy/turret_laser
