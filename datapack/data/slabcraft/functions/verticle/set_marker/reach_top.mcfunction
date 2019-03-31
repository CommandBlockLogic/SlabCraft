# slabcraft:verticle/set_marker/reach_top

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sc_tester"],Duration:1}

execute as @e[tag=sc_tester] store result score $x scTmp run data get entity @s Pos[0] 1000
execute as @e[tag=sc_tester] store result score $y scTmp run data get entity @s Pos[1] 1000
execute as @e[tag=sc_tester] store result score $z scTmp run data get entity @s Pos[2] 1000

scoreboard players operation $x scTmp %= 1000 scConst
scoreboard players operation $y scTmp %= 1000 scConst
scoreboard players operation $z scTmp %= 1000 scConst

execute if entity @e[tag=sc_owner,y_rotation=-44.99..45] if score $z scTmp matches 501..999 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/south
execute if entity @e[tag=sc_owner,y_rotation=-44.99..45] if score $z scTmp matches -499..0 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/south
execute if entity @e[tag=sc_owner,y_rotation=-44.99..45] if score $z scTmp matches 1..500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/south
execute if entity @e[tag=sc_owner,y_rotation=-44.99..45] if score $z scTmp matches -999..-500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/south

execute if entity @e[tag=sc_owner,y_rotation=45.01..135] if score $x scTmp matches 501..999 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/west
execute if entity @e[tag=sc_owner,y_rotation=45.01..135] if score $x scTmp matches -499..0 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/west
execute if entity @e[tag=sc_owner,y_rotation=45.01..135] if score $x scTmp matches 1..500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/west
execute if entity @e[tag=sc_owner,y_rotation=45.01..135] if score $x scTmp matches -999..-500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/west

execute if entity @e[tag=sc_owner,y_rotation=135.01..225] if score $z scTmp matches 501..999 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/north
execute if entity @e[tag=sc_owner,y_rotation=135.01..225] if score $z scTmp matches -499..0 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/north
execute if entity @e[tag=sc_owner,y_rotation=135.01..225] if score $z scTmp matches 1..500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/north
execute if entity @e[tag=sc_owner,y_rotation=135.01..225] if score $z scTmp matches -999..-500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/north

execute if entity @e[tag=sc_owner,y_rotation=225.01..315] if score $x scTmp matches 501..999 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/east
execute if entity @e[tag=sc_owner,y_rotation=225.01..315] if score $x scTmp matches -499..0 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/east
execute if entity @e[tag=sc_owner,y_rotation=225.01..315] if score $x scTmp matches 1..500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/east
execute if entity @e[tag=sc_owner,y_rotation=225.01..315] if score $x scTmp matches -999..-500 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/back/east

kill @e[tag=sc_tester]

scoreboard players set @s scDeltaX 0
scoreboard players set @s scDeltaY 0
scoreboard players set @s scDeltaZ 0