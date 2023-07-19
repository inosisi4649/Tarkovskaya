# 誰の首の方向を取得するかの検索
  execute as @a[tag=sp.warpball_origin] at @s if score @s sp.UUID = @e[tag=sp.warpball_move,sort=nearest,limit=1] sp.UUID run function sp_weapons:warpball/move_end_warpball
# 違ったら最寄りのマーカーをサーチから外して再帰
  execute as @e[tag=sp.warpball_move,sort=nearest,limit=1] run tag @s remove sp.warpball_move
  execute as @e[tag=sp.warpball_move] run function sp_weapons:warpball/move_select_warpball