# 撃ったプレイヤーの首の方向に移動
  execute as @e[tag=sp.warpball_move,sort=nearest,limit=1] at @s rotated as @a[tag=sp.warpball_origin,sort=nearest,limit=1,distance=..100] run tp @s ^ ^ ^0.2
  execute as @e[tag=sp.warpball_move] run tag @s remove sp.warpball_move
  tag @s remove sp.warpball_origin