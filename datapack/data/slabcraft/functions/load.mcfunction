# slabcraft:load

scoreboard objectives add scTextureID dummy "[slabcraft] 台阶材质ID"
scoreboard objectives add scIsOperated dummy "[slabcraft] 已放置"
scoreboard objectives add scTmp dummy "[slabcraft] 临时"

scoreboard objectives add scDeltaX dummy "[slabcraft] X 坐标变换量"
scoreboard objectives add scDeltaY dummy "[slabcraft] Y 坐标变换量"
scoreboard objectives add scDeltaZ dummy "[slabcraft] Z 坐标变换量"

scoreboard objectives add scConst dummy "常数"
scoreboard players set 16 scConst 16
scoreboard players set 1000 scConst 1000

tellraw @a ["",{"text":"[","color":"gray"},{"text":"Slabcraft","color":"yellow"},{"text":"] ","color":"gray"},{"translate":"slabcraft.loaded"}]

execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sc_tester"],Duration:1}
execute unless entity @e[tag=sc_tester] run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Slabcraft","color":"yellow"},{"text":"] ","color":"gray"},{"translate":"slabcraft.forceload"}]
kill @e[tag=sc_tester]