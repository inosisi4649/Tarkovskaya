# すでに乗っていたら先に降ろす
  execute as @s[tag=sp.grappling_mount] run tag @s add sp.grappling_dismount
  execute as @s[tag=sp.grappling_mount] run function sp_weapons:grappling/mount_grappling
# 乗り物用意
  tag @s remove sp.grappling_use
  scoreboard players set @s sp.grappling_use 0
  execute at @s run summon minecraft:armor_stand ~ ~ ~ {Silent:true,Invisible:true,Invulnerable:true,Tags:["sp.grappling_hook"],Attributes:[{Name:"generic.max_health",Base:0.1d}],Health:0.1f}
  ride @s mount @e[tag=sp.grappling_hook,sort=nearest,limit=1]
# 相対座標を作成
  scoreboard players operation $sp.grappling sp.Xpos -= @s sp.Xpos
  scoreboard players operation $sp.grappling sp.Ypos -= @s sp.Ypos
  scoreboard players operation $sp.grappling sp.Zpos -= @s sp.Zpos
# Y座標は一定以下で制限(8ブロック相当)
  scoreboard players set @s sp.Ypos 8000
  scoreboard players operation $sp.grappling sp.Ypos < @s sp.Ypos
# 相対座標をベクトルMotionにしてジャンプ!!
  execute as @e[tag=sp.grappling_hook] store result entity @s Motion[0] double 0.0003 run scoreboard players get $sp.grappling sp.Xpos
  execute as @e[tag=sp.grappling_hook] store result entity @s Motion[1] double 0.0003 run scoreboard players get $sp.grappling sp.Ypos
  execute as @e[tag=sp.grappling_hook] store result entity @s Motion[2] double 0.0003 run scoreboard players get $sp.grappling sp.Zpos
  tag @s add sp.grappling_mount