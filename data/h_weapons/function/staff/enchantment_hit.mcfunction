tag @e[distance=..3] add enchanted

playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 2 0.8

execute as @e[distance=..3] run effect give @s minecraft:saturation 2 1 true
execute as @e[distance=..3] run effect give @s minecraft:absorption 12 2 true
execute as @e[distance=..3] run effect give @s minecraft:luck 12 0 true
execute as @e[distance=..3] run effect give @s minecraft:strength 12 1 true
execute as @e[distance=..3] run attribute @s minecraft:scale modifier add enchantment_scale 1 add_multiplied_total
execute as @e[distance=..3] run attribute @s minecraft:entity_interaction_range modifier add enchantment_reach 5 add_value
execute as @e[distance=..3] run attribute @s minecraft:movement_speed modifier add enchantment_speed 0.4 add_multiplied_total
function h_weapons:effects/layer_1