# マーカーと防具立ての削除
  kill @e[tag=sp.warpball_shot]
  kill @e[tag=sp.warpball_end]
# タグの削除
  tag @e remove sp.warpball
  tag @s remove sp.warpball_origin
# 条件削除
  advancement revoke @s only sp_weapons:reaper