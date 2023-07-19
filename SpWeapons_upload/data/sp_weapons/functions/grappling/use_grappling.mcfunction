# sp.grappling_useスコア0→1
  tag @s add sp.grappling_use
  execute as @e[type=fishing_bobber,sort=nearest,limit=1] run tag @s add sp.grappling
  execute as @e[tag=sp.grappling,type=fishing_bobber,sort=nearest,limit=1] run data get entity @s UUID[0]
# 浮きにUUIDを記憶
  execute store result score @s sp.UUID run data get entity @s UUID[0]
  scoreboard players operation @e[tag=sp.grappling,sort=nearest,limit=1] sp.UUID = @s sp.UUID