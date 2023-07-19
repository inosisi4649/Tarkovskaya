give @a iron_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @a bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
give @a arrow{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1
scoreboard players set tmpcNum Settings 0
kill @e[tag=lootables]
function testpack:summoncheststand
execute as @e[tag=lootables] run function testpack:random
execute as @s at @e[tag=center] run worldborder center ~ ~
worldborder set 320
tag @a add ingame
scoreboard players operation Tick GameTime = maxTime Settings
scoreboard players operation Tick GameTime *= 20 Numbers
execute as @s at @e[tag=center] run spreadplayers ~ ~ 0 150 false @e[tag=lootables]
execute as @s at @e[tag=center] run spreadplayers ~ ~ 0 150 false @a[tag=ingame]
function testpack:randomitem