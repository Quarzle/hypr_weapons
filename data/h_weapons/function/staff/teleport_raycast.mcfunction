scoreboard players add %blocks_traversed variable 1

execute if block ~ ~ ~ #h_weapons:raycast_impassable run scoreboard players set %blocks_traversed variable 9999
execute if block ~ ~ ~ #h_weapons:raycast_impassable positioned ^ ^ ^-0.9 run tp @s ~ ~ ~
execute if block ~ ~ ~ #h_weapons:raycast_impassable positioned ^ ^ ^-0.9 run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 8
execute if block ~ ~ ~ #h_weapons:raycast_impassable positioned ^ ^ ^-0.9 run playsound entity.enderman.teleport player @a ~ ~ ~ 0.5 0.8


execute if score %blocks_traversed variable matches ..68 positioned ^ ^ ^0.9 as @s run function h_weapons:staff/teleport_raycast