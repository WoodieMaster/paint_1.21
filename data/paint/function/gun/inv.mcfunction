execute unless items entity @s hotbar.0 carrot_on_a_stick run clear @s carrot_on_a_stick

execute if score @s[tag=mode5] upgrade matches 61.. run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"dark_purple"}',damage=5,unbreakable={}]
execute if score @s upgrade matches 1..60 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","obfuscated":true}',damage=6,unbreakable={}]

execute if score @s mode matches 0 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"gray"}',damage=0,unbreakable={}]
execute if score @s[tag=mode1] mode matches 1 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"dark_aqua"}',damage=1,unbreakable={}]
execute if score @s[tag=mode2] mode matches 2 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"green"}',damage=2,unbreakable={}]
execute if score @s[tag=mode3] mode matches 3 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"gold"}',damage=3,unbreakable={}]
execute if score @s[tag=mode4] mode matches 4 run return run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_name='{"text":"","color":"red"}',damage=4,unbreakable={}]
