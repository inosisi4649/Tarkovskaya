# 前回の弾が残っているなら削除
  execute as @s[tag=sp.warpball] run execute as @e[tag=sp.warpball_shot] run tag @s add sp.warpball_delete
  execute as @s[tag=sp.warpball] run function sp_weapons:warpball/delete_warpball
# ワープ弾召喚
  execute at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["sp.warpball_shot"],NoGravity:1b}
  playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 0.6 1.8
# UUIDの記憶
  execute as @s store result score @s sp.UUID run data get entity @s UUID[0]
  execute as @s at @s run scoreboard players operation @e[tag=sp.warpball_shot,sort=nearest,limit=1] sp.UUID = @s sp.UUID
# タグ付与
  tag @s add sp.warpball