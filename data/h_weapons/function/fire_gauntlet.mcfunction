# Custom logic
teleport 0 0 0
teleport ~ ~ ~

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 1500
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz
scoreboard players set $strength player_motion.api.launch -4000
function player_motion:api/launch_looking

scoreboard players set %blocks_traversed variable 0
execute anchored eyes positioned ^ ^ ^1.5 as @s run function h_weapons:gauntlet_raycast
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["gauntlet_fire"],Duration:5,Radius:0.5f,Color:16711680}

# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:diamond_sword[custom_data={hypr-item:"gauntlet"}] run tag @s add need_new_gauntlet_mainhand
execute if items entity @s weapon.offhand minecraft:diamond_sword[custom_data={hypr-item:"gauntlet"}] run tag @s add need_new_gauntlet_offhand
schedule function h_weapons:replace_rci 1t

# Revoke the advancement
advancement revoke @s only h_weapons:fire_gauntlet