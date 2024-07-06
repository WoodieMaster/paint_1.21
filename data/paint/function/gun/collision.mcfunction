teleport @s ^ ^ ^0.2
execute if entity @s[tag=blue] positioned ~ ~ ~ run particle minecraft:dust{color:[0f,.7f,1f],scale:.8} ~ ~ ~ 0.05 0.05 0.05 1 1
execute if entity @s[tag=green] positioned ~ ~ ~ run particle minecraft:dust{color:[0f,1f,.2f],scale:.8} ~ ~ ~ 0.05 0.05 0.05 1 1
execute if entity @s[tag=yellow] positioned ~ ~ ~ run particle minecraft:dust{color:[1f,.8f,0f],scale:.8} ~ ~ ~ 0.05 0.05 0.05 1 1
execute if entity @s[tag=red] positioned ~ ~ ~ run particle minecraft:dust{color:[1f,0f,.5f],scale:.8} ~ ~ ~ 0.05 0.05 0.05 1 1
execute if entity @s[tag=purple] positioned ~ ~ ~ run particle minecraft:dust{color:[.8f,0f,1f],scale:.8} ~ ~ ~ 0.05 0.05 0.05 1 1

execute if entity @s[tag=laser_check] positioned ~ ~ ~ run particle minecraft:dust{color:[1f,0f,1f],scale:.2} ~ ~ ~ 0.05 0.05 0.05 1 1

function paint:reflection/main

execute as @s[tag=blue] if block ^ ^ ^0.5 #paint:paintable unless block ^ ^ ^0.5 polished_diorite run summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["newcanvas","canvas","spread","blue"]}
execute as @s[tag=green] if block ^ ^ ^0.5 #paint:paintable unless block ^ ^ ^0.5 diorite run summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["newcanvas","canvas","spread","green"]}
execute as @s[tag=yellow] if block ^ ^ ^0.5 #paint:paintable unless block ^ ^ ^0.5 polished_granite run summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["newcanvas","canvas","spread","yellow"]}
execute as @s[tag=red] if block ^ ^ ^0.5 #paint:paintable unless block ^ ^ ^0.5 granite run summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["newcanvas","canvas","spread","red"]}

#purple gun collission
execute as @s[tag=purple,tag=P1] if block ^ ^ ^0.5 #paint:speed run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_speed","P1"]}
execute as @s[tag=purple,tag=P2] if block ^ ^ ^0.5 #paint:speed run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_speed","P2"]}
execute as @s[tag=purple,tag=P3] if block ^ ^ ^0.5 #paint:speed run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_speed","P3"]}
execute as @s[tag=purple,tag=P4] if block ^ ^ ^0.5 #paint:speed run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_speed","P4"]}

execute as @s[tag=purple,tag=P1] if block ^ ^ ^0.5 #paint:jump run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_jump","P1"]}
execute as @s[tag=purple,tag=P2] if block ^ ^ ^0.5 #paint:jump run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_jump","P2"]}
execute as @s[tag=purple,tag=P3] if block ^ ^ ^0.5 #paint:jump run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_jump","P3"]}
execute as @s[tag=purple,tag=P4] if block ^ ^ ^0.5 #paint:jump run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_jump","P4"]}

execute as @s[tag=purple,tag=P1] if block ^ ^ ^0.5 #paint:laser run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_laser","P1"]}
execute as @s[tag=purple,tag=P2] if block ^ ^ ^0.5 #paint:laser run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_laser","P2"]}
execute as @s[tag=purple,tag=P3] if block ^ ^ ^0.5 #paint:laser run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_laser","P3"]}
execute as @s[tag=purple,tag=P4] if block ^ ^ ^0.5 #paint:laser run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_laser","P4"]}

execute as @s[tag=purple,tag=P1] if block ^ ^ ^0.5 #paint:magnet run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_magnet","P1"]}
execute as @s[tag=purple,tag=P2] if block ^ ^ ^0.5 #paint:magnet run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_magnet","P2"]}
execute as @s[tag=purple,tag=P3] if block ^ ^ ^0.5 #paint:magnet run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_magnet","P3"]}
execute as @s[tag=purple,tag=P4] if block ^ ^ ^0.5 #paint:magnet run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["copycat","purple","purple_magnet","P4"]}

#purple color copy cat
execute as @e[tag=purple,tag=P1,tag=purple_speed] run effect give @a[team=P1] minecraft:speed 2 1 true
execute as @e[tag=purple,tag=P2,tag=purple_speed] run effect give @a[team=P2] minecraft:speed 2 1 true
execute as @e[tag=purple,tag=P3,tag=purple_speed] run effect give @a[team=P3] minecraft:speed 2 1 true
execute as @e[tag=purple,tag=P4,tag=purple_speed] run effect give @a[team=P4] minecraft:speed 2 1 true
scoreboard players set @a[nbt={active_effects:[{duration:40,id:"minecraft:speed",amplifier:1b}]}] speed 41

