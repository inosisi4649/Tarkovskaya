tag @a remove ingame
scoreboard objectives setdisplay sidebar Money
execute as @e[tag=lootables] at @s if block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ air
execute as @e[tag=lootables] at @s if block ~ ~ ~ minecraft:chest run kill @s