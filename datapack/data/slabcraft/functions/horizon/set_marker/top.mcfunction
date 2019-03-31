# slabcraft:horizon/set_marker/top

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_slab","sc_horizon_slab","sc_top_horizon_slab","sc_new_summoned"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:diamond_sword",tag:{Damage:1s,Unbreakable:1b,BlockStates:["type=top"]}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b,Fire:32767s}

scoreboard players operation $damage scTmp = @s scTextureID
scoreboard players add $damage scTmp 300
execute store result entity @e[tag=sc_new_summoned,limit=1] ArmorItems[3].tag.Damage short 1 run scoreboard players get $damage scTmp

tag @e remove sc_new_summoned

scoreboard players set @s scIsOperated 1