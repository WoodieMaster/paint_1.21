execute as @e[tag=!dark,tag=painter] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","white","spread"],Duration:7}
execute as @e[tag=dark,tag=painter] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","white","spread"],Duration:7}
kill @e[tag=painter]
