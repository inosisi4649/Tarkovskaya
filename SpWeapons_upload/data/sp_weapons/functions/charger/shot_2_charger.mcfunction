# 当たり判定
  execute as @e[tag=!sp.hit,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.4 ~1.5 ~0.4 unless entity @s[dx=0] run playsound minecraft:entity.experience_orb.pickup player @a[tag=sp.charger_fire] ^ ^ ^0.2 0.4 0.8 0.4
  execute as @e[tag=!sp.hit,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run damage @s 8 minecraft:arrow by @a[tag=sp.charger_fire,limit=1]
  execute as @e[tag=!sp.hit,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.4 ~1.5 ~0.4 unless entity @s[dx=0] run damage @s 14 minecraft:arrow by @a[tag=sp.charger_fire,limit=1]
  execute as @e[tag=!sp.hit,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run tag @s add sp.hit
# 壁に衝突しないとき再帰処理
  execute if block ~0.05 ~0.02 ~0.05 #sp_weapons:no_collision run execute positioned ^ ^ ^0.1 if entity @s[distance=..160] run function sp_weapons:charger/shot_2_charger
# 壁に衝突
  execute unless block ~0.05 ~0.02 ~0.05 #sp_weapons:no_collision run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 1.25
# パーティクル
  particle minecraft:crit ~0.05 ~0.05 ~0.05
  