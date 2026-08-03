scoreboard players add %blocks_traversed variable 1

particle crit ~ ~ ~ 0.0 0.0 0.0 0 1 force

execute if block ~ ~ ~ #h_weapons:raycast_impassable run scoreboard players set %blocks_traversed variable 9999
execute if block ~ ~ ~ #h_weapons:raycast_impassable positioned ^ ^ ^-0.8 run function h_weapons:revolver/hit_block

execute as @e[distance=..2,tag=!immune,type=!#h_weapons:nonliving] run scoreboard players set %blocks_traversed variable 9999
execute at @e[distance=..2,tag=!immune,type=!#h_weapons:nonliving] run function h_weapons:revolver/hit_entity


execute if score %blocks_traversed variable matches ..70 positioned ^ ^ ^0.8 run function h_weapons:revolver/revolver_raycast