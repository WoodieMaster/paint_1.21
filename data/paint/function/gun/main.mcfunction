execute as @s[tag=!mode5,scores={shoot=1..,mode=1},tag=!cube] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["paint","blue"]}
execute as @s[tag=!mode5,scores={shoot=1..,mode=2},tag=!cube] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["paint","green"]}
execute as @s[tag=!mode5,scores={shoot=1..,mode=3},tag=!cube] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["paint","yellow"]}
execute as @s[tag=!mode5,scores={shoot=1..,mode=4},tag=!cube] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["paint","red"]}
execute as @s[tag=mode5,scores={shoot=1..},tag=!cube] at @s anchored eyes unless entity @e[tag=cube,type=shulker,tag=sel,distance=..3.5] run summon area_effect_cloud ^ ^ ^0.5 {Duration:20,Tags:["paint","purple"]}

#paint projectile setup
execute as @s[scores={shoot=1..}] run teleport @e[limit=1,sort=nearest,type=area_effect_cloud,tag=paint,tag=!setup] @s
execute as @s[scores={shoot=1..}] run scoreboard players set @e[limit=1,sort=nearest,type=area_effect_cloud,tag=paint,tag=!setup] pspeed 20
execute as @s[scores={shoot=1..}] run scoreboard players set @e[limit=1,sort=nearest,type=area_effect_cloud,tag=paint,tag=!setup] bounce 0
execute as @s[scores={shoot=1..}] run teleport @e[limit=1,sort=nearest,type=area_effect_cloud,tag=paint,tag=!setup] ^ ^ ^0.5

#playerspecific paint projectiles (spread update)
execute as @s[scores={shoot=1..},team=P1] at @s run tag @e[type=area_effect_cloud,tag=paint,tag=!setup,sort=nearest,limit=1] add P1
execute as @s[scores={shoot=1..},team=P2] at @s run tag @e[type=area_effect_cloud,tag=paint,tag=!setup,sort=nearest,limit=1] add P2
execute as @s[scores={shoot=1..},team=P3] at @s run tag @e[type=area_effect_cloud,tag=paint,tag=!setup,sort=nearest,limit=1] add P3
execute as @s[scores={shoot=1..},team=P4] at @s run tag @e[type=area_effect_cloud,tag=paint,tag=!setup,sort=nearest,limit=1] add P4

tag @e[type=area_effect_cloud,tag=paint,tag=!setup] add setup

execute as @s[scores={shoot=1..,mode=1..},tag=!cube] unless entity @e[tag=cube,type=shulker,tag=sel,distance=..4.5] run playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 2 1

#particle in front of face when shooting
execute as @s[tag=!cube,tag=!mode5,scores={shoot=1..,mode=1}] at @s anchored eyes run particle minecraft:dust{color:[0f,.7f,.1f],scale:.6} ^ ^ ^0.5 0.3 0.3 0.3 1 3
execute as @s[tag=!cube,tag=!mode5,scores={shoot=1..,mode=2}] at @s anchored eyes run particle minecraft:dust{color:[0f,1f,.2f],scale:.6} ^ ^ ^0.5 0.3 0.3 0.3 1 3
execute as @s[tag=!cube,tag=!mode5,scores={shoot=1..,mode=3}] at @s anchored eyes run particle minecraft:dust{color:[1f,.8f,0f],scale:.6} ^ ^ ^0.5 0.3 0.3 0.3 1 3
execute as @s[tag=!cube,tag=!mode5,scores={shoot=1..,mode=4}] at @s anchored eyes run particle minecraft:dust{color:[1f,0f,.5f],scale:.6} ^ ^ ^0.5 0.3 0.3 0.3 1 3
execute as @s[tag=!cube,tag=mode5,scores={shoot=1..,mode=5}] at @s anchored eyes run particle minecraft:dust{color:[.8f,0f,1f],scale:.6} ^ ^ ^0.5 0.3 0.3 0.3 1 3

