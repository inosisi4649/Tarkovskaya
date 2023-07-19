# 最寄りの防具立ての記憶UUIDを照合して合ってたらTP呼び出し
  execute as @a[tag=sp.reaper_tp] if score @s sp.UUID = @e[tag=sp.reaper_search,sort=nearest,limit=1] sp.UUID run function sp_weapons:reaper/end_reaper
# 違ったら最寄りの防具立てをサーチから外して再帰
  execute as @e[tag=sp.reaper_search,sort=nearest,limit=1] run tag @s remove sp.reaper_search
  execute as @e[tag=sp.reaper_search] run function sp_weapons:reaper/tp_reaper