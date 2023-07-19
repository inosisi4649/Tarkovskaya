# 各方向速度の取得
  execute as @s store result score @s sp.Xmotion run data get entity @s Motion[0] 100000
  execute as @s store result score @s sp.Ymotion run data get entity @s Motion[1] 100000
  execute as @s store result score @s sp.Zmotion run data get entity @s Motion[2] 100000