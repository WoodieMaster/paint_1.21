execute as @e[tag=doorlock] at @s run tag @e[tag=door,limit=1,sort=nearest] remove lock
kill @e[type=armor_stand,tag=doorlock]