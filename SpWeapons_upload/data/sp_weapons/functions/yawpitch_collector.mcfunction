# 首の角度の取得
  execute store result score @s sp.Yaw run data get entity @s Rotation[0] 100
  execute store result score @s sp.Pitch run data get entity @s Rotation[1] 100