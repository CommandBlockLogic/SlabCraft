# slabcraft:verticle/set_marker/front/east

summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_verticle_slab","sc_front_verticle_slab","sc_east_verticle_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s,Rotation:[270f,0f]}
setblock ~ ~ ~ minecraft:iron_bars[north=true,south=true,east=true]

scoreboard players operation $damage scTmp = @e[tag=sc_owner] scTextureID
scoreboard players add $damage scTmp 600
execute store result entity @e[tag=sc_new_summoned,limit=1] ArmorItems[3].tag.Damage short 1 run scoreboard players get $damage scTmp

tag @e remove sc_new_summoned

scoreboard players set @s scDeltaX 0
scoreboard players set @s scDeltaY 0
scoreboard players set @s scDeltaZ 0