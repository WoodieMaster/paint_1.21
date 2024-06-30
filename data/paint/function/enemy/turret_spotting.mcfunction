scoreboard players set @a[gamemode=!adventure] spotted2 0

playsound minecraft:eye.outofrange master @a[scores={spotted=1,spotted2=20..}] ~ ~ ~ 10 1 1


scoreboard players set @a[scores={spotted2=1..,spotted=0}] spotted2 0
scoreboard players add @a[scores={spotted=1..}] spotted2 1

scoreboard players add @a[scores={spotted=1..,spotted2=35..}] spotted2 1
scoreboard players add @a[scores={spotted=1..,spotted2=55..}] spotted2 1


#sound design
stopsound @a[tag=p1,scores={spotted2=..0}] master eye.lock
playsound minecraft:eye.lock master @a[tag=p1,scores={spotted2=20}] ~ ~ ~ 10 1.5 1
playsound minecraft:eye.detect master @a[tag=p1,scores={warnsound=0,spotted2=1}] ~ ~ ~ 0.4 1 1
scoreboard players set @a[tag=p1,scores={spotted2=1}] warnsound 10
scoreboard players remove @a[scores={warnsound=1..}] warnsound 1

bossbar set minecraft:spotted players @a[tag=p1,scores={spotted2=20..}]
execute as @a[tag=p1] run scoreboard players operation @s spotted2 -= spdelay spotted2
execute as @a[tag=p1] store result bossbar minecraft:spotted value run scoreboard players get @s spotted2
execute as @a[tag=p1] run scoreboard players operation @s spotted2 += spdelay spotted2

playsound minecraft:explode.mini master @a[scores={spotted2=110..}] ~ ~ ~ 10 0 1
scoreboard players set @a[scores={spotted2=110..}] respawn 3
scoreboard players set @a[scores={spotted2=110..}] spotted2 0
