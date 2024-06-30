execute unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:green_concrete"}]}] run item replace entity @s inventory.0 with minecraft:green_concrete
execute unless entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:oak_log"}]}] run item replace entity @s inventory.1 with minecraft:oak_log
execute unless entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:white_wool"}]}] run item replace entity @s inventory.2 with minecraft:white_wool
execute unless entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:stone"}]}] run item replace entity @s inventory.3 with minecraft:stone
execute unless entity @s[nbt={Inventory:[{Slot:13b,id:"minecraft:note_block"}]}] run item replace entity @s inventory.4 with minecraft:note_block
execute unless entity @s[nbt={Inventory:[{Slot:14b,id:"minecraft:stripped_dark_oak_wood"}]}] run item replace entity @s inventory.5 with minecraft:stripped_dark_oak_wood
execute unless entity @s[nbt={Inventory:[{Slot:15b,id:"minecraft:diamond_ore"}]}] run item replace entity @s inventory.6 with minecraft:diamond_ore[item_name="{\"text\":\"Detector\",\"color\":\"aqua\"}"]
execute unless entity @s[nbt={Inventory:[{Slot:16b,id:"minecraft:oak_pressure_plate"}]}] run item replace entity @s inventory.7 with minecraft:oak_pressure_plate
execute unless entity @s[nbt={Inventory:[{Slot:17b,id:"minecraft:string"}]}] run item replace entity @s inventory.8 with minecraft:string




execute unless entity @s[nbt={Inventory:[{Slot:18b,id:"minecraft:white_glazed_terracotta"}]}] run item replace entity @s inventory.9 with minecraft:white_glazed_terracotta
execute unless entity @s[nbt={Inventory:[{Slot:19b,id:"minecraft:brown_glazed_terracotta"}]}] run item replace entity @s inventory.10 with minecraft:brown_glazed_terracotta
execute unless entity @s[nbt={Inventory:[{Slot:20b,id:"minecraft:pink_glazed_terracotta"}]}] run item replace entity @s inventory.11 with minecraft:pink_glazed_terracotta

execute unless entity @s[nbt={Inventory:[{Slot:21b,id:"minecraft:cobblestone"}]}] run item replace entity @s inventory.12 with minecraft:cobblestone
execute unless entity @s[nbt={Inventory:[{Slot:22b,id:"minecraft:mossy_stone_bricks"}]}] run item replace entity @s inventory.13 with minecraft:mossy_stone_bricks
execute unless entity @s[nbt={Inventory:[{Slot:23b,id:"minecraft:nether_bricks"}]}] run item replace entity @s inventory.14 with minecraft:nether_bricks

execute unless entity @s[nbt={Inventory:[{Slot:24b,id:"minecraft:armor_stand"}]}] run item replace entity @s inventory.15 with minecraft:armor_stand[custom_model_data=1,item_name="{\"text\":\"Cube\",\"color\":\"gold\"}",entity_data={NoGravity:1b,Marker:1b,Invisible:1b,Tags:["cubespawn","levelsetup"],id:"armor_stand"}]






execute unless entity @s[nbt={Inventory:[{Slot:25b,id:"minecraft:red_dye"}]}] run item replace entity @s inventory.16 with minecraft:red_dye[item_name="{\"text\":\"Enemies\",\"color\":\"gold\"}"]
execute unless entity @s[nbt={Inventory:[{Slot:26b,id:"minecraft:armor_stand"}]}] run item replace entity @s inventory.17 with minecraft:armor_stand[custom_model_data=2,item_name="{\"text\":\"Door [X]\",\"color\":\"gold\"}",entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["door","x","inv"]}]

execute unless entity @s[nbt={Inventory:[{Slot:27b,id:"minecraft:end_rod"}]}] run item replace entity @s inventory.18 with minecraft:end_rod
execute unless entity @s[nbt={Inventory:[{Slot:28b,id:"minecraft:smooth_stone_slab"}]}] run item replace entity @s inventory.19 with minecraft:smooth_stone_slab


execute unless entity @s[nbt={Inventory:[{Slot:32b,id:"minecraft:redstone_lamp"}]}] run item replace entity @s inventory.23 with minecraft:redstone_lamp
execute unless entity @s[nbt={Inventory:[{Slot:33b,id:"minecraft:orange_tulip"}]}] run item replace entity @s inventory.24 with minecraft:orange_tulip
execute unless entity @s[nbt={Inventory:[{Slot:34b,id:"minecraft:oak_button"}]}] run item replace entity @s inventory.25 with minecraft:oak_button
execute unless entity @s[nbt={Inventory:[{Slot:35b,id:"minecraft:feather"}]}] run item replace entity @s inventory.26 with minecraft:feather[item_name="{\"text\":\"Decoration\",\"color\":\"gold\"}"]

execute as @e[tag=killstand] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace blue_stained_glass_pane
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace light_blue_stained_glass_pane
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=fizzlerdoor] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace tripwire
execute as @e[tag=killstand] at @s run kill @e[distance=..3,type=!player]
