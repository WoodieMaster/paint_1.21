execute as @a[tag=inv_changed] run return run function paint:_trigger_/revoke_inventory_changed
execute as @a[advancements={paint:_trigger_/inventory_changed=true}] run tag @s add inv_changed
execute as @a[advancements={paint:_trigger_/inventory_changed=true}] run function paint:_trigger_/inventory_changed