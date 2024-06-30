tag @e[type=armor_stand,tag=get_input,tag=active] remove active

execute as @e[tag=input] at @s align xyz positioned ~0.5 ~0 ~0.5 run tag @e[tag=get_input,distance=..1.2] add active

#detecor block extension
execute as @e[tag=input] at @s if block ~ ~-1 ~ #paint:detector_extender align xyz positioned ~0.5 ~-1 ~0.5 run tag @e[tag=get_input,distance=..1.2] add active
execute as @e[tag=input] at @s if block ~ ~1 ~ #paint:detector_extender align xyz positioned ~0.5 ~1 ~0.5 run tag @e[tag=get_input,distance=..1.2] add active
execute as @e[tag=input] at @s if block ~1 ~ ~ #paint:detector_extender align xyz positioned ~1.5 ~ ~0.5 run tag @e[tag=get_input,distance=..1.2] add active
execute as @e[tag=input] at @s if block ~-1 ~ ~ #paint:detector_extender align xyz positioned ~-0.5 ~ ~0.5 run tag @e[tag=get_input,distance=..1.2] add active
execute as @e[tag=input] at @s if block ~ ~ ~1 #paint:detector_extender align xyz positioned ~0.5 ~ ~1.5 run tag @e[tag=get_input,distance=..1.2] add active
execute as @e[tag=input] at @s if block ~ ~ ~-1 #paint:detector_extender align xyz positioned ~0.5 ~ ~-0.5 run tag @e[tag=get_input,distance=..1.2] add active

#cube activation
execute as @e[tag=valve] at @s positioned ~ ~1 ~ run tag @e[tag=detector,distance=..2] add active
execute as @e[tag=valve_cube] at @s positioned ~ ~1 ~ run tag @e[tag=detector,distance=..2] add active
