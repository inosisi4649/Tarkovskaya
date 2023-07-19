execute as @s store result score @s Sellmoney run function testpack:sellitem
execute as @s[scores={Sellmoney=0}] run return 0
scoreboard players operation @s Money += @s Sellmoney
function testpack:sellall