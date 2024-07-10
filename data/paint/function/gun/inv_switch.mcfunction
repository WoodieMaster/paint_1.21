execute as @a[scores={mode=1..}] run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 2
scoreboard players add @s[scores={mode=1..}] mode 1

title @s subtitle {"text":"","color":"dark_gray"}

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

execute if entity @s[tag=mode5] run scoreboard players set @s mode 5

title @s[scores={mode=0}] title {"text":"","color":"dark_gray"}
title @s[scores={mode=0}] subtitle {"text":"Empty!","color":"dark_gray"}
title @s[tag=mode1,scores={mode=1}] title {"text":"","color":"aqua"}
title @s[tag=mode1,scores={mode=1}] subtitle {"text":"Magnet!","color":"aqua"}
title @s[tag=mode2,scores={mode=2}] title {"text":"","color":"green"}
title @s[tag=mode2,scores={mode=2}] subtitle {"text":"Levitation!","color":"green"}
title @s[tag=mode3,scores={mode=3}] title {"text":"","color":"gold"}
title @s[tag=mode3,scores={mode=3}] subtitle {"text":"Speed!","color":"gold"}
title @s[tag=mode4,scores={mode=4..}] title {"text":"","color":"red"}
title @s[tag=mode4,scores={mode=4..}] subtitle {"text":"Energy!","color":"red"}
title @s[tag=mode5] title {"text":"o","color":"dark_purple"}
