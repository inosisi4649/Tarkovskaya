execute as @e[tag=lootables] at @s if block ~ ~ ~ minecraft:chest{Items:[]} run setblock ~ ~ ~ air
execute as @e[tag=lootables] at @s if block ~ ~ ~ minecraft:chest{Items:[]} run kill @s