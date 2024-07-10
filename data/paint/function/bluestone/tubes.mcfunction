execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}

execute as @e[tag=valve,tag=!setup] at @s run tag @p[tag=!cube,scores={valve=1..}] add valve_travel
execute as @e[tag=valve,tag=!setup] at @s run tag @p[tag=!cube,gamemode=creative,scores={valve=1..},tag=valve_travel] add was_creative
execute as @e[tag=valve,tag=!setup] at @s run playsound minecraft:tube_travel master @p[tag=valve_travel,scores={valve=1..}] ~ ~ ~ 10 1
execute as @e[tag=valve,tag=!setup] at @s run playsound minecraft:tube_enter master @p[tag=valve_travel,scores={valve=1..}] ~ ~ ~ 1 1

execute as @e[tag=valve,tag=!setup] at @s run gamemode spectator @p[tag=!cube,scores={valve=1..},tag=valve_travel]

#player puts cube in valve
execute as @a[scores={valve=1..},tag=cube] at @s run scoreboard players operation @e[tag=valve,tag=!setup] color = @s color
execute as @a[scores={valve=1..},tag=cube] at @s run tag @e[tag=valve,tag=!setup] add valve_cube
scoreboard players reset @a[scores={valve=1..},tag=cube] color

execute as @a[scores={valve=1..},tag=cube] run function paint:player/clear_cube

execute as @e[tag=valve,tag=!setup,tag=valve_cube] at @s run playsound minecraft:tube_enter master @a ~ ~ ~ 1 1
item replace entity @e[tag=valve_cube,type=armor_stand,tag=!setup] armor.head with minecraft:golden_axe

#summon cube
execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s unless block ~ ~ ~ #paint:tubes unless entity @e[tag=valve,tag=cubespawn_valve,distance=..2] align xyz run summon armor_stand ^ ^ ^ {Tags:["cubespawn_valve","cubespawn","cubesetup"]}

execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s unless block ~ ~ ~ #paint:tubes unless entity @e[tag=valve,tag=cubespawn_valve,distance=..2] align xyz run scoreboard players operation @e[type=armor_stand,tag=cubespawn_valve,limit=1,sort=nearest] color = @s color

execute as @e[type=armor_stand,tag=valve] at @s unless block ~ ~ ~ #paint:tubes run kill @s

#cube gets sucked in void valve
execute as @e[type=shulker,tag=cube] at @s if block ~1 ~ ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~1.5 ~.5 ~.5 {Tags:["valve","valve_cube","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe"}]}
execute as @e[type=shulker,tag=cube] at @s if block ~-1 ~ ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~-.5 ~.5 ~.5 {Tags:["valve","valve_cube","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe"}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~ ~1 polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~.5 ~1.5 {Tags:["valve","valve_cube","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe"}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~ ~-1 polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~.5 ~-.5 {Tags:["valve","valve_cube","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe"}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~1 ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~1.5 ~.5 {Tags:["valve","valve_cube","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe"}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~-1 ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~-.5 ~.5 {Tags:["valve","valve_cube","input"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe"}]}


execute as @e[tag=valve_cube,tag=!setup,tag=!spawnedit] at @s if entity @e[type=shulker,tag=cube,tag=!cube_into_valve,distance=..1.5] unless entity @e[type=shulker,tag=cube,tag=cube_into_valve,distance=..5] run tag @e[type=shulker,tag=cube,tag=!cube_into_valve,limit=1,sort=nearest,distance=..1.5] add cube_into_valve
tag @e[tag=valve_cube,tag=!spawnedit] add spawnedit
execute as @e[type=shulker,tag=cube_into_valve] at @s run scoreboard players operation @e[tag=valve_cube,tag=!setup] color = @s color
kill @e[tag=cube,type=shulker,tag=cube_into_valve]

#setup
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~1 ~ #paint:tubes run tp @s ~ ~ ~ ~ -90
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~-1 ~ #paint:tubes run tp @s ~ ~ ~ ~ 90
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~1 ~ ~ #paint:tubes run tp @s ~ ~ ~ -90 0
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~-1 ~ ~ #paint:tubes run tp @s ~ ~ ~ 90 0
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~ ~1 #paint:tubes run tp @s ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~ ~-1 #paint:tubes run tp @s ~ ~ ~ 180 0

execute as @e[type=armor_stand,tag=valve,tag=valve_cube,tag=!setup] at @s run playsound minecraft:tube_enter master @a ~ ~ ~ 0.5 2
tag @e[type=armor_stand,tag=valve,tag=!setup] add setup

execute as @e[type=armor_stand,tag=valve] at @s run particle minecraft:dust{color:[.8f,0f,1f],scale:.5} ~ ~0.5 ~ 0.3 0.3 0.3 0 30 force

execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s if block ~ ~ ~ #paint:valvecorner run playsound minecraft:tube_exit master @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,tag=valve] at @s if block ~ ~ ~ #paint:valvecorner align xyz run tp @s ~0.5 ~ ~0.5

#anti neck break
execute as @e[type=armor_stand,tag=valve,x_rotation=90] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^-1 ^ #paint:tubes run tp @s ~ ~ ~ ~90 ~-90
execute as @e[type=armor_stand,tag=valve,x_rotation=-90] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^1 ^ #paint:tubes run tp @s ~ ~ ~ ~90 ~90

execute as @e[type=armor_stand,tag=valve,x_rotation=0..90] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^1 ^ #paint:tubes run tp @s ~ ~ ~ ~ ~-90
execute as @e[type=armor_stand,tag=valve,x_rotation=-90..0] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^-1 ^ #paint:tubes run tp @s ~ ~ ~ ~ ~90

execute as @e[type=armor_stand,tag=valve] at @s if block ~ ~ ~ #paint:valvecorner if block ^1 ^ ^ #paint:tubes run tp @s ~ ~ ~ ~-90 0
execute as @e[type=armor_stand,tag=valve] at @s if block ~ ~ ~ #paint:valvecorner if block ^-1 ^ ^ #paint:tubes run tp @s ~ ~ ~ ~90 0

execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s if block ~ ~ ~ #paint:valvecorner run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:valvecorner run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s run tp @s ^ ^ ^1

execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s run tp @p[gamemode=spectator,tag=valve_travel] @s
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s run tp @p[gamemode=spectator,tag=valve_travel] ~ ~-1 ~
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:tubes run tp @p[gamemode=spectator,tag=valve_travel] ^ ^ ^
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:tubes run gamemode adventure @p[gamemode=spectator,tag=valve_travel,tag=!was_creative]
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:tubes run gamemode creative @p[gamemode=spectator,tag=valve_travel,tag=was_creative]
stopsound @a[tag=!valve_travel] master minecraft:tube_travel
execute as @e[type=armor_stand,tag=valve] at @s unless block ~ ~ ~ #paint:tubes run playsound minecraft:tube_exit master @a[tag=valve_travel] ~ ~ ~ 1 1 1

tag @a[gamemode=!spectator] remove valve_travel
tag @a[gamemode=!spectator] remove was_creative

scoreboard players reset @a[scores={valve=1..}] valve
