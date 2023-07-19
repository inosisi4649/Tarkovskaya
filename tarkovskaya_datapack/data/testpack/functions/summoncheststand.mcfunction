execute if score chestNum Settings > tmpcNum Settings run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lootables"]}
scoreboard players add tmpcNum Settings 1
execute if score chestNum Settings > tmpcNum Settings run function testpack:summoncheststand
return 0