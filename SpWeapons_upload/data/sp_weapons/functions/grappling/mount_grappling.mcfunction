# XYZ速度が一定以下になったらタグ削除
  execute as @s run function sp_weapons:motion_collector
  execute as @s if score @s sp.Xmotion matches -1000..1000 if score @s sp.Ymotion matches ..0 if score @s sp.Xmotion matches -1000..1000 run tag @a[tag=sp.grappling_mount,sort=nearest,limit=1] remove sp.grappling_mount
  execute as @s if score @s sp.Xmotion matches -1000..1000 if score @s sp.Ymotion matches ..0 if score @s sp.Xmotion matches -1000..1000 run kill @s[tag=sp.grappling_hook]
# タグがあったら削除
  execute as @a[tag=sp.grappling_dismount] at @s run kill @e[tag=sp.grappling_hook,sort=nearest,limit=1]
  execute as @a[tag=sp.grappling_dismount] run tag @s remove sp.grappling_mount
  execute as @a[tag=sp.grappling_dismount] run tag @s remove sp.grappling_dismount
# パーティクル
  execute as @a[tag=sp.grappling_mount] at @s run particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.01 1
