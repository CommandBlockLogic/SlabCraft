let fs = require('fs')

let result = ''
let arr = ["acacia_log", "acacia_planks", "acacia_log", "andesite", "bedrock", "birch_log", "birch_planks", "birch_log", "black_concrete", "black_concrete_powder", "black_glazed_terracotta", "black_stained_glass", "black_terracotta", "black_wool", "blue_concrete", "blue_concrete_powder", "blue_glazed_terracotta", "blue_ice", "blue_stained_glass", "blue_terracotta", "blue_wool", "bone_block", "bookshelf", "brain_coral_block", "bricks", "brown_concrete", "brown_concrete_powder", "brown_glazed_terracotta", "brown_stained_glass", "brown_terracotta", "brown_wool", "brown_mushroom_block", "bubble_coral_block", "carved_pumpkin", "chain_command_block", "chain_command_block_conditional", "chiseled_quartz_block", "chiseled_red_sandstone", "chiseled_sandstone", "chiseled_stone_bricks", "clay", "coal_block", "coal_ore", "coarse_dirt", "cobblestone", "command_block", "command_block_conditional", "cracked_stone_bricks", "crafting_table", "cut_red_sandstone", "cut_sandstone", "cyan_concrete", "cyan_concrete_powder", "cyan_glazed_terracotta", "cyan_stained_glass", "cyan_terracotta", "cyan_wool", "dark_oak_log", "dark_oak_planks", "dark_oak_log", "dark_prismarine", "dead_brain_coral_block", "dead_bubble_coral_block", "dead_fire_coral_block", "dead_horn_coral_block", "dead_tube_coral_block", "diamond_block", "diamond_ore", "diorite", "dirt", "emerald_block", "emerald_ore", "end_stone", "end_stone_bricks", "fire_coral_block", "furnace", "glass", "glowstone", "gold_block", "gold_ore", "granite", "grass_block", "grass_path", "gravel", "gray_concrete", "gray_concrete_powder", "gray_glazed_terracotta", "gray_stained_glass", "gray_terracotta", "gray_wool", "green_concrete", "green_concrete_powder", "green_glazed_terracotta", "green_stained_glass", "green_terracotta", "green_wool", "hay_block", "horn_coral_block", "ice", "iron_block", "iron_ore", "jukebox", "jungle_log", "jungle_planks", "jungle_log", "lapis_block", "lapis_ore", "light_blue_concrete", "light_blue_concrete_powder", "light_blue_glazed_terracotta", "light_blue_stained_glass", "light_blue_terracotta", "light_blue_wool", "light_gray_concrete", "light_gray_concrete_powder", "light_gray_glazed_terracotta", "light_gray_stained_glass", "light_gray_terracotta", "light_gray_wool", "lime_concrete", "lime_concrete_powder", "lime_glazed_terracotta", "lime_stained_glass", "lime_terracotta", "lime_wool", "magenta_concrete", "magenta_concrete_powder", "magenta_glazed_terracotta", "magenta_stained_glass", "magenta_terracotta", "magenta_wool", "magma_block", "melon", "mossy_cobblestone", "mossy_stone_bricks", "nether_bricks", "netherrack", "note_block", "oak_log", "oak_planks", "oak_log", "obsidian", "orange_concrete", "orange_concrete_powder", "orange_glazed_terracotta", "orange_stained_glass", "orange_terracotta", "orange_wool", "packed_ice", "pink_concrete", "pink_concrete_powder", "pink_glazed_terracotta", "pink_stained_glass", "pink_terracotta", "pink_wool", "polished_andesite", "polished_diorite", "polished_granite", "prismarine", "prismarine_bricks", "pumpkin", "purple_concrete", "purple_concrete_powder", "purple_glazed_terracotta", "purple_stained_glass", "purple_terracotta", "purple_wool", "purpur_block", "purpur_pillar", "quartz_block", "quartz_pillar", "red_concrete", "red_concrete_powder", "red_glazed_terracotta", "red_stained_glass", "red_terracotta", "red_wool", "red_mushroom_block", "red_nether_bricks", "red_sand", "red_sandstone", "redstone_block", "redstone_lamp", "redstone_ore", "repeating_command_block", "repeating_command_block_conditional", "sand", "sandstone", "sea_lantern", "slime_block", "smooth_quartz", "smooth_red_sandstone", "smooth_sandstone", "smooth_stone", "snow_block", "soul_sand", "spawner", "sponge", "spruce_log", "spruce_planks", "spruce_log", "stone", "stone_bricks", "stripped_acacia_log", "stripped_acacia_log", "stripped_birch_log", "stripped_birch_log", "stripped_dark_oak_log", "stripped_dark_oak_log", "stripped_jungle_log", "stripped_jungle_log", "stripped_oak_log", "stripped_oak_log", "stripped_spruce_log", "stripped_spruce_log", "structure_block_corner", "structure_block_data", "structure_block_load", "structure_block_save", "tnt", "tube_coral_block", "wet_sponge", "white_concrete", "white_concrete_powder", "white_glazed_terracotta", "white_stained_glass", "white_terracotta", "white_wool", "yellow_concrete", "yellow_concrete_powder", "yellow_glazed_terracotta", "yellow_stained_glass", "yellow_terracotta", "yellow_wool"]
for (let i = 0; i < arr.length; i++) {
    const element = arr[i];
    result = `{
    "parent": "slabcraft:horizon_slab/bottom_parent",
    "textures": {
        "bottom": "minecraft:block/${element}",
        "top": "minecraft:block/${element}",
        "side": "minecraft:block/${element}"
    }
}`
    fs.writeFile(`./assets/slabcraft/models/horizon_slab/bottom/${element}.json`, result, function(){})
}