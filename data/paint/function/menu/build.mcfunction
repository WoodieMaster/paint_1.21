function paint:menu/clear

item replace entity @s inventory.0 with minecraft:green_concrete
item replace entity @s inventory.1 with minecraft:oak_log
item replace entity @s inventory.2 with minecraft:white_wool
item replace entity @s inventory.3 with minecraft:stone
item replace entity @s inventory.4 with minecraft:note_block
item replace entity @s inventory.5 with minecraft:stripped_dark_oak_wood
item replace entity @s inventory.6 with minecraft:diamond_ore[item_name="{\"text\":\"Detector\",\"color\":\"aqua\"}"]
item replace entity @s inventory.7 with minecraft:oak_pressure_plate
item replace entity @s inventory.8 with minecraft:string

item replace entity @s inventory.9 with minecraft:white_glazed_terracotta
item replace entity @s inventory.10 with minecraft:brown_glazed_terracotta
item replace entity @s inventory.11 with minecraft:pink_glazed_terracotta

item replace entity @s inventory.12 with minecraft:cobblestone
item replace entity @s inventory.13 with minecraft:mossy_stone_bricks
item replace entity @s inventory.14 with minecraft:nether_bricks

item replace entity @s inventory.15 with minecraft:armor_stand[custom_model_data=1,item_name="{\"text\":\"Cube\",\"color\":\"gold\"}",entity_data={NoGravity:1b,Marker:1b,Invisible:1b,Tags:["cubespawn","levelsetup"],id:"armor_stand"}]

item replace entity @s inventory.16 with minecraft:red_dye[item_name="{\"text\":\"Enemies\",\"color\":\"gold\"}"]
item replace entity @s inventory.17 with minecraft:armor_stand[custom_model_data=2,custom_data={id:"door",type:"x"},item_name="{\"text\":\"Door [X]\",\"color\":\"gold\"}",entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["door","x","inv"]}]

item replace entity @s inventory.18 with minecraft:end_rod
item replace entity @s inventory.19 with minecraft:smooth_stone_slab

item replace entity @s inventory.23 with minecraft:redstone_lamp
item replace entity @s inventory.24 with minecraft:orange_tulip
item replace entity @s inventory.25 with minecraft:oak_button

item replace entity @s inventory.26 with minecraft:feather[item_name="{\"text\":\"Decoration\",\"color\":\"gold\"}"]

execute as @e[tag=killstand] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace blue_stained_glass_pane
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace light_blue_stained_glass_pane
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=fizzlerdoor] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace tripwire
execute as @e[tag=killstand] at @s run kill @e[distance=..3,type=!player]

execute if entity @s[tag=cube] run item replace entity @s weapon.offhand with minecraft:chicken_spawn_egg[can_place_on={blocks:"#paint:cube_can_place_on"},entity_data={id:"minecraft:chicken",Tags:["cubespawn"],Silent:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"invisibility",amplifier:0,duration:2000000,show_particles:0b}]}]