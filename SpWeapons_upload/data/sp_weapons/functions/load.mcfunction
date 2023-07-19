# 導入完了
  function sp_weapons:reaper/load_reaper
  function sp_weapons:charger/load_charger
  function sp_weapons:lightningbolt/load_lightningbolt
  function sp_weapons:grappling/load_grappling
  function sp_weapons:wall/load_wall
# スコア定義
  scoreboard objectives add sp.UUID dummy
  scoreboard objectives add sp.right_click minecraft.used:carrot_on_a_stick
  scoreboard objectives add sp.Yaw dummy
  scoreboard objectives add sp.Pitch dummy
  scoreboard objectives add sp.Sneak minecraft.custom:minecraft.sneak_time
  scoreboard objectives add sp.Sneak_timer dummy
  scoreboard objectives add sp.Xmotion dummy
  scoreboard objectives add sp.Ymotion dummy
  scoreboard objectives add sp.Zmotion dummy
  scoreboard objectives add sp.Xpos dummy
  scoreboard objectives add sp.Ypos dummy
  scoreboard objectives add sp.Zpos dummy
# 導入完了
  tellraw @a ["\n----------\n\n",{"text":"SpWeapons の導入に成功しました。\nSpWeapons has been installed.\n\nCreated by "},{"text":"Syatipo","color":"gold"},"\n\n----------\n"]