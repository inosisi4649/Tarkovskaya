# スコアボードの削除
  scoreboard objectives remove sp.reaper_use
# 防具立ての削除
  kill @e[tag=sp.reaper_point]
# タグの削除
  tag @e remove sp.reaper
  tag @e remove sp.reaper_tp
# 条件削除
  advancement revoke @s only sp_weapons:reaper