execute as @e[tag=purple,tag=P1,tag=purple_jump] run effect give @a[team=P1,nbt={OnGround:1b}] minecraft:jump_boost 1 3 true
execute as @e[tag=purple,tag=P2,tag=purple_jump] run effect give @a[team=P2,nbt={OnGround:1b}] minecraft:jump_boost 1 3 true
execute as @e[tag=purple,tag=P3,tag=purple_jump] run effect give @a[team=P3,nbt={OnGround:1b}] minecraft:jump_boost 1 3 true
execute as @e[tag=purple,tag=P4,tag=purple_jump] run effect give @a[team=P4,nbt={OnGround:1b}] minecraft:jump_boost 1 3 true
execute as @e[tag=purple,tag=P1,tag=purple_jump] run scoreboard players set @a[team=P1,nbt={OnGround:0b}] lev 5
execute as @e[tag=purple,tag=P2,tag=purple_jump] run scoreboard players set @a[team=P2,nbt={OnGround:0b}] lev 5
execute as @e[tag=purple,tag=P3,tag=purple_jump] run scoreboard players set @a[team=P3,nbt={OnGround:0b}] lev 5
execute as @e[tag=purple,tag=P4,tag=purple_jump] run scoreboard players set @a[team=P4,nbt={OnGround:0b}] lev 5

execute as @e[tag=purple,tag=P1,tag=purple_laser] run tag @a[team=P1] add purple_respawn
execute as @e[tag=purple,tag=P2,tag=purple_laser] run tag @a[team=P2] add purple_respawn
execute as @e[tag=purple,tag=P3,tag=purple_laser] run tag @a[team=P3] add purple_respawn
execute as @e[tag=purple,tag=P4,tag=purple_laser] run tag @a[team=P4] add purple_respawn

execute as @e[tag=purple,tag=P1,tag=purple_magnet] run scoreboard players set @a[team=P1] purple_wallrun 41
execute as @e[tag=purple,tag=P2,tag=purple_magnet] run scoreboard players set @a[team=P2] purple_wallrun 41
execute as @e[tag=purple,tag=P3,tag=purple_magnet] run scoreboard players set @a[team=P3] purple_wallrun 41
execute as @e[tag=purple,tag=P4,tag=purple_magnet] run scoreboard players set @a[team=P4] purple_wallrun 41

kill @e[type=area_effect_cloud,tag=purple,tag=copycat]

execute as @s[tag=P1] at @s if block ^ ^ ^0.5 #paint:paintable run tag @e[type=area_effect_cloud,tag=newcanvas,tag=spread,distance=..1.3,limit=1] add P1
execute as @s[tag=P2] at @s if block ^ ^ ^0.5 #paint:paintable run tag @e[type=area_effect_cloud,tag=newcanvas,tag=spread,distance=..1.3,limit=1] add P2
execute as @s[tag=P3] at @s if block ^ ^ ^0.5 #paint:paintable run tag @e[type=area_effect_cloud,tag=newcanvas,tag=spread,distance=..1.3,limit=1] add P3
execute as @s[tag=P4] at @s if block ^ ^ ^0.5 #paint:paintable run tag @e[type=area_effect_cloud,tag=newcanvas,tag=spread,distance=..1.3,limit=1] add P4


#purple teleportation
execute at @s[tag=purple] if block ~ ~0.25 ~ #paint:portable if block ~ ~ ~ air run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2 1
execute at @s[tag=purple,tag=P1] if block ~ ~0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P1] ~0.5 ~-1.5 ~0.5
execute at @s[tag=purple,tag=P2] if block ~ ~0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P2] ~0.5 ~-1.5 ~0.5
execute at @s[tag=purple,tag=P3] if block ~ ~0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P3] ~0.5 ~-1.5 ~0.5
execute at @s[tag=purple,tag=P4] if block ~ ~0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P4] ~0.5 ~-1.5 ~0.5
execute at @s[tag=purple] if block ~ ~0.25 ~ #paint:portable if block ~ ~ ~ air run kill @s

execute at @s[tag=purple] if block ~ ~-0.25 ~ #paint:portable if block ~ ~ ~ air run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2 1
execute at @s[tag=purple,tag=P1] if block ~ ~-0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P1] ~0.5 ~1 ~0.5
execute at @s[tag=purple,tag=P2] if block ~ ~-0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P2] ~0.5 ~1 ~0.5
execute at @s[tag=purple,tag=P3] if block ~ ~-0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P3] ~0.5 ~1 ~0.5
execute at @s[tag=purple,tag=P4] if block ~ ~-0.25 ~ #paint:portable if block ~ ~ ~ air align xz run tp @p[team=P4] ~0.5 ~1 ~0.5
execute at @s[tag=purple] if block ~ ~-0.25 ~ #paint:portable if block ~ ~ ~ air run kill @s

