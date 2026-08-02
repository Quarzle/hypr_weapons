effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:speed 2 11 true
effect give @s minecraft:saturation 2 0 true
effect give @s minecraft:fire_resistance 12 0 true
gamemode creative @s


attribute @s minecraft:step_height modifier add lr_step 3 add_multiplied_base
scoreboard players set @s lightning_rush_counter 38

# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={hypr-item:"lightning_rush"}] run tag @s add need_new_lightning_rush_mainhand
execute if items entity @s weapon.offhand minecraft:echo_shard[custom_data={hypr-item:"lightning_rush"}] run tag @s add need_new_lightning_rush_offhand

execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={hypr-item:"lightning_rush"}] run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:echo_shard[custom_data={hypr-item:"lightning_rush"}] run item replace entity @s weapon.offhand with air

schedule function h_weapons:replace_rci 2t

# Revoke the advancement
advancement revoke @s only h_weapons:use_lightning_rush