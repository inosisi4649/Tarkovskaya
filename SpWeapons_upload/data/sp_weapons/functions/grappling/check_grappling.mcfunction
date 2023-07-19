# 最寄りの防具立ての記憶UUIDを照合して合ってたらTP呼び出し
  execute as @a[tag=sp.grappling_use] if score @s sp.UUID = @e[tag=sp.grappling_check,sort=nearest,limit=1] sp.UUID run function sp_weapons:grappling/checked_grappling
# 違ったら最寄りの防具立てをサーチから外して再帰
  execute as @e[tag=sp.grappling_check,sort=nearest,limit=1] run tag @s remove sp.grappling_check
  execute as @e[tag=sp.grappling_check] run function sp_weapons:grappling/check_grappling