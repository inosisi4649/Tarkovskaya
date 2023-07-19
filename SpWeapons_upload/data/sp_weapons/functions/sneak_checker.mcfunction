#スニーク時間の取得
  scoreboard players add @e[scores={sp.Sneak=1..}] sp.Sneak_timer 1
  execute as @e if score @s sp.Sneak < @s sp.Sneak_timer run scoreboard players set @s sp.Sneak 0
  scoreboard players reset @e[scores={sp.Sneak=0}] sp.Sneak_timer
