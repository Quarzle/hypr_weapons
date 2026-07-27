scoreboard players add %blocks_traversed variable 1

execute unless block ~ ~ ~ #air run scoreboard players set %blocks_traversed variable 9999
execute unless block ~ ~ ~ #air positioned ^ ^ ^-0.9 run summon tnt ~ ~ ~ {fuse:0, explosion_power:3.5}

execute if block ~ ~ ~ #air run particle explosion ~ ~ ~ 0.1 0.1 0.1 0.01 1 force
execute if block ~ ~ ~ #air run particle flame ~ ~ ~ 0 0 0 0.01 1 force


execute if score %blocks_traversed variable matches ..68 positioned ^ ^ ^0.9 run function h_weapons:gauntlet_raycast