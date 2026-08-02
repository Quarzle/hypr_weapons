execute if score %weather variable matches 0 run tellraw @s {"text":"Summoning storms...","color":"blue"}
execute if score %weather variable matches 0 run weather thunder
execute if score %weather variable matches 1 run tellraw @s {"text":"Clearing the skies...","color":"yellow"}
execute if score %weather variable matches 1 run weather clear
scoreboard players add %weather variable 1
execute if score %weather variable matches 2.. run scoreboard players set %weather variable 0

# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={hypr-item:"storm_cloud"}] run tag @s add need_new_storm_cloud_mainhand
execute if items entity @s weapon.offhand minecraft:echo_shard[custom_data={hypr-item:"storm_cloud"}] run tag @s add need_new_storm_cloud_offhand

execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={hypr-item:"storm_cloud"}] run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:echo_shard[custom_data={hypr-item:"storm_cloud"}] run item replace entity @s weapon.offhand with air

schedule function h_weapons:replace_rci 2t

# Revoke the advancement
advancement revoke @s only h_weapons:use_weather