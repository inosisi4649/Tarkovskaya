# パーティクル
  execute as @e[tag=sp.warpball_shot] at @s run particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
# 弾操作
  execute as @e[tag=sp.warpball_shot] run tag @s add sp.warpball_move
  execute as @s run tag @s add sp.warpball_origin
  execute at @s run function sp_weapons:warpball/move_select_warpball
  execute as @e[tag=sp.warpball_shot] at @s rotated as @p[distance=100..] run kill @s
# 壁にぶつかったとき
  execute as @e[tag=sp.warpball_shot] at @s unless block ~ ~ ~ #sp_weapons:no_collision run tag @s add sp.warpball_delete
  execute as @e[tag=sp.warpball_shot] at @s unless block ~ ~ ~ #sp_weapons:no_collision run function sp_weapons:warpball/delete_end_warpball