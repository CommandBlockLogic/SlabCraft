# slabcraft:verticle/set_marker/double

execute if entity @e[distance=..0.5,tag=sc_east_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_back_verticle_slab","sc_east_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[270f,0f]}
execute if entity @e[distance=..0.5,tag=sc_east_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_front_verticle_slab","sc_east_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[270f,0f]}
execute if entity @e[distance=..0.5,tag=sc_west_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_back_verticle_slab","sc_west_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[90f,0f]}
execute if entity @e[distance=..0.5,tag=sc_west_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_front_verticle_slab","sc_west_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[90f,0f]}
execute if entity @e[distance=..0.5,tag=sc_south_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_back_verticle_slab","sc_south_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[0f,0f]}
execute if entity @e[distance=..0.5,tag=sc_south_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_front_verticle_slab","sc_south_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[0f,0f]}
execute if entity @e[distance=..0.5,tag=sc_north_verticle_slab,tag=sc_front_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_back_verticle_slab","sc_north_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[180f,0f]}
execute if entity @e[distance=..0.5,tag=sc_north_verticle_slab,tag=sc_back_verticle_slab,tag=!sc_new_summoned] run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_front_verticle_slab","sc_north_verticle_slab","sc_double_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[180f,0f]}

scoreboard players operation $damage scTmp = @e[tag=sc_owner] scTextureID
execute if entity @e[tag=sc_new_summoned,tag=sc_front_verticle_slab] run scoreboard players add $damage scTmp 600
execute if entity @e[tag=sc_new_summoned,tag=sc_back_verticle_slab] run scoreboard players add $damage scTmp 900
execute store result entity @e[tag=sc_new_summoned,limit=1] ArmorItems[3].tag.Damage short 1 run scoreboard players get $damage scTmp

tag @e[distance=..0.5] add sc_double_verticle_slab

tag @e remove sc_new_summoned

scoreboard players set @s scDeltaX 0
scoreboard players set @s scDeltaY 0
scoreboard players set @s scDeltaZ 0