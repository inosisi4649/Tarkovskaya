# どっかーん!
  execute as @e[tag=sp.warpball_delete,sort=nearest,limit=1] at @s run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b,Silent:1b,Invisible:true,CustomName:'{"text":"Warplosion","color":"dark_purple","bold":true,"italic":false}'}
# 弾削除
  execute as @e[tag=sp.warpball_delete,sort=nearest,limit=1] at @s run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 1.25
  execute as @s at @s run kill @e[tag=sp.warpball_delete,sort=nearest,limit=1]
# 弾削除の後処理
  execute as @e[tag=sp.warpball_delete] run tag @s remove sp.warpball_delete
  tag @s remove sp.warpball