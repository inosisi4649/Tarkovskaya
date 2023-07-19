# 使用していない時間の管理
  execute as @a run scoreboard players add @s sp.charger_timer 1
  execute if score @s sp.charger_timer matches 5.. run scoreboard players set @s sp.charger_charge 0