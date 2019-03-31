# slabcraft:horizon/place

scoreboard players set @s scIsOperated 0

execute positioned ~ ~1.62 ~ run function slabcraft:horizon/recursion

execute unless score @s scTextureID matches 1.. run tellraw @s {"translate":"slabcraft.try_placing_slab_without_texture"}

advancement revoke @s only slabcraft:placed_horizon_slab