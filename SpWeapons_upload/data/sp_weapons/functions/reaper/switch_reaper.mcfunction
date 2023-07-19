# sp.reaper_useスコア1→0、0→1
  scoreboard players add @s sp.reaper_use 1
  execute if score @s sp.reaper_use matches 2.. run scoreboard players set @s sp.reaper_use 0
# 1になったとき
  execute if score @s sp.reaper_use matches 1 run tag @s add sp.reaper
  execute if score @s sp.reaper_use matches 1 run function sp_weapons:reaper/set_reaper
# 0になったとき
  execute if score @s sp.reaper_use matches 0 run tag @s add sp.reaper_tp
  execute if score @s sp.reaper_use matches 0 as @e[tag=sp.reaper_point] run tag @s add sp.reaper_search
  execute if score @s sp.reaper_use matches 0 run function sp_weapons:reaper/tp_reaper