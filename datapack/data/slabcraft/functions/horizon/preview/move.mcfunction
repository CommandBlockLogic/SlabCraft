# slabcraft:horizon/preview/move

scoreboard players add @s scTextureID 1

setblock ~ ~ ~ minecraft:stone_slab[type=bottom]
function slabcraft:horizon/set_marker

scoreboard players set @s scIsOperated 0

# setblock ~ ~1 ~ minecraft:sign{Text2:"{\"score\":{\"name\":\"@e[limit=1,tag=sc_previewer]\",\"objective\":\"scTextureID\"}}"}

teleport @s ^ ^ ^1

scoreboard players operation $turn scTmp = @s scTextureID
scoreboard players operation $turn scTmp %= 16 scConst
execute if score $turn scTmp matches 0 run teleport @s ~1 ~ ~ ~180 ~

execute if score @s scTextureID matches ..233 at @s run function slabcraft:horizon/preview/move