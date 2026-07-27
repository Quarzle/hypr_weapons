scoreboard players set %solved variable 0
execute at @s if block ~ ~-0.1 ~ #air run tp @s ~ ~-0.1 ~
execute at @s unless block ~ ~-0.1 ~ #air run scoreboard players set %solved variable 1

execute at @s unless block ~ ~0.1 ~ #air run scoreboard players set %solved variable 0
execute at @s unless block ~ ~0.1 ~ #air run tp @s ~ ~0.1 ~

execute if score %solved variable matches 0 run function h_weapons:mannequin_physics


# Should work in 26.3

# scoreboard players set %solved variable 0
# execute at @s unless block ~ ~-0.1 ~ #blocks_motion run tp @s ~ ~-0.1 ~
# execute at @s if block ~ ~-0.1 ~ #blocks_motion run scoreboard players set %solved variable 1

# execute at @s if block ~ ~0.1 ~ #blocks_motion run scoreboard players set %solved variable 0
# execute at @s if block ~ ~0.1 ~ #blocks_motion run tp @s ~ ~0.1 ~

# execute if score %solved variable matches 0 run function h_weapons:mannequin_physics