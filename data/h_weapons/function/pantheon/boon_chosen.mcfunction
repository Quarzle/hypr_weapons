execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s positioned ~-3.5 ~-1 ~ run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s positioned ~-3.5 ~-1 ~ run loot spawn ~ ~2 ~ loot h_weapons:pantheon/hestia
execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s positioned ~3.5 ~-1 ~ run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s positioned ~3.5 ~-1 ~ run loot spawn ~ ~2 ~ loot h_weapons:pantheon/dionysus
execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]
