execute unless entity @a[team=P1] run return run team join P1
execute unless entity @a[team=P2] run return run team join P2
execute unless entity @a[team=P3] run return run team join P3
execute unless entity @a[team=P4] run return run team join P4

tellraw @s {"color": "red", "text": "No free team!"}