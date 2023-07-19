# 各ダメージでの弾丸呼び出し スニークによる目線高変動はそれっぽく修正する(Y軸 +0.37)
  tag @s add sp.charger_fire
  execute if score @s sp.charger_damage matches 1 at @s anchored eyes positioned ^ ^ ^ positioned ~-0.05 ~0.32 ~-0.05 run function sp_weapons:charger/shot_1_charger
  execute if score @s sp.charger_damage matches 2 at @s anchored eyes positioned ^ ^ ^ positioned ~-0.05 ~0.32 ~-0.05 run function sp_weapons:charger/shot_2_charger
  execute if score @s sp.charger_damage matches 3 at @s anchored eyes positioned ^ ^ ^ positioned ~-0.05 ~0.32 ~-0.05 run function sp_weapons:charger/shot_3_charger
  execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 3 2
# 必要条件のリセット
  scoreboard players set @s sp.charger_charge 0
  scoreboard players set @s sp.charger_damage 0
  tag @s remove sp.charger_fire
