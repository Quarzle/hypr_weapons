time add 40s
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1 1

# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={hypr-item:"sun_dial"}] run tag @s add need_new_sun_dial_mainhand
execute if items entity @s weapon.offhand minecraft:echo_shard[custom_data={hypr-item:"sun_dial"}] run tag @s add need_new_sun_dial_offhand
schedule function h_weapons:replace_rci 2t

# Revoke the advancement
advancement revoke @s only h_weapons:use_sun