execute at @s[tag=purple] if block ~0.25 ~ ~ #paint:portable if block ~ ~ ~ air run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2 1
execute at @s[tag=purple,tag=P1] if block ~0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P1] ^ ^ ^-1
execute at @s[tag=purple,tag=P2] if block ~0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P2] ^ ^ ^-1
execute at @s[tag=purple,tag=P3] if block ~0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P3] ^ ^ ^-1
execute at @s[tag=purple,tag=P4] if block ~0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P4] ^ ^ ^-1
execute at @s[tag=purple] if block ~0.25 ~ ~ #paint:portable if block ~ ~ ~ air run kill @s

execute at @s[tag=purple] if block ~-0.25 ~ ~ #paint:portable if block ~ ~ ~ air run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2 1
execute at @s[tag=purple,tag=P1] if block ~-0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P1] ^ ^ ^-1
execute at @s[tag=purple,tag=P2] if block ~-0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P2] ^ ^ ^-1
execute at @s[tag=purple,tag=P3] if block ~-0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P3] ^ ^ ^-1
execute at @s[tag=purple,tag=P4] if block ~-0.25 ~ ~ #paint:portable if block ~ ~ ~ air run tp @p[team=P4] ^ ^ ^-1
execute at @s[tag=purple] if block ~-0.25 ~ ~ #paint:portable if block ~ ~ ~ air run kill @s

execute at @s[tag=purple] if block ~ ~ ~0.25 #paint:portable if block ~ ~ ~ air run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2 1
execute at @s[tag=purple,tag=P1] if block ~ ~ ~0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P1] ^ ^ ^-1
execute at @s[tag=purple,tag=P2] if block ~ ~ ~0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P2] ^ ^ ^-1
execute at @s[tag=purple,tag=P3] if block ~ ~ ~0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P3] ^ ^ ^-1
execute at @s[tag=purple,tag=P4] if block ~ ~ ~0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P4] ^ ^ ^-1
execute at @s[tag=purple] if block ~ ~ ~0.25 #paint:portable if block ~ ~ ~ air run kill @s

execute at @s[tag=purple] if block ~ ~ ~-0.25 #paint:portable if block ~ ~ ~ air run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2 1
execute at @s[tag=purple,tag=P1] if block ~ ~ ~-0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P1] ^ ^ ^-1
execute at @s[tag=purple,tag=P2] if block ~ ~ ~-0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P2] ^ ^ ^-1
execute at @s[tag=purple,tag=P3] if block ~ ~ ~-0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P3] ^ ^ ^-1
execute at @s[tag=purple,tag=P4] if block ~ ~ ~-0.25 #paint:portable if block ~ ~ ~ air run tp @p[team=P4] ^ ^ ^-1
execute at @s[tag=purple] if block ~ ~ ~-0.25 #paint:portable if block ~ ~ ~ air run kill @s



#filling empty buckets
execute as @s[tag=blue] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=bucket,distance=..0.5] run data merge entity @e[tag=bucket,limit=1,sort=nearest,distance=..1] {Duration:90000,Tags:["bucket","blue"]}
execute as @s[tag=green] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=bucket,distance=..0.5] run data merge entity @e[tag=bucket,limit=1,sort=nearest,distance=..1] {Duration:90000,Tags:["bucket","green"]}
execute as @s[tag=yellow] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=bucket,distance=..0.5] run data merge entity @e[tag=bucket,limit=1,sort=nearest,distance=..1] {Duration:90000,Tags:["bucket","yellow"]}
execute as @s[tag=red] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=bucket,distance=..0.5] run data merge entity @e[tag=bucket,limit=1,sort=nearest,distance=..1] {Duration:90000,Tags:["bucket","red"]}

execute as @s[tag=blue] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=bucket,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Duration:90000,Tags:["bucket","blue"]}
execute as @s[tag=green] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=bucket,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Duration:90000,Tags:["bucket","green"]}
execute as @s[tag=yellow] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=bucket,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Duration:90000,Tags:["bucket","yellow"]}
execute as @s[tag=red] if block ^ ^ ^ oak_pressure_plate align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=bucket,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {Duration:90000,Tags:["bucket","red"]}

execute as @s if block ^ ^ ^ oak_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 1 2
execute as @s if block ^ ^ ^ oak_pressure_plate run kill @s

