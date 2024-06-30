execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~ ~ dead_bubble_coral run playsound respawn.spike master @a ~ ~ ~ 1 1 1
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~ ~ dead_bubble_coral run scoreboard players set @s respawn 4
