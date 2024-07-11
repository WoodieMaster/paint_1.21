execute if entity @s[gamemode=creative] run function paint:menu/build
execute if entity @s[gamemode=creative] if predicate paint:empty_mainhand unless predicate paint:empty_offhand run function paint:smartswitch
execute if items entity @s weapon.mainhand chicken_spawn_egg run item replace entity @s weapon.mainhand with air
execute if entity @s[gamemode=!creative] run clear @s

execute unless items entity @s hotbar.0 carrot_on_a_stick run function paint:gun/inv_switch
function paint:gun/inv

item replace entity @s weapon.offhand with air

execute if entity @s[tag=cube] run item replace entity @s weapon.offhand with minecraft:chicken_spawn_egg[can_place_on={blocks:"#paint:cube_can_place_on"},entity_data={id:"minecraft:chicken",Tags:["cubespawn"],Silent:1b,NoAI:1b,Invulnerable:1b,active_effects:[{id:"invisibility",amplifier:0,duration:2000000,show_particles:0b}]}]

schedule function paint:_trigger_/inventory_changed_tick 1t