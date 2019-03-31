# slabcraft:verticle/place

fill ~-6 ~-6 ~-6 ~6 ~6 ~6 minecraft:air replace minecraft:birch_slab

execute positioned ~ ~1.62 ~ run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:1,Tags:["sc_recursion_marker"]}
execute positioned ~ ~1.62 ~ run summon minecraft:area_effect_cloud ^ ^ ^0.01 {Duration:2,Tags:["sc_recursion_marker"]}

execute as @e[tag=sc_recursion_marker] store result score @s scDeltaX run data get entity @s Pos[0] 1000
execute as @e[tag=sc_recursion_marker] store result score @s scDeltaY run data get entity @s Pos[1] 1000
execute as @e[tag=sc_recursion_marker] store result score @s scDeltaZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=sc_recursion_marker,nbt={Duration:2},limit=1] scDeltaX -= @e[tag=sc_recursion_marker,nbt={Duration:1},limit=1] scDeltaX
scoreboard players operation @e[tag=sc_recursion_marker,nbt={Duration:2},limit=1] scDeltaY -= @e[tag=sc_recursion_marker,nbt={Duration:1},limit=1] scDeltaY
scoreboard players operation @e[tag=sc_recursion_marker,nbt={Duration:2},limit=1] scDeltaZ -= @e[tag=sc_recursion_marker,nbt={Duration:1},limit=1] scDeltaZ

tag @s add sc_owner
execute if score @s scTextureID matches 1.. as @e[tag=sc_recursion_marker,nbt={Duration:2},limit=1] at @s run function slabcraft:verticle/recursion
tag @a remove sc_owner

kill @e[tag=sc_recursion_marker]

execute unless score @s scTextureID matches 1.. run tellraw @s {"translate":"slabcraft.try_placing_slab_without_texture"}

advancement revoke @s only slabcraft:placed_verticle_slab