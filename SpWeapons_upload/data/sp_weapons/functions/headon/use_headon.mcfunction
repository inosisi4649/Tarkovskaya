# 頭のアイテムを防具立てに避難
  summon armor_stand ~ ~ ~ {Tags:["headon"]}
  item replace entity @e[tag=headon,sort=nearest,limit=1] armor.head from entity @s armor.head
# 右手のアイテムを頭へ移動
  item replace entity @s armor.head from entity @s weapon.mainhand
# 避難したアイテムを戻して防具立てを削除
  item replace entity @s weapon.mainhand from entity @e[tag=headon,sort=nearest,limit=1] armor.head
  kill @e[tag=headon,sort=nearest,limit=1]