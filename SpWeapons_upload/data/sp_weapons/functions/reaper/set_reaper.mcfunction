# ワープ地点設置
  summon minecraft:armor_stand ~ ~ ~ {Marker:true,Silent:true,Invisible:true,NoGravity:true,Tags:["sp.reaper_point"]}
# ワープ地点に使用者のUUIDを記憶
  execute store result score @s sp.UUID run data get entity @s UUID[0]
  scoreboard players operation @e[tag=sp.reaper_point,sort=nearest,limit=1] sp.UUID = @s sp.UUID
# ワープ地点の向きをプレイヤーに合わせる
  function sp_weapons:yawpitch_collector
  execute as @e[tag=sp.reaper_point,sort=nearest,limit=1] store result entity @s Rotation[0] float 0.01 run scoreboard players get @p[tag=sp.reaper,sort=nearest,limit=1] sp.Yaw
  execute as @e[tag=sp.reaper_point,sort=nearest,limit=1] store result entity @s Rotation[1] float 0.01 run scoreboard players get @p[tag=sp.reaper,sort=nearest,limit=1] sp.Pitch
# 設置音
  playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 0.6 1.8
# タグ消し
  tag @s remove sp.reaper_tp
  tag @s remove sp.reaper
  
  