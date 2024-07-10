execute if entity @s[gamemode=creative] run function paint:menu/build
execute if entity @s[gamemode=creative] run function paint:smartswitch
execute if entity @s[gamemode=!creative] run clear @s

execute unless items entity @s hotbar.0 carrot_on_a_stick run function paint:gun/inv_switch
function paint:gun/inv

item replace entity @s weapon.offhand with air

advancement revoke @s only paint:_trigger_/revoke_inventory_changed
