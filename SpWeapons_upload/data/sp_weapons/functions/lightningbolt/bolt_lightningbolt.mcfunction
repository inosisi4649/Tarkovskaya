# 速度の変更
  execute as @e[type=minecraft:trident,tag=fastbolt] run scoreboard players add @s sp.lightningbolt_bolt 1
  execute as @e[type=minecraft:trident,tag=fastbolt,scores={sp.lightningbolt_bolt=1}] run function sp_weapons:motion_collector
  execute as @e[type=minecraft:trident,tag=fastbolt,scores={sp.lightningbolt_bolt=1}] store result entity @s Motion[0] double 0.00003 run scoreboard players get @s sp.Xmotion
  execute as @e[type=minecraft:trident,tag=fastbolt,scores={sp.lightningbolt_bolt=1}] store result entity @s Motion[1] double 0.00003 run scoreboard players get @s sp.Ymotion
  execute as @e[type=minecraft:trident,tag=fastbolt,scores={sp.lightningbolt_bolt=1}] store result entity @s Motion[2] double 0.00003 run scoreboard players get @s sp.Zmotion
# 最寄りの雷鳴槍が本当に投げた人のものか確認
  execute as @e[type=minecraft:trident,tag=fastbolt,scores={sp.lightningbolt_bolt=1}] store result score @s sp.UUID run data get entity @s Owner[0]
  execute as @a store result score @s sp.UUID run data get entity @s UUID[0]
  execute as @a if score @s sp.UUID = @e[type=minecraft:trident,tag=fastbolt,limit=1] sp.UUID run tag @s add bolt
  execute as @e[type=minecraft:trident,tag=fastbolt] on origin run ride @s[tag=bolt] mount @e[type=minecraft:trident,tag=fastbolt,limit=1]
  execute as @a[tag=bolt] run tag @s remove bolt