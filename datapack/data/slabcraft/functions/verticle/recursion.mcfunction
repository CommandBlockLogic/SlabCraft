# slabcraft:verticle/recursion

execute store result score $x scTmp run data get entity @s Pos[0] 1000
scoreboard players operation $x scTmp += @s scDeltaX
execute store result entity @s Pos[0] double 0.001 run scoreboard players get $x scTmp
execute at @s unless block ~ ~ ~ #slabcraft:through unless block ~ ~ ~ minecraft:iron_bars if score @s scDeltaX matches 1.. positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/east
execute at @s unless block ~ ~ ~ #slabcraft:through unless block ~ ~ ~ minecraft:iron_bars if score @s scDeltaX matches ..-1 positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/west
execute at @s if block ~ ~ ~ minecraft:iron_bars if score @s scDeltaX matches 1.. align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/double
execute at @s if block ~ ~ ~ minecraft:iron_bars if score @s scDeltaX matches ..-1 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/double

execute store result score $z scTmp run data get entity @s Pos[2] 1000
scoreboard players operation $z scTmp += @s scDeltaZ
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $z scTmp
execute at @s unless block ~ ~ ~ #slabcraft:through unless block ~ ~ ~ minecraft:iron_bars if score @s scDeltaZ matches 1.. positioned ~ ~ ~-1 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/south
execute at @s unless block ~ ~ ~ #slabcraft:through unless block ~ ~ ~ minecraft:iron_bars if score @s scDeltaZ matches ..-1 positioned ~ ~ ~1 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/front/north
execute at @s if block ~ ~ ~ minecraft:iron_bars if score @s scDeltaZ matches 1.. align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/double
execute at @s if block ~ ~ ~ minecraft:iron_bars if score @s scDeltaZ matches ..-1 align xyz positioned ~0.5 ~ ~0.5 run function slabcraft:verticle/set_marker/double

execute store result score $y scTmp run data get entity @s Pos[1] 1000
scoreboard players operation $y scTmp += @s scDeltaY
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $y scTmp
execute at @s unless block ~ ~ ~ #slabcraft:through if score @s scDeltaY matches 1.. positioned ~ ~-1 ~ run function slabcraft:verticle/set_marker/reach_top
execute at @s unless block ~ ~ ~ #slabcraft:through if score @s scDeltaY matches ..-1 positioned ~ ~1 ~ run function slabcraft:verticle/set_marker/on_ground

execute at @s if entity @p[tag=sc_owner,distance=..6] if block ~ ~ ~ #slabcraft:through run function slabcraft:verticle/recursion