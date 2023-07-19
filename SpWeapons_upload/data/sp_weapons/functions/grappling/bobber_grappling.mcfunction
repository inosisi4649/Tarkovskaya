# 浮きの確認
  execute as @e[tag=sp.grappling] run tag @s add sp.grappling_check
  function sp_weapons:grappling/check_grappling
  execute as @e[tag=sp.grappling_check] run tag @s remove sp.grappling_check
  execute as @e[tag=sp.grappling_checked] run function sp_weapons:pos_collector
  execute as @a[tag=sp.grappling_used] run function sp_weapons:pos_collector
  scoreboard players operation $sp.grappling sp.Xpos = @e[tag=sp.grappling_checked,sort=nearest,limit=1] sp.Xpos
  scoreboard players operation $sp.grappling sp.Ypos = @e[tag=sp.grappling_checked,sort=nearest,limit=1] sp.Ypos
  scoreboard players operation $sp.grappling sp.Zpos = @e[tag=sp.grappling_checked,sort=nearest,limit=1] sp.Zpos
  execute as @s[tag=!sp.grappling_used] run function sp_weapons:grappling/jump_grappling
  execute as @e[tag=sp.grappling_checked] run tag @s remove sp.grappling_checked
  tag @s remove sp.grappling_used