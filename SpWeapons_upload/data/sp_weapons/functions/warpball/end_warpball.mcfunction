# 元居た場所がどっかーん!
  summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b,Silent:1b,Invisible:true,CustomName:'{"text":"Warplosion","color":"dark_purple","bold":true,"italic":false}'}
# ワープの処理
  particle minecraft:witch ~ ~ ~ 0.2 0.6 0.2 1 30 force
  execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2 1.3
  function sp_weapons:yawpitch_collector
  tp @e[tag=sp.warpball_search,sort=nearest,limit=1]
# 元の視点方向に修正
  execute as @e[tag=sp.warpball_search,sort=nearest,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Silent:true,Invisible:true,NoGravity:true,Tags:["sp.warpball_end"]}
  execute as @e[tag=sp.warpball_end,sort=nearest,limit=1] store result entity @s Rotation[0] float 0.01 run scoreboard players get @p[tag=sp.warpball,sort=nearest,limit=1] sp.Yaw
  execute as @e[tag=sp.warpball_end,sort=nearest,limit=1] store result entity @s Rotation[1] float 0.01 run scoreboard players get @p[tag=sp.warpball,sort=nearest,limit=1] sp.Pitch
  tp @e[tag=sp.warpball_end,sort=nearest,limit=1]
# ワープ後の後処理
  execute as @s at @s run kill @e[tag=sp.warpball_shot,sort=nearest,limit=1]
  execute as @s at @s run kill @e[tag=sp.warpball_end,sort=nearest,limit=1]
  execute as @e[tag=sp.warpball_search] run tag @s remove sp.warpball_search
  tag @s remove sp.warpball