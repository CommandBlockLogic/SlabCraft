# slabcraft:tick

execute as @e[tag=sc_horizon_slab] at @s unless block ~ ~ ~ #slabcraft:horizon_slab run kill @s
execute as @e[tag=sc_verticle_slab] at @s as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_bars"}}] run data merge entity @s {Item:{id:"minecraft:birch_slab"}}
execute as @e[tag=sc_verticle_slab] at @s as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_bars"}}] run kill @s
execute as @e[tag=sc_verticle_slab] at @s as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone_slab"}}] run data merge entity @s {Item:{id:"minecraft:birch_slab"}}
execute as @e[tag=sc_verticle_slab] at @s as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone_slab"}}] run kill @s
execute as @e[tag=sc_verticle_slab] at @s unless block ~ ~ ~ minecraft:iron_bars unless block ~ ~ ~ minecraft:stone_slab run kill @s

execute as @e[tag=sc_east_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[north=true,south=true,east=true]
execute as @e[tag=sc_east_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[north=true,south=true,west=true]
execute as @e[tag=sc_west_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[north=true,south=true,west=true]
execute as @e[tag=sc_west_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[north=true,south=true,east=true]
execute as @e[tag=sc_south_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[east=true,west=true,south=true]
execute as @e[tag=sc_south_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[east=true,west=true,north=true]
execute as @e[tag=sc_north_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[east=true,west=true,north=true]
execute as @e[tag=sc_north_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:iron_bars[east=true,west=true,south=true]
execute as @e[tag=sc_double_verticle_slab] at @s run setblock ~ ~ ~ minecraft:stone_slab[type=double]

execute as @e[tag=sc_slab,nbt={Fire:1s}] run data merge entity @s {Fire:32767s}