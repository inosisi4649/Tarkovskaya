# タイマー進行
  scoreboard players add @e[tag=sp.wall_point] sp.wall_timer 1
  scoreboard players add @a[tag=sp.wall] sp.wall_timer 1
# パーティクル
  execute as @e[tag=sp.wall_point] at @s run particle minecraft:dust 1 0 0 0.5 ~ ~ ~ 0.3 0.3 0.3 5 5
# ブロック破壊
  execute as @e[tag=sp.wall_point,scores={sp.wall_timer=60..}] at @s run setblock ~ ~ ~ minecraft:air
  execute as @e[tag=sp.wall_point,scores={sp.wall_timer=60..}] at @s run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 0.4 1.5
# 自身をキル
  execute as @e[tag=sp.wall_point,scores={sp.wall_timer=60..}] run kill @s 
# タイマーリセット
  execute as @a[tag=sp.wall,scores={sp.wall_timer=100..}] run tag @s remove sp.wall
  execute as @a[scores={sp.wall_timer=100..}] run scoreboard players set @s sp.wall_timer 0
# タイマーが二度呼び出されないようにする
  scoreboard players set $timer sp.wall_timer 1