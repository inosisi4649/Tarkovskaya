scoreboard players remove Tick GameTime 1
scoreboard players operation Second GameTime = Tick GameTime
scoreboard players operation Second GameTime /= 20 Numbers
bossbar set timer players @a
execute store result bossbar minecraft:timer max run scoreboard players get maxTime Settings
execute store result bossbar minecraft:timer value run scoreboard players get Second GameTime