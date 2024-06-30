execute as @a[tag=!mode5,tag=!mode1] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate run title @s times 0 2 15
execute as @a[tag=!mode5,tag=!mode1] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate run title @s title {"text":"","color":"aqua"}
execute as @a[tag=!mode5,tag=!mode1] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate run title @s subtitle {"text":"Magnet!","color":"aqua"}
execute as @a[tag=!mode5,tag=!mode1] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @a[tag=!mode5,tag=!mode1] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate run scoreboard players set @s mode 1
execute as @a[tag=!mode5,tag=!mode1] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate run tag @s add mode1

execute as @a[tag=!mode5,tag=!mode2] at @s if block ~ ~ ~ minecraft:birch_pressure_plate run title @s title {"text":"","color":"green"}
execute as @a[tag=!mode5,tag=!mode2] at @s if block ~ ~ ~ minecraft:birch_pressure_plate run title @s subtitle {"text":"Levitation!","color":"green"}
execute as @a[tag=!mode5,tag=!mode2] at @s if block ~ ~ ~ minecraft:birch_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @a[tag=!mode5,tag=!mode2] at @s if block ~ ~ ~ minecraft:birch_pressure_plate run scoreboard players set @s mode 2
execute as @a[tag=!mode5,tag=!mode2] at @s if block ~ ~ ~ minecraft:birch_pressure_plate run tag @s add mode2

execute as @a[tag=!mode5,tag=!mode3] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate run title @s times 0 0 15
execute as @a[tag=!mode5,tag=!mode3] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate run title @s title {"text":"","color":"gold"}
execute as @a[tag=!mode5,tag=!mode3] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate run title @s subtitle {"text":"Speed!","color":"gold"}
execute as @a[tag=!mode5,tag=!mode3] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @a[tag=!mode5,tag=!mode3] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate run scoreboard players set @s mode 3
execute as @a[tag=!mode5,tag=!mode3] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate run tag @s add mode3

execute as @a[tag=!mode5,tag=!mode4] at @s if block ~ ~ ~ minecraft:acacia_pressure_plate run title @s times 0 0 15
execute as @a[tag=!mode5,tag=!mode4] at @s if block ~ ~ ~ minecraft:acacia_pressure_plate run title @s title {"text":"","color":"red"}
execute as @a[tag=!mode5,tag=!mode4] at @s if block ~ ~ ~ minecraft:acacia_pressure_plate run title @s subtitle {"text":"Energy!","color":"red"}
execute as @a[tag=!mode5,tag=!mode4] at @s if block ~ ~ ~ minecraft:acacia_pressure_plate run playsound minecraft:block.brewing_stand.brew master @a
execute as @a[tag=!mode5,tag=!mode4] at @s if block ~ ~ ~ minecraft:acacia_pressure_plate run scoreboard players set @s mode 4
execute as @a[tag=!mode5,tag=!mode4] at @s if block ~ ~ ~ minecraft:acacia_pressure_plate run tag @s add mode4

execute as @a[scores={mode=1..}] at @s if block ~ ~ ~ #paint:fizzler run playsound minecraft:entity.squid.ambient master @a ~ ~ ~ 10 1
execute as @a[scores={mode=1..}] at @s if block ~ ~ ~ #paint:fizzler run title @s title {"text":"","color":"dark_gray"}
execute as @a[scores={mode=1..}] at @s if block ~ ~ ~ #paint:fizzler run title @s subtitle {"text":"Fizzlered!","color":"dark_gray"}
execute as @a[scores={mode=1..}] at @s if block ~ ~ ~ minecraft:water run title @s title {"text":"","color":"dark_gray"}
execute as @a[scores={mode=1..}] at @s if block ~ ~ ~ minecraft:water run title @s subtitle {"text":"Washed Out!","color":"dark_gray"}

execute as @a at @s if block ~ ~ ~ #paint:fizzler run tag @s remove mode1
execute as @a at @s if block ~ ~ ~ #paint:fizzler run tag @s remove mode2
execute as @a at @s if block ~ ~ ~ #paint:fizzler run tag @s remove mode3
execute as @a at @s if block ~ ~ ~ #paint:fizzler run tag @s remove mode4
execute as @a at @s if block ~ ~ ~ #paint:fizzler run tag @s remove mode5

execute as @a[team=P1] at @s if block ~ ~ ~ #paint:fizzler run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p1laser] remove current
execute as @a[team=P2] at @s if block ~ ~ ~ #paint:fizzler run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p2laser] remove current
execute as @a[team=P3] at @s if block ~ ~ ~ #paint:fizzler run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p3laser] remove current
execute as @a[team=P4] at @s if block ~ ~ ~ #paint:fizzler run tag @e[tag=!cubelaser,type=!player,tag=laser,tag=!startnew,tag=p4laser] remove current


execute as @a[scores={mode=0..}] at @s if block ~ ~ ~ #paint:fizzler run scoreboard players set @s mode 0
execute as @a[scores={mode=0..}] at @s if block ~ ~ ~ #paint:fizzler run scoreboard players set @s jump 1
execute as @a[scores={mode=0..}] at @s if block ~ ~ ~ #paint:fizzler run scoreboard players set @s speed 0
execute as @a at @s if block ~ ~ ~ #paint:fizzler run effect clear @s