execute as @s[tag=P1] if block ~-0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @s[tag=P2] if block ~-0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @s[tag=P3] if block ~-0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @s[tag=P4] if block ~-0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current

execute as @s[tag=P1] if block ~0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @s[tag=P2] if block ~0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @s[tag=P3] if block ~0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @s[tag=P4] if block ~0.25 ~ ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current

execute as @s[tag=P1] if block ~ ~ ~0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @s[tag=P2] if block ~ ~ ~0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @s[tag=P3] if block ~ ~ ~0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @s[tag=P4] if block ~ ~ ~0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current

execute as @s[tag=P1] if block ~ ~ ~-0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @s[tag=P2] if block ~ ~ ~-0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @s[tag=P3] if block ~ ~ ~-0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @s[tag=P4] if block ~ ~ ~-0.25 #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current

execute as @s[tag=P1] if block ~ ~0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @s[tag=P2] if block ~ ~0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @s[tag=P3] if block ~ ~0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @s[tag=P4] if block ~ ~0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current

execute as @s[tag=P1] if block ~ ~-0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @s[tag=P2] if block ~ ~-0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @s[tag=P3] if block ~ ~-0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @s[tag=P4] if block ~ ~-0.25 ~ #paint:paintable_laser run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current

#laser paint colliding with laser block
execute if entity @s[tag=red,tag=P1] if block ~0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xminus","current","p1laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p1laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P2] if block ~0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xminus","current","p2laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p2laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P3] if block ~0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xminus","current","p3laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p3laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P4] if block ~0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xminus","current","p4laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p4laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red] if block ~0.25 ~ ~ #paint:laser run tag @s add kill

execute if entity @s[tag=red,tag=P1] if block ~-0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xplus","current","p1laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p1laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P2] if block ~-0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xplus","current","p2laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p2laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P3] if block ~-0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xplus","current","p3laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p3laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P4] if block ~-0.25 ~ ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","xplus","current","p4laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p4laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red] if block ~-0.25 ~ ~ #paint:laser run tag @s add kill

execute if entity @s[tag=red,tag=P1] if block ~ ~0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yminus","current","p1laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p1laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P2] if block ~ ~0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yminus","current","p2laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p2laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P3] if block ~ ~0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yminus","current","p3laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p3laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P4] if block ~ ~0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yminus","current","p4laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p4laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red] if block ~ ~0.25 ~ #paint:laser run tag @s add kill

execute if entity @s[tag=red,tag=P1] if block ~ ~-0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yplus","current","p1laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p1laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P2] if block ~ ~-0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yplus","current","p2laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p2laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P3] if block ~ ~-0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yplus","current","p3laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p3laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P4] if block ~ ~-0.25 ~ #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","yplus","current","p4laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p4laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red] if block ~ ~-0.25 ~ #paint:laser run tag @s add kill

execute if entity @s[tag=red,tag=P1] if block ~ ~ ~0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zminus","current","p1laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p1laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P2] if block ~ ~ ~0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zminus","current","p2laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p2laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P3] if block ~ ~ ~0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zminus","current","p3laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p3laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P4] if block ~ ~ ~0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zminus","current","p4laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p4laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red] if block ~ ~ ~0.25 #paint:laser run tag @s add kill

execute if entity @s[tag=red,tag=P1] if block ~ ~ ~-0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zplus","current","p1laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p1laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P2] if block ~ ~ ~-0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zplus","current","p2laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p2laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P3] if block ~ ~ ~-0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zplus","current","p3laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p3laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red,tag=P4] if block ~ ~ ~-0.25 #paint:paintable_laser align xyz run summon minecraft:shulker ~0.5 ~ ~0.5 {Team:"knockback",Silent:1b,Invulnerable:1b,NoAI:1b,Color:0b,Tags:["new","parent","startnew","laser","zplus","current","p4laser"],Passengers:[{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,Rotation:[0f,0.0f],Tags:["p4laser","new","startnew","laser","current"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate"}]}]}
execute if entity @s[tag=red] if block ~ ~ ~-0.25 #paint:laser run tag @s add kill


tag @e[tag=startnew] remove startnew

execute at @s unless block ~ ~ ~ #paint:paintwhitelist run tag @s add kill
execute as @e[tag=kill] at @s run tp @s ~ ~50 ~
kill @e[tag=kill]

#recoursion
execute if entity @s[scores={pspeed=1..}] run scoreboard players remove @s pspeed 1
execute if entity @s[scores={pspeed=1..}] at @s run function paint:gun/collision
execute if entity @s[tag=paint,scores={pspeed=0}] run scoreboard players set @s pspeed 20
execute if entity @s[tag=turret_check,scores={pspeed=0}] run scoreboard players set @s pspeed 20
