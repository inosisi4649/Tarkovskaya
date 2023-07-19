# まぁまずはアイテムが必要であろう
  function sp_weapons:charger/give_digital_charger
# 次回以降も実行するためにレシピ没収
  recipe take @s sp_weapons:charger_digital
# なんだこのチェストは！消えてもらおう
  clear @s chest 1
# 進捗消去
  advancement revoke @s only sp_weapons:craft/charger_digital