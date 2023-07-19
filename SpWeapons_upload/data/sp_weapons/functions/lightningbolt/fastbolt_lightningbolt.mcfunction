# スニークの検知
  execute as @a if score @s sp.Sneak matches 1.. if predicate sp_weapons:lightningbolt run scoreboard players set @s sp.lightningbolt_bolt 2
  execute as @a unless predicate sp_weapons:lightningbolt run scoreboard players remove @s sp.lightningbolt_bolt 1
  execute as @a unless score @s sp.Sneak matches 1.. run scoreboard players remove @s sp.lightningbolt_bolt 1
  scoreboard players reset @e[scores={sp.lightningbolt_bolt=..0}] sp.lightningbolt_bolt
# FastBolt発動
  execute as @a at @s if score @s sp.lightningbolt_bolt matches 1.. run tag @e[type=minecraft:trident,distance=..3,limit=1] add fastbolt
  execute as @e[type=minecraft:trident,tag=fastbolt] run function sp_weapons:lightningbolt/bolt_lightningbolt