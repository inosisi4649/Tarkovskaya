# 最寄りのマーカーの記憶UUIDを照合して合ってたらTP呼び出し
  execute as @a at @s if predicate sp_weapons:warpball if score @s sp.Sneak matches 1.. if score @s sp.UUID = @e[tag=sp.warpball_search,sort=nearest,limit=1] sp.UUID run function sp_weapons:warpball/end_warpball
# 違ったら最寄りのマーカーをサーチから外して再帰
  execute as @e[tag=sp.warpball_search,sort=nearest,limit=1] run tag @s remove sp.warpball_search
  execute as @e[tag=sp.warpball_search] run function sp_weapons:warpball/tp_warpball