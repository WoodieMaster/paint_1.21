#automatic armor stand placement system 9000 dot com free vbucks lets play free download no scam indian version subtitles
tag @e[type=shulker,tag=cube,tag=!input] add input
tag @e[type=shulker,tag=laser,tag=!input,tag=!type_yellow] add input
tag @e[type=shulker,tag=speedblock,tag=!input] add input
tag @e[type=armor_stand,tag=receiver,tag=!input] add input

#spreader
execute as @e[tag=input] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~ ~1 ~ if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~1 ~ ~ if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~-1 ~ ~ if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~ ~ ~1 if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue

execute as @e[tag=input] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~ ~1 ~ if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~1 ~ ~ if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~-1 ~ ~ if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~ ~ ~1 if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green

execute as @e[tag=input] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~ ~1 ~ if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~1 ~ ~ if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~-1 ~ ~ if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~ ~ ~1 if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red

execute as @e[tag=input] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~ ~1 ~ if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~1 ~ ~ if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~-1 ~ ~ if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~ ~ ~1 if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow


execute as @e[tag=input] at @s positioned ~ ~-2 ~ if block ~ ~1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~ ~2 ~ if block ~ ~-1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~2 ~ ~ if block ~-1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~-2 ~ ~ if block ~1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~ ~ ~2 if block ~ ~ ~-1 #paint:detector_extender if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue
execute as @e[tag=input] at @s positioned ~ ~ ~-2 if block ~ ~ ~1 #paint:detector_extender if block ~ ~ ~ #paint:painter_blue unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/blue

execute as @e[tag=input] at @s positioned ~ ~-2 ~ if block ~ ~1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~ ~2 ~ if block ~ ~-1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~2 ~ ~ if block ~-1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~-2 ~ ~ if block ~1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~ ~ ~2 if block ~ ~ ~-1 #paint:detector_extender if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green
execute as @e[tag=input] at @s positioned ~ ~ ~-2 if block ~ ~ ~1 #paint:detector_extender if block ~ ~ ~ #paint:painter_green unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/green

execute as @e[tag=input] at @s positioned ~ ~-2 ~ if block ~ ~1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~ ~2 ~ if block ~ ~-1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~2 ~ ~ if block ~-1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~-2 ~ ~ if block ~1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~ ~ ~2 if block ~ ~ ~-1 #paint:detector_extender if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red
execute as @e[tag=input] at @s positioned ~ ~ ~-2 if block ~ ~ ~1 #paint:detector_extender if block ~ ~ ~ #paint:painter_red unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/red

execute as @e[tag=input] at @s positioned ~ ~-2 ~ if block ~ ~1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~ ~2 ~ if block ~ ~-1 ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~2 ~ ~ if block ~-1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~-2 ~ ~ if block ~1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~ ~ ~2 if block ~ ~ ~-1 #paint:detector_extender if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow
execute as @e[tag=input] at @s positioned ~ ~ ~-2 if block ~ ~ ~1 #paint:detector_extender if block ~ ~ ~ #paint:painter_yellow unless entity @e[type=armor_stand,tag=painter,distance=..0.5] align xyz run function paint:box/spreader/yellow



#detectors
execute as @e[tag=input] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~ ~1 ~ if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~1 ~ ~ if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~-1 ~ ~ if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~ ~ ~1 if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector

execute as @e[tag=input] at @s positioned ~ ~-2 ~ if block ~ ~1 ~ #paint:detector_extender if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~ ~2 ~ if block ~ ~-1 ~ #paint:detector_extender if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~2 ~ ~ if block ~-1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~-2 ~ ~ if block ~1 ~ ~ #paint:detector_extender if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~ ~ ~2 if block ~ ~ ~-1 #paint:detector_extender if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
execute as @e[tag=input] at @s positioned ~ ~ ~-2 if block ~ ~ ~1 #paint:detector_extender if block ~ ~ ~ #paint:detector unless entity @e[type=armor_stand,tag=detector,distance=..1] unless entity @e[type=armor_stand,tag=receiver,distance=..1] align xyz run function paint:box/detector
