scoreboard players add %blocks_traversed variable 1

execute if block ~ ~ ~ #h_weapons:raycast_impassable run scoreboard players set %blocks_traversed variable 9999
execute if block ~ ~ ~ #h_weapons:raycast_impassable positioned ^ ^ ^-0.9 run function h_weapons:staff/enchantment_hit

execute unless block ~ ~ ~ #h_weapons:raycast_impassable run particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0.1 1

tag @s add immune
execute if score %blocks_traversed variable matches ..68 as @e[tag=!immune, distance=..1.5] run scoreboard players set %blocks_traversed variable 4321
execute if score %blocks_traversed variable matches 4321 positioned ^ ^ ^-0.1 run function h_weapons:staff/enchantment_hit

tag @s remove immune

execute if score %blocks_traversed variable matches ..68 positioned ^ ^ ^0.9 as @s run function h_weapons:staff/hit_block_raycast