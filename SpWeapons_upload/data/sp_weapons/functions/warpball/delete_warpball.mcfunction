# 最寄りのマーカーの記憶UUIDを照合して合ってたらTP呼び出し
  execute if score @s sp.UUID = @e[tag=sp.warpball_delete,sort=nearest,limit=1] sp.UUID run function sp_weapons:warpball/delete_end_warpball
# 違ったら最寄りのマーカーをサーチから外して再帰
  execute as @e[tag=sp.warpball_delete,sort=nearest,limit=1] run tag @s remove sp.warpball_delete
  execute as @e[tag=sp.warpball_delete] run function sp_weapons:warpball/delete_warpball