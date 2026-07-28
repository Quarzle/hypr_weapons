scoreboard players add %blocks_traversed variable 1

execute as @e[limit=1,distance=..4,tag=!carrot_warrior,sort=nearest,type=!mannequin,type=!#minecraft:arrows,type=!item,type=!item_frame,type=!glow_item_frame] run scoreboard players set %blocks_traversed variable 9999
execute as @e[limit=1,distance=..4,tag=!carrot_warrior,sort=nearest,type=!mannequin,type=!#minecraft:arrows,type=!item,type=!item_frame,type=!glow_item_frame] run tag @s add carrot_targeted
execute as @e[limit=1,distance=..4,tag=!carrot_warrior,sort=nearest,type=!mannequin,type=!#minecraft:arrows,type=!item,type=!item_frame,type=!glow_item_frame] at @s run particle minecraft:flame ~ ~2 ~ 0.2 0.2 0.2 0.05 12

execute if score %blocks_traversed variable matches ..68 positioned ^ ^ ^0.9 run function h_weapons:closest_non_carrot_entity_raycast