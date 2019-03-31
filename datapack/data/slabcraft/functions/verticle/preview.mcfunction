# slabcraft:verticle/preview

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["sc_previewer"],NoGravity:1b}

execute as @e[tag=sc_previewer] at @s run teleport @s ~ ~ ~ 0 0
execute as @e[tag=sc_previewer] at @s run function slabcraft:verticle/preview/move

kill @e[tag=sc_previewer]