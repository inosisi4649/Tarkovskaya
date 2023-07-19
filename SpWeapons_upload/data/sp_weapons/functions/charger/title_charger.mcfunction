# チャージ量表示
  title @s[scores={sp.charger_charge=0..14}] actionbar {"text":"|     |","color":"gray"}
  title @s[scores={sp.charger_charge=15..29}] actionbar {"text":"| ■   |","color":"red"}
  title @s[scores={sp.charger_charge=30..49}] actionbar {"text":"| ■■  |","color":"red"}
  title @s[scores={sp.charger_charge=50..}] actionbar {"text":"| ■■■ |","color":"dark_red"}
  execute as @s[tag=!sp.charger_found] at @s if predicate sp_weapons:charger_digital run title @s title {"text":""}
  execute as @s[tag=!sp.charger_found] at @s if predicate sp_weapons:charger_digital run title @s subtitle {"text":"Enemy Found","color":"dark_red"}
  execute as @s[tag=!sp.charger_found] at @s if predicate sp_weapons:charger_digital run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.2
  execute as @s[tag=!sp.charger_found] at @s if predicate sp_weapons:charger_digital run tag @s add sp.charger_found
  execute as @s at @s unless predicate sp_weapons:charger_digital run tag @s remove sp.charger_found
