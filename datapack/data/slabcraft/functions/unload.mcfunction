# slabcraft:unload

scoreboard objectives remove scTextureID
scoreboard objectives remove scIsOperated
scoreboard objectives remove scTmp

scoreboard objectives remove scDeltaX
scoreboard objectives remove scDeltaY
scoreboard objectives remove scDeltaZ

scoreboard objectives remove scConst

tellraw @a ["",{"text":"[","color":"gray"},{"text":"Slabcraft","color":"yellow"},{"text":"] ","color":"gray"},{"translate":"slabcraft.unloaded"}]