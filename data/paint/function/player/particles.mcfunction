tag @a[nbt={OnGround:1b}] remove jump
tag @a[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] add jump
tag @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] add jump

execute as @a[tag=jump] at @s anchored eyes rotated ~ 0 run particle minecraft:dust{color:[0f,1f,.2f],scale:1.2} ^ ^-1.8 ^ 0.1 0.1 0.1 0 2 normal

tag @a remove speed
tag @a[nbt={active_effects:[{id:"minecraft:speed"}]}] add speed

execute as @a[tag=speed] at @s anchored eyes rotated ~ 0 run particle minecraft:dust{color:[1f,.8f,.3f],scale:.8} ^0.4 ^-0.9 ^ 0.06 0.1 0.06 0 1 normal
execute as @a[tag=speed] at @s anchored eyes rotated ~ 0 run particle minecraft:dust{color:[1f,.8f,.3f],scale:.8} ^-0.4 ^-0.9 ^ 0.06 0.1 0.06 0 1 normal

tag @a[tag=jumpbossbar] remove jumpbossbar
tag @a[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] add jumpbossbar
tag @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] add jumpbossbar


bossbar set minecraft:jump players @a[tag=jumpbossbar]
