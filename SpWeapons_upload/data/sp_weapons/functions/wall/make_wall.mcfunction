# 向いている方向の確認
  function sp_weapons:yawpitch_collector
  execute if score @s sp.Yaw matches -4500..4500 at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function sp_weapons:wall/make_pz_wall
  execute if score @s sp.Yaw matches 4500..13500 at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function sp_weapons:wall/make_mx_wall
  execute if score @s sp.Yaw matches -13500..-4500 at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function sp_weapons:wall/make_px_wall
  execute if score @s sp.Yaw matches 13500.. at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function sp_weapons:wall/make_mz_wall
  execute if score @s sp.Yaw matches ..-13500 at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function sp_weapons:wall/make_mz_wall
# すでにブロックがある場所は上書きしない
  execute as @e[tag=sp.wall_point,tag=!sp.wall] at @s unless block ~ ~ ~ #sp_weapons:air run kill @s
# ブロック設置
  execute as @e[tag=sp.wall_point,tag=!sp.wall] at @s run setblock ~ ~ ~ minecraft:red_stained_glass
  execute as @e[tag=sp.wall_point,tag=!sp.wall] at @s run playsound minecraft:block.glass.place neutral @a ~ ~ ~ 0.4 1.5
# タイマー追加
  execute as @e[tag=sp.wall_point,tag=!sp.wall] at @s run scoreboard players set @s sp.wall_timer 0
  execute as @e[tag=sp.wall_point,tag=!sp.wall] at @s run tag @s add sp.wall
# プレイヤータイマー追加
  tag @s add sp.wall
  scoreboard players set @s sp.wall_timer 0