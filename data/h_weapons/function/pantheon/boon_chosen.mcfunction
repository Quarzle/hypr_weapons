execute as @e[type=interaction,tag=boon_choice] if data entity @s interaction at @s run swing @p mainhand

execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s positioned ~-3.5 ~-1 ~ run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/hestia
execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s run particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 32
execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=hestia] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s positioned ~3.5 ~-1 ~ run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/dionysus
execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s run particle dust{color:3997748, scale:0.9} ~ ~ ~ 0.3 0.3 0.3 0.1 32
execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=dionysus] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=poseidon] if data entity @s interaction at @s positioned ~ ~-1 ~-3.5 run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=poseidon] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/poseidon
execute as @e[type=interaction,tag=boon_choice,tag=poseidon] if data entity @s interaction at @s run particle splash ~ ~ ~ 0.3 0.3 0.3 0.1 32
execute as @e[type=interaction,tag=boon_choice,tag=poseidon] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=poseidon] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=hermes] if data entity @s interaction at @s positioned ~ ~-1 ~3.5 run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=hermes] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/hermes
execute as @e[type=interaction,tag=boon_choice,tag=hermes] if data entity @s interaction at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 32
execute as @e[type=interaction,tag=boon_choice,tag=hermes] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=hermes] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=apollo] if data entity @s interaction at @s positioned ~-2.5 ~-1 ~-2.5 run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=apollo] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/apollo
execute as @e[type=interaction,tag=boon_choice,tag=apollo] if data entity @s interaction at @s run particle effect{color:14852622} ~ ~ ~ 0.3 0.3 0.3 0.1 32
execute as @e[type=interaction,tag=boon_choice,tag=apollo] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=apollo] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=zeus] if data entity @s interaction at @s positioned ~-2.5 ~-1 ~2.5 run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=zeus] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/zeus
execute as @e[type=interaction,tag=boon_choice,tag=zeus] if data entity @s interaction at @s run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.1 32
execute as @e[type=interaction,tag=boon_choice,tag=zeus] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=zeus] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]

execute as @e[type=interaction,tag=boon_choice,tag=ares] if data entity @s interaction at @s positioned ~2.5 ~-1 ~-2.5 run function h_weapons:effects/flash
execute as @e[type=interaction,tag=boon_choice,tag=ares] if data entity @s interaction at @s run loot spawn ~ ~ ~ loot h_weapons:pantheon/ares
execute as @e[type=interaction,tag=boon_choice,tag=ares] if data entity @s interaction at @s run particle minecraft:crimson_spore ~ ~ ~ 0.3 0.3 0.3 0.1 128
execute as @e[type=interaction,tag=boon_choice,tag=ares] if data entity @s interaction at @s run tag @e[distance=..12,type=marker,tag=used] remove used
execute as @e[type=interaction,tag=boon_choice,tag=ares] if data entity @s interaction at @s run kill @e[distance=..12,tag=boon_choice]
