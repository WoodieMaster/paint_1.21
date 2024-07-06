tellraw @a ["",{"text":"\n","color":"gray"},{"text":"Welcome back to your Paintbox!","color":"aqua"},{"text":"\n","color":"gray"},{"text":"- Paint technology successfully reloaded!","color":"gold","clickEvent":{"action":"open_url","value":"https://www.patreon.com/Halbzwilling"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Download updates here!","color":"gold"}]}}}]
tellraw @a [{"text":"Sponsored by: ","color":"gray"},{"text":"Patreons!","color":"gold"}]

#scoreboards
scoreboard objectives add currentlevel dummy
scoreboard objectives add eventtimer dummy

scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add magnet dummy
scoreboard objectives add music dummy
scoreboard objectives add musictime dummy
scoreboard objectives add upgrade dummy
scoreboard objectives add respawn dummy
scoreboard objectives add stack dummy
scoreboard objectives add alive dummy
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add main dummy
scoreboard objectives add life dummy
scoreboard objectives add speed dummy
scoreboard objectives add spotted dummy
scoreboard objectives add spotted2 dummy
scoreboard objectives add mode dummy
scoreboard objectives add reflect dummy
scoreboard objectives add shoot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add movecd dummy
scoreboard objectives add count dummy
scoreboard objectives add warnsound dummy
scoreboard objectives add locksound dummy
scoreboard objectives add cube_range dummy
scoreboard objectives add success dummy
scoreboard objectives add soonkill dummy
scoreboard objectives add valve minecraft.custom:minecraft.tune_noteblock
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add open dummy
scoreboard objectives add direction dummy
scoreboard objectives add lev dummy
scoreboard objectives add place minecraft.used:minecraft.chicken_spawn_egg
scoreboard objectives add killstand minecraft.custom:minecraft.sneak_time
scoreboard objectives add pick minecraft.custom:minecraft.damage_dealt
scoreboard objectives add pspeed dummy
scoreboard objectives add color dummy

scoreboard objectives add purple_wallrun dummy

scoreboard objectives add fall dummy
scoreboard objectives add mirror dummy
scoreboard objectives add bounce dummy

team add knockback
team modify knockback collisionRule never

#bossbars
bossbar add speed {"text":""}
bossbar add speed2 {"text":""}
bossbar add speed3 {"text":""}
bossbar add speed4 {"text":""}

bossbar add jump {"text":""}
bossbar add magnet {"text":""}

bossbar add spotted {"text":"SPOTTED!","color":"dark_red"}
bossbar add spotted2 {"text":"SPOTTED!","color":"dark_red"}

bossbar set minecraft:speed max 40
bossbar set minecraft:speed2 max 40
bossbar set minecraft:speed3 max 40
bossbar set minecraft:speed4 max 40

bossbar set minecraft:jump max 1
bossbar set minecraft:magnet max 1

bossbar set minecraft:spotted max 88
bossbar set minecraft:spotted2 max 88

bossbar set minecraft:speed color yellow
bossbar set minecraft:speed2 color yellow
bossbar set minecraft:speed3 color yellow
bossbar set minecraft:speed4 color yellow

bossbar set minecraft:spotted color red
bossbar set minecraft:spotted2 color red

bossbar set minecraft:jump color green
bossbar set minecraft:magnet color blue

bossbar set minecraft:jump value 1
bossbar set minecraft:magnet value 1

bossbar add air {"text":"Air","color":"aqua"}
bossbar add air2 {"text":"Air","color":"aqua"}
bossbar add air3 {"text":"Air","color":"aqua"}
bossbar add air4 {"text":"Air","color":"aqua"}

bossbar set air max 300
bossbar set air2 max 300
bossbar set air3 max 300
bossbar set air4 max 300

bossbar set minecraft:air color white
bossbar set minecraft:air2 color white
bossbar set minecraft:air3 color white
bossbar set minecraft:air4 color white

tag @a remove p1
tag @a remove p2
tag @a remove p3
tag @a remove p4

execute unless entity @a[tag=p1] run tag @r[gamemode=!spectator,tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p1
execute unless entity @a[tag=p2] run tag @r[gamemode=!spectator,tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p2
execute unless entity @a[tag=p3] run tag @r[gamemode=!spectator,tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p3
execute unless entity @a[tag=p4] run tag @r[gamemode=!spectator,tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p4

scoreboard players set @a sneak 0
scoreboard players set @a magnet 0
scoreboard players set maxlasers count 20
scoreboard players set maxlaser count 20
scoreboard players set cubelasers count 0
scoreboard players set lasers count 0

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule fallDamage false

#player teams
team add P1 {"text":"P1","color":"blue"}
team add P2 {"text":"P2","color":"dark_green"}
team add P3 {"text":"P3","color":"red"}
team add P4 {"text":"P4","color":"yellow"}

team modify P1 color blue
team modify P2 color dark_green
team modify P3 color red
team modify P4 color yellow

team modify P1 prefix [{"text":"P1","color":"blue"},{"text":"| ","color":"gray"}]
team modify P2 prefix [{"text":"P2","color":"dark_green"},{"text":"| ","color":"gray"}]
team modify P3 prefix [{"text":"P3","color":"red"},{"text":"| ","color":"gray"}]
team modify P4 prefix [{"text":"P4","color":"yellow"},{"text":"| ","color":"gray"}]

