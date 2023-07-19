### 常時実行function

# メイン
  function sp_weapons:sneak_checker
# テストコード
  function sp_weapons:test_tick
# リーパー
  execute as @a at @s if predicate sp_weapons:reaper run function sp_weapons:reaper/switch_reaper
  execute as @e[tag=sp.reaper_point] at @s run function sp_weapons:reaper/particle_reaper
# チャージャー
  execute as @a if score @s sp.charger_timer matches ..4 run function sp_weapons:charger/timer_charger
# 被る君
  execute as @a at @s if predicate sp_weapons:headon run function sp_weapons:headon/use_headon
  execute as @a at @s if predicate sp_weapons:headon_c run function sp_weapons:headon/use_c_headon
# 雷鳴槍
  function sp_weapons:lightningbolt/fastbolt_lightningbolt
# ワープボール
  execute as @a at @s if predicate sp_weapons:warpball if score @s sp.right_click matches 1.. run function sp_weapons:warpball/shot_warpball
  execute as @a if predicate sp_weapons:warpball if score @s sp.Sneak matches 1.. run execute as @e[tag=sp.warpball_shot] run tag @s add sp.warpball_search
  execute as @a at @s if predicate sp_weapons:warpball if score @s sp.Sneak matches 1.. run function sp_weapons:warpball/tp_warpball
  execute as @a at @s if predicate sp_weapons:warpball run function sp_weapons:warpball/move_warpball
  execute as @a at @s unless predicate sp_weapons:warpball run execute as @e[tag=sp.warpball_shot] run tag @s add sp.warpball_delete
  execute as @a at @s unless predicate sp_weapons:warpball run function sp_weapons:warpball/delete_warpball
# グラップリングフック
  execute as @a[tag=!sp.grappling_use] at @s if predicate sp_weapons:grappling if score @s sp.grappling_use matches 1.. run function sp_weapons:grappling/use_grappling
  execute as @a at @s unless predicate sp_weapons:grappling if score @s sp.grappling_use matches 1.. run function sp_weapons:grappling/delete_grappling
  execute as @a if score @s sp.grappling_use matches 1.. run function sp_weapons:grappling/bobber_grappling
  execute as @e[tag=sp.grappling_hook] at @s run function sp_weapons:grappling/mount_grappling
# 壁
  execute as @a[tag=!sp.wall] at @s if predicate sp_weapons:wall run function sp_weapons:wall/make_wall
  execute as @a[tag=sp.wall] at @s if score $timer sp.wall_timer matches 0 run function sp_weapons:wall/break_wall
  scoreboard players set $timer sp.wall_timer 0
# 数値リセット
  scoreboard players set @e[scores={sp.right_click=1..}] sp.right_click 0