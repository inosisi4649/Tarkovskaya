# まぁまずはアイテムが必要であろう
  function sp_weapons:headon/give_headon
# 次回以降も実行するためにレシピ没収
  recipe take @s sp_weapons:headon
# なんだこのチェストは！消えてもらおう
  clear @s chest 1
# 進捗消去
  advancement revoke @s only sp_weapons:craft/headon