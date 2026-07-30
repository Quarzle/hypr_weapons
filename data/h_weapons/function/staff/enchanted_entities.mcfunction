execute at @e[tag=enchanted] positioned ~ ~0.1 ~ run function h_weapons:effects/layer_1
execute as @e[tag=enchanted,nbt=!{active_effects:[{id:"minecraft:luck"}]}] run attribute @s minecraft:scale modifier remove enchantment_scale
execute as @e[tag=enchanted,nbt=!{active_effects:[{id:"minecraft:luck"}]}] run attribute @s minecraft:entity_interaction_range modifier remove enchantment_reach
execute as @e[tag=enchanted,nbt=!{active_effects:[{id:"minecraft:luck"}]}] run tag @s remove enchanted
