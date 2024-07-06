#player
execute as @a at @s if block ~ ~ ~ blue_carpet run team join P1
execute as @a at @s if block ~ ~ ~ green_carpet run team join P2
execute as @a at @s if block ~ ~ ~ red_carpet run team join P3
execute as @a at @s if block ~ ~ ~ yellow_carpet run team join P4
execute as @a at @s if block ~ ~ ~ light_blue_carpet run team join P1
execute as @a at @s if block ~ ~ ~ lime_carpet run team join P2
execute as @a at @s if block ~ ~ ~ pink_carpet run team join P3
execute as @a at @s if block ~ ~ ~ white_carpet run team join P4

#reset
tag @a[scores={respawn=1..},tag=mode1] remove mode1
tag @a[scores={respawn=1..},tag=mode2] remove mode2
tag @a[scores={respawn=1..},tag=mode3] remove mode3
tag @a[scores={respawn=1..},tag=mode4] remove mode4
tag @a[scores={respawn=1..},tag=mode5] remove mode5
#player1
execute as @a[team=P1] at @s unless entity @e[type=armor_stand,tag=p1,tag=respawn] run kill @e[type=armor_stand,tag=p1,tag=respawn]
execute as @a[team=P1] at @s unless entity @e[type=armor_stand,tag=p1,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["respawn","p1"]}
execute as @a[team=P1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tp @e[type=armor_stand,tag=respawn,tag=p1] @s
execute as @a[team=P1] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p1,limit=1] {Tags:["p1","respawn"]}
execute as @a[team=P1,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode1
execute as @a[team=P1,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode2
execute as @a[team=P1,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode3
execute as @a[team=P1,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode4
execute as @a[team=P1] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p1] mode = @s mode

scoreboard players operation @a[scores={respawn=1..},team=P1] mode = @e[type=armor_stand,tag=respawn,tag=p1] mode
execute as @e[type=armor_stand,tag=respawn,tag=p1,tag=mode1] at @s run tag @a[scores={respawn=1..},team=P1] add mode1
execute as @e[type=armor_stand,tag=respawn,tag=p1,tag=mode2] at @s run tag @a[scores={respawn=1..},team=P1] add mode2
execute as @e[type=armor_stand,tag=respawn,tag=p1,tag=mode3] at @s run tag @a[scores={respawn=1..},team=P1] add mode3
execute as @e[type=armor_stand,tag=respawn,tag=p1,tag=mode4] at @s run tag @a[scores={respawn=1..},team=P1] add mode4

#player2
execute as @a[team=P2] at @s unless entity @e[type=armor_stand,tag=p2,tag=respawn] run kill @e[type=armor_stand,tag=p2,tag=respawn]
execute as @a[team=P2] at @s unless entity @e[type=armor_stand,tag=p2,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["respawn","p2"]}
execute as @a[team=P2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tp @e[type=armor_stand,tag=respawn,tag=p2] @s
execute as @a[team=P2] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p2,limit=1] {Tags:["p2","respawn"]}
execute as @a[team=P2,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode1
execute as @a[team=P2,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode2
execute as @a[team=P2,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode3
execute as @a[team=P2,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode4
execute as @a[team=P2] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p2] mode = @s mode

scoreboard players operation @a[scores={respawn=1..},team=P2] mode = @e[type=armor_stand,tag=respawn,tag=p2] mode
execute as @e[type=armor_stand,tag=respawn,tag=p2,tag=mode1] at @s run tag @a[scores={respawn=1..},team=P2] add mode1
execute as @e[type=armor_stand,tag=respawn,tag=p2,tag=mode2] at @s run tag @a[scores={respawn=1..},team=P2] add mode2
execute as @e[type=armor_stand,tag=respawn,tag=p2,tag=mode3] at @s run tag @a[scores={respawn=1..},team=P2] add mode3
execute as @e[type=armor_stand,tag=respawn,tag=p2,tag=mode4] at @s run tag @a[scores={respawn=1..},team=P2] add mode4

#player3
execute as @a[team=P3] at @s unless entity @e[type=armor_stand,tag=p3,tag=respawn] run kill @e[type=armor_stand,tag=p2,tag=respawn]
execute as @a[team=P3] at @s unless entity @e[type=armor_stand,tag=p3,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["respawn","p3"]}
execute as @a[team=P3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tp @e[type=armor_stand,tag=respawn,tag=p3] @s
execute as @a[team=P3] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p3,limit=1] {Tags:["p3","respawn"]}
execute as @a[team=P3,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode1
execute as @a[team=P3,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode2
execute as @a[team=P3,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode3
execute as @a[team=P3,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode4
execute as @a[team=P3] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p3] mode = @s mode

scoreboard players operation @a[scores={respawn=1..},team=P3] mode = @e[type=armor_stand,tag=respawn,tag=p3] mode
execute as @e[type=armor_stand,tag=respawn,tag=p3,tag=mode1] at @s run tag @a[scores={respawn=1..},team=P3] add mode1
execute as @e[type=armor_stand,tag=respawn,tag=p3,tag=mode2] at @s run tag @a[scores={respawn=1..},team=P3] add mode2
execute as @e[type=armor_stand,tag=respawn,tag=p3,tag=mode3] at @s run tag @a[scores={respawn=1..},team=P3] add mode3
execute as @e[type=armor_stand,tag=respawn,tag=p3,tag=mode4] at @s run tag @a[scores={respawn=1..},team=P3] add mode4

#player4
execute as @a[team=P4] at @s unless entity @e[type=armor_stand,tag=p4,tag=respawn] run kill @e[type=armor_stand,tag=p4,tag=respawn]
execute as @a[team=P4] at @s unless entity @e[type=armor_stand,tag=p4,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["respawn","p4"]}
execute as @a[team=P4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tp @e[type=armor_stand,tag=respawn,tag=p4] @s
execute as @a[team=P4] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p4,limit=1] {Tags:["p4","respawn"]}
execute as @a[team=P4,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode1
execute as @a[team=P4,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode2
execute as @a[team=P4,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode3
execute as @a[team=P4,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode4
execute as @a[team=P4] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p4] mode = @s mode

scoreboard players operation @a[scores={respawn=1..},tag=p4] mode = @e[type=armor_stand,tag=respawn,team=P4] mode
execute as @e[type=armor_stand,tag=respawn,tag=p4,tag=mode1] at @s run tag @a[scores={respawn=1..},team=P4] add mode1
execute as @e[type=armor_stand,tag=respawn,tag=p4,tag=mode2] at @s run tag @a[scores={respawn=1..},team=P4] add mode2
execute as @e[type=armor_stand,tag=respawn,tag=p4,tag=mode3] at @s run tag @a[scores={respawn=1..},team=P4] add mode3
execute as @e[type=armor_stand,tag=respawn,tag=p4,tag=mode4] at @s run tag @a[scores={respawn=1..},team=P4] add mode4

#respawn blocks
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~1.2 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~-0.5 ~ ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~0.5 ~ ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~0.5 #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~-0.5 #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~0.5 ~1 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~-0.5 ~1 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~1 ~-0.5 #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~1 ~0.5 #paint:respawn run scoreboard players set @s respawn 1

#spike respawn
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~ ~ dead_bubble_coral run playsound respawn.spike master @a ~ ~ ~ 1 1 1
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~ ~ dead_bubble_coral run scoreboard players set @s respawn 4

execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ bedrock run scoreboard players set @s respawn 4
execute as @a[gamemode=adventure] at @s if block ~ ~-2 ~ bedrock run scoreboard players set @s respawn 4
execute as @a[gamemode=adventure] at @s if block ~ ~-3 ~ bedrock run scoreboard players set @s respawn 4
execute as @a[gamemode=adventure] at @s if block ~ ~-4 ~ bedrock run scoreboard players set @s respawn 4
execute as @a[gamemode=adventure,tag=tower] at @s if block ~ ~-1 ~ barrier run scoreboard players set @s respawn 4
execute as @a[gamemode=adventure,tag=tower] at @s if block ~ ~-2 ~ barrier run scoreboard players set @s respawn 4


#purple respawn
scoreboard players set @a[tag=purple_respawn] respawn 1
tag @a[tag=purple_respawn] remove purple_respawn

tp @a[scores={respawn=1..},team=P1] @e[type=armor_stand,tag=respawn,tag=p1,limit=1,sort=nearest]
tp @a[scores={respawn=1..},team=P2] @e[type=armor_stand,tag=respawn,tag=p2,limit=1,sort=nearest]
tp @a[scores={respawn=1..},team=P3] @e[type=armor_stand,tag=respawn,tag=p3,limit=1,sort=nearest]
tp @a[scores={respawn=1..},team=P4] @e[type=armor_stand,tag=respawn,tag=p4,limit=1,sort=nearest]

execute as @a[scores={respawn=1..}] at @s run playsound respawn master @a ~ ~ ~ 1 1
scoreboard players set @a[scores={respawn=1..}] respawn 0
