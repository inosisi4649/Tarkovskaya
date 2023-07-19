summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score random random run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation random random %= random range
kill @e[type=area_effect_cloud,tag=random_uuid]
tellraw @a[distance=..20] {"score":{"name":"random","objective":"random"}}
execute as @s store result score @s random run scoreboard players get random random