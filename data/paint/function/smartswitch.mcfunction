# armor_stand
execute if items entity @s weapon.offhand armor_stand run return run function paint:smartswitch/_armor_stand_

#colored solid blocks
execute if items entity @s weapon.offhand #paint:smartswitch/colored_solid_blocks run return run function paint:smartswitch/colored_solid_blocks

#Command Blocks
execute if items entity @s weapon.offhand #paint:smartswitch/command_blocks run return run function paint:smartswitch/command_blocks

#Extender
execute if items entity @s weapon.offhand #paint:smartswitch/extender run return run function paint:smartswitch/extender

#spreader
execute if items entity @s weapon.offhand #paint:smartswitch/spreader run return run function paint:smartswitch/spreader

#valves
execute if items entity @s weapon.offhand #paint:smartswitch/valves run return run function paint:smartswitch/valves

#tubes
execute if items entity @s weapon.offhand #paint:smartswitch/tubes run return run function paint:smartswitch/tubes

#lines
execute if items entity @s weapon.offhand #paint:smartswitch/lines run return run function paint:smartswitch/lines

#paintable surfaces
execute if items entity @s weapon.offhand #paint:smartswitch/paintable_surfaces run return run function paint:smartswitch/paintable_surfaces

#blümchen <3
execute if items entity @s weapon.offhand #paint:smartswitch/bluemchen run return run function paint:smartswitch/bluemchen

#enemies
execute if items entity @s weapon.offhand #paint:smartswitch/enemies run return run function paint:smartswitch/enemies

#fizzler gate
execute if items entity @s weapon.offhand minecraft:string run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Fizzler Gate [X]\",\"color\":\"gold\"}",custom_data={id:"fizzlerdoor",type:"x"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["fizzlerdoor","x"]}]

#transmitter/receiver
execute if items entity @s weapon.offhand minecraft:redstone_lamp run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [A]\",\"color\":\"aqua\"}",custom_data={id:"armor_stand",id:"transmitter",type:"a"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","a"]}]

#detector
execute if items entity @s weapon.offhand #paint:smartswitch/detector run return run function paint:smartswitch/detector

#slabs
execute if items entity @s weapon.offhand #paint:smartswitch/slabs run return run function paint:smartswitch/slabs

#cube respawn points
execute if items entity @s weapon.offhand #paint:smartswitch/cube_respawn run return run function paint:smartswitch/cube_respawn

#cleaner redirector
execute if items entity @s weapon.offhand #paint:smartswitch/cleaner_redirector run return run function paint:smartswitch/cleaner_redirector

#white block
execute if items entity @s weapon.offhand #paint:smartswitch/white_block run return run function paint:smartswitch/white_block

#gray block
execute if items entity @s weapon.offhand #paint:smartswitch/gray_block run return run function paint:smartswitch/gray_block

#black block
execute if items entity @s weapon.offhand #paint:smartswitch/black_block run return run function paint:smartswitch/black_block

#cube
execute if items entity @s weapon.offhand minecraft:wooden_hoe run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Cube\",\"color\":\"gold\"}",entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["cubespawn","levelsetup"]}]

#buckets
execute if items entity @s weapon.offhand #paint:smartswitch/buckets run return run function paint:smartswitch/buckets

#fences
execute if items entity @s weapon.offhand #paint:smartswitch/fences run return run function paint:smartswitch/fences

#fancy block
execute if items entity @s weapon.offhand #paint:smartswitch/fancy_block run return run function paint:smartswitch/fancy_block

#tall flowers
execute if items entity @s weapon.offhand #paint:smartswitch/tall_flowers run return run function paint:smartswitch/tall_flowers

#decoration
execute if items entity @s weapon.offhand minecraft:feather run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Radio\",\"color\":\"gold\"}",custom_data={id:"radio"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["radio"]}]

#other
item replace entity @s weapon.mainhand from entity @s weapon.offhand