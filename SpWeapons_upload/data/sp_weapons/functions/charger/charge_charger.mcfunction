# チャージ管理
  scoreboard players add @s sp.charger_charge 1
  advancement revoke @s only sp_weapons:charger
  scoreboard players set @s sp.charger_timer 0
  function sp_weapons:charger/title_charger
# チャージ量に応じてダメージ変更
  execute if score @s sp.charger_charge matches 15..29 run scoreboard players set @s sp.charger_damage 1
  execute if score @s sp.charger_charge matches 30..49 run scoreboard players set @s sp.charger_damage 2
  execute if score @s sp.charger_charge matches 50.. run scoreboard players set @s sp.charger_damage 3
# チャージ音
  execute if score @s sp.charger_charge matches 15 run execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 1.5
  execute if score @s sp.charger_charge matches 30 run execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 1.8
  execute if score @s sp.charger_charge matches 50 run execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 2
# 発射
  execute if score @s sp.charger_damage matches 1.. if score @s sp.Sneak matches 1.. run function sp_weapons:charger/fire_charger
  execute as @e[tag=sp.hit] run tag @s remove sp.hit
