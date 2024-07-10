execute if items entity @s weapon.offhand minecraft:diamond_ore run return run item replace entity @s weapon.mainhand with minecraft:redstone
execute if items entity @s weapon.offhand minecraft:redstone run return run item replace entity @s weapon.mainhand with minecraft:redstone_torch
execute if items entity @s weapon.offhand minecraft:redstone_torch run return run item replace entity @s weapon.mainhand with minecraft:repeater
execute if items entity @s weapon.offhand minecraft:repeater run return run item replace entity @s weapon.mainhand with minecraft:comparator
execute if items entity @s weapon.offhand minecraft:comparator run return run item replace entity @s weapon.mainhand with minecraft:lever
execute if items entity @s weapon.offhand minecraft:lever run return run item replace entity @s weapon.mainhand with minecraft:diamond_ore[item_name='{"text":"Detector","color":"aqua","italic":false}']