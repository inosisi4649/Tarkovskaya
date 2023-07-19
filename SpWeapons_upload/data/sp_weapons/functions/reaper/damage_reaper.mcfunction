# ダメージを与えたとき
  advancement revoke @s only sp_weapons:reaper
  effect give @s minecraft:speed 1 5 true
  execute at @s positioned ^ ^ ^1 run effect give @e[distance=..2] blindness 2 0 true
  effect clear @s blindness