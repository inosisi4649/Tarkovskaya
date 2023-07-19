# ワープの処理
  particle minecraft:witch ~ ~ ~ 0.2 0.6 0.2 1 30 force
  execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1.3
  tp @e[tag=sp.reaper_search,sort=nearest,limit=1]
# ワープ後の後処理
  execute as @s at @s run kill @e[tag=sp.reaper_point,sort=nearest,limit=1]
  execute as @e[tag=sp.reaper_search] run tag @s remove sp.reaper_search
  tag @s remove sp.reaper_tp