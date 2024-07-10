tag @s remove killstandmode
execute if entity @s[gamemode=creative,predicate=paint:sneaking,nbt={SelectedItemSlot:0,OnGround:1b}] run tag @s add killstandmode

execute unless entity @s[tag=killstandmode] run return run item replace entity @s weapon.offhand with air

item replace entity @s weapon.offhand with armor_stand[item_name='{"text": "Killstand", "color": "red"}',entity_data={id:"armor_stand", NoGravity:1b, Marker: 1b, Invisible:1b,Tags:["killstand"]}]

execute as @e[tag=killstand] at @s run function paint:killstand