#spread
#playerspecific paint removal (spread update)
execute as @e[tag=newcanvas,tag=spread,tag=P1] run tag @e[tag=!newcanvas,tag=spread,tag=P1] add removepaint
execute as @e[tag=newcanvas,tag=spread,tag=P2] run tag @e[tag=!newcanvas,tag=spread,tag=P2] add removepaint
execute as @e[tag=newcanvas,tag=spread,tag=P3] run tag @e[tag=!newcanvas,tag=spread,tag=P3] add removepaint
execute as @e[tag=newcanvas,tag=spread,tag=P4] run tag @e[tag=!newcanvas,tag=spread,tag=P4] add removepaint

tag @e[tag=newcanvas] remove newcanvas

#playerspecific paint removal (spread update)
execute as @a[team=P1] at @s if block ~ ~ ~ #paint:fizzler run tag @e[type=area_effect_cloud,tag=P1,tag=spread] add removepaint
execute as @a[team=P2] at @s if block ~ ~ ~ #paint:fizzler run tag @e[type=area_effect_cloud,tag=P2,tag=spread] add removepaint
execute as @a[team=P3] at @s if block ~ ~ ~ #paint:fizzler run tag @e[type=area_effect_cloud,tag=P3,tag=spread] add removepaint
execute as @a[team=P4] at @s if block ~ ~ ~ #paint:fizzler run tag @e[type=area_effect_cloud,tag=P4,tag=spread] add removepaint
tag @e[type=area_effect_cloud,tag=!P1,tag=!P2,tag=!P3,tag=!P4,tag=spread,tag=canvas] add removepaint

execute as @e[tag=removepaint] at @s run fill ~ ~ ~ ~ ~ ~ stone replace #paint:paintable
kill @e[tag=removepaint]


execute as @a at @s if block ~ ~ ~ #paint:fizzler run effect clear @s slowness
execute as @a at @s if block ~ ~ ~ minecraft:water run tag @s remove mode1
execute as @a at @s if block ~ ~ ~ minecraft:water run tag @s remove mode2
execute as @a at @s if block ~ ~ ~ minecraft:water run tag @s remove mode3
execute as @a at @s if block ~ ~ ~ minecraft:water run tag @s remove mode4
execute as @a at @s if block ~ ~ ~ minecraft:water run tag @s remove mode5

execute as @a[scores={mode=0..}] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s mode 0

playsound minecraft:eye.outofrange master @a[tag=!mode5,scores={upgrade=1..}]
scoreboard players set @a[tag=!mode5] upgrade -1
stopsound @a[tag=!mode5] master minecraft:ball.explode

scoreboard players set @a[tag=!mode5,tag=mode1,tag=mode2,tag=mode3,tag=mode4] upgrade 0
scoreboard players add @a[scores={upgrade=0..70}] upgrade 1
execute as @a[scores={upgrade=1}] at @s anchored eyes run effect give @s slowness 3 2 true
execute as @a[scores={upgrade=1}] at @s anchored feet run playsound minecraft:ball.explode master @a ~ ~ ~ 10 2 1
execute as @a[scores={upgrade=63}] at @s anchored eyes run particle minecraft:dragon_breath ^ ^0.2 ^ 0.1 0.1 0.1 0.1 400
execute as @a[scores={upgrade=63}] at @s anchored eyes run scoreboard players set @s lev 6

execute as @a[scores={upgrade=1..63}] at @s anchored eyes run particle minecraft:dragon_breath ^ ^ ^1 0 0 0 0.1 3

execute as @a[tag=mode5,scores={upgrade=1..24}] at @s run title @s subtitle {"text":"ERROR","color":"dark_purple"}
execute as @a[tag=mode5,scores={upgrade=26}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"green"}]
execute as @a[tag=mode5,scores={upgrade=30}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"gold"}]
execute as @a[tag=mode5,scores={upgrade=34}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"red"}]
execute as @a[tag=mode5,scores={upgrade=38}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"dark_purple"}]
execute as @a[tag=mode5,scores={upgrade=40}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"gold"}]
execute as @a[tag=mode5,scores={upgrade=42}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"green"}]
execute as @a[tag=mode5,scores={upgrade=44}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"dark_purple"},{"text":" a","obfuscated":true,"color":"green"}]
execute as @a[tag=mode5,scores={upgrade=46}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"aqua"}]
execute as @a[tag=mode5,scores={upgrade=48}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"dark_purple"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"dark_purple"}]
execute as @a[tag=mode5,scores={upgrade=52}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"red"}]
execute as @a[tag=mode5,scores={upgrade=53}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"gold"}]
execute as @a[tag=mode5,scores={upgrade=54}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"red"}]
execute as @a[tag=mode5,scores={upgrade=55}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"dark_purple"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"aqua"}]
execute as @a[tag=mode5,scores={upgrade=56}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"gold"}]
execute as @a[tag=mode5,scores={upgrade=57}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"gold"}]
execute as @a[tag=mode5,scores={upgrade=58}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"dark_purple"}]
execute as @a[tag=mode5,scores={upgrade=59}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"dark_purple"}]
execute as @a[tag=mode5,scores={upgrade=60}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"red"}]
execute as @a[tag=mode5,scores={upgrade=61}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"red"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"gold"},{"text":" a","obfuscated":true,"color":"aqua"}]
execute as @a[tag=mode5,scores={upgrade=62}] at @s run title @s title [{"text":"a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"aqua"},{"text":" a","obfuscated":true,"color":"green"},{"text":" a","obfuscated":true,"color":"dark_purple"}]
execute as @a[tag=mode5,scores={upgrade=63}] at @s run title @s title {"text":"a","obfuscated":true,"color":"dark_purple"}

item replace entity @a[tag=mode5,scores={upgrade=1..60}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='""',damage=6,unbreakable={show_in_tooltip:false}]
tag @a[scores={upgrade=1}] add mode5
