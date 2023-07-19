tag @a remove isEscaping
execute as @e[type=armor_stand,scores={ep=1..}] at @s run tag @a[distance=..3] add isEscaping
execute as @a at @s run execute as @e[type=armor_stand,scores={ep=1..},distance=..4] at @s run execute as @a[tag=isEscape,tag=!isEscaping,scores={EscapeTime=1..}] run tellraw @s {"text":"脱出ポイントから離れました。","color":"red"}
tag @a[tag=!isEscaping] remove isEscape
execute as @a at @s run execute as @e[type=armor_stand,scores={ep=1..},distance=..4] at @s run execute as @a[tag=!isEscape,tag=isEscaping,scores={EscapeTime=0..}] run tellraw @s {"text":"脱出条件を満たしています！","color":"green"}
tag @a[tag=isEscaping] add isEscape
execute as @e[type=armor_stand,scores={ep=1..}] at @s run particle minecraft:glow ~ ~ ~ 0.2 100 0.2 0 250 force
scoreboard players set @a[tag=!isEscape,scores={EscapeTime=1..}] EscapeTime 150
scoreboard players remove @a[tag=isEscape,scores={EscapeTime=0..}] EscapeTime 1
execute as @a[scores={EscapeTime=0}] run tellraw @s {"text":"脱出しました！","color":"green"}
execute as @a[tag=isEscape] run scoreboard players operation @s EscapeTimeSecond = @s EscapeTime
execute as @a[tag=isEscape] run scoreboard players operation @s EscapeTimeSecond /= 20 Numbers
execute as @a[tag=isEscape] run title @s actionbar [{"text":"脱出まで"},{"score":{"name":"@s","objective":"EscapeTimeSecond"}},{"text":"秒"}]

execute as @a[scores={EscapeTime=0}] run tag @s add Escaped
execute as @a[tag=Escaped,tag=ingame] run gamemode spectator @s
execute as @a[tag=!Escaped,tag=ingame] run gamemode adventure @s
execute as @a[tag=!Escaped] run scoreboard players set @s RaidTime 600
execute as @a[tag=Escaped] run scoreboard players remove @s RaidTime 1
execute as @a[tag=Escaped] run title @s actionbar [{"text":"再出撃まで"},{"score":{"name":"@s","objective":"RaidTime"}}]
execute as @a[tag=Escaped,scores={RaidTime=..0}] at @e[tag=center] run spreadplayers ~ ~ 0 90 false @s
execute as @a[tag=Escaped,scores={RaidTime=..0}] run scoreboard players set @s EscapeTime 150
execute as @a[tag=Escaped,scores={RaidTime=..0}] run function testpack:sellall
execute as @a[tag=Escaped,scores={RaidTime=..0}] run tag @s remove Escaped