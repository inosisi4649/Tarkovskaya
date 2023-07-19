# スコアボードの削除
  scoreboard objectives remove sp.UUID
  scoreboard objectives remove sp.right_click
  scoreboard objectives remove sp.Yaw
  scoreboard objectives remove sp.Pitch
  scoreboard objectives remove sp.Sneak
  scoreboard objectives remove sp.Sneak_timer
  scoreboard objectives remove sp.Xmotion
  scoreboard objectives remove sp.Ymotion
  scoreboard objectives remove sp.Zmotion
  scoreboard objectives remove sp.Xpos 
  scoreboard objectives remove sp.Ypos 
  scoreboard objectives remove sp.Zpos 
# 各要素の削除
  function sp_weapons:reaper/reset_reaper
  function sp_weapons:charger/reset_charger
  function sp_weapons:lightningbolt/reset_lightningbolt
  function sp_weapons:warpball/reset_warpball
  function sp_weapons:grappling/reset_grappling
  function sp_weapons:wall/reset_wall