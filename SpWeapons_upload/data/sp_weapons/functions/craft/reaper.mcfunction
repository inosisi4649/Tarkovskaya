# まぁまずはアイテムが必要であろう
  function sp_weapons:reaper/give_reaper
# 次回以降も実行するためにレシピ没収
  recipe take @s sp_weapons:reaper
# なんだこのチェストは！消えてもらおう
  clear @s chest 1
# 進捗消去
  advancement revoke @s only sp_weapons:craft/reaper