execute as @a[scores={mode=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 2
scoreboard players add @s[scores={mode=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] mode 1

tag @s[tag=!switchmode,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] add switchmode
tag @s[tag=!switchmode,nbt={SelectedItemSlot:0},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add switchmode
item replace entity @s[tag=switchmode] weapon.offhand with air

execute as @a[tag=switchmode] run title @s subtitle {"text":"","color":"dark_gray"}

scoreboard players set @s[scores={mode=5..}] mode 1
scoreboard players set @s[tag=!mode1,scores={mode=1}] mode 2
scoreboard players set @s[tag=!mode2,scores={mode=2}] mode 3
scoreboard players set @s[tag=!mode3,scores={mode=3}] mode 4
scoreboard players set @s[tag=!mode4,scores={mode=4..}] mode 1
scoreboard players set @s[tag=!mode1,scores={mode=1}] mode 2
scoreboard players set @s[tag=!mode2,scores={mode=2}] mode 3
scoreboard players set @s[tag=!mode3,scores={mode=3}] mode 4
scoreboard players set @s[tag=!mode4,scores={mode=4..}] mode 1
scoreboard players set @s[tag=!mode1,scores={mode=1}] mode 2
scoreboard players set @s[tag=!mode2,scores={mode=2}] mode 3
scoreboard players set @s[tag=!mode3,scores={mode=3}] mode 4
scoreboard players set @s[tag=!mode4,scores={mode=4..}] mode 1
scoreboard players set @s[tag=!mode1,scores={mode=1}] mode 2
scoreboard players set @s[tag=!mode2,scores={mode=2}] mode 3
scoreboard players set @s[tag=!mode3,scores={mode=3}] mode 4
scoreboard players set @s[tag=!mode4,scores={mode=4..}] mode 1




title @s[tag=switchmode,tag=!mode5,scores={mode=0}] title {"text":"","color":"dark_gray"}
title @s[tag=switchmode,tag=!mode5,scores={mode=0}] subtitle {"text":"Empty!","color":"dark_gray"}
title @s[tag=switchmode,tag=mode5] title {"text":"o","color":"dark_purple"}
title @s[tag=switchmode,tag=!mode5,tag=mode1,scores={mode=1}] title {"text":"","color":"aqua"}
title @s[tag=switchmode,tag=!mode5,tag=mode1,scores={mode=1}] subtitle {"text":"Magnet!","color":"aqua"}
title @s[tag=switchmode,tag=!mode5,tag=mode2,scores={mode=2}] title {"text":"","color":"green"}
title @s[tag=switchmode,tag=!mode5,tag=mode2,scores={mode=2}] subtitle {"text":"Levitation!","color":"green"}
title @s[tag=switchmode,tag=!mode5,tag=mode3,scores={mode=3}] title {"text":"","color":"gold"}
title @s[tag=switchmode,tag=!mode5,tag=mode3,scores={mode=3}] subtitle {"text":"Speed!","color":"gold"}
title @s[tag=switchmode,tag=!mode5,tag=mode4,scores={mode=4..}] title {"text":"","color":"red"}
title @s[tag=switchmode,tag=!mode5,tag=mode4,scores={mode=4..}] subtitle {"text":"Energy!","color":"red"}



item replace entity @s[tag=!mode5,scores={mode=0}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"gray"}',damage=0,unbreakable={show_in_tooltip:false}]
item replace entity @s[tag=!mode5,tag=mode1,scores={mode=1}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"dark_aqua"}',damage=1,unbreakable={show_in_tooltip:false}]
item replace entity @s[tag=!mode5,tag=mode1,scores={mode=5}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"dark_aqua"}',damage=1,unbreakable={show_in_tooltip:false}]
item replace entity @s[tag=!mode5,tag=mode2,scores={mode=2}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"green"}',damage=2,unbreakable={show_in_tooltip:false}]
item replace entity @s[tag=!mode5,tag=mode3,scores={mode=3}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"gold"}',damage=3,unbreakable={show_in_tooltip:false}]
item replace entity @s[tag=!mode5,tag=mode4,scores={mode=4}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"red"}',damage=4,unbreakable={show_in_tooltip:false}]
item replace entity @s[tag=mode5,scores={upgrade=59..}] hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"dark_purple"}',damage=5,unbreakable={show_in_tooltip:false}]
tag @s[tag=switchmode] remove switchmode
