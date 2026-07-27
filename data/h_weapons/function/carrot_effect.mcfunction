# Custom logic
summon mannequin ~1 ~ ~ {profile: {model:"wide",texture:"entity/player/carrot_skin"},Tags:["carrot_warrior"],Health:10.0}
summon mannequin ~-1 ~ ~ {profile: {model:"wide",texture:"entity/player/carrot_skin"},Tags:["carrot_warrior"],Health:10.0}
summon mannequin ~ ~ ~1 {profile: {model:"wide",texture:"entity/player/carrot_skin"},Tags:["carrot_warrior"],Health:10.0}
summon mannequin ~ ~ ~-1 {profile: {model:"wide",texture:"entity/player/carrot_skin"},Tags:["carrot_warrior"],Health:10.0}

scoreboard players set %aggro_time variable 200
tag @s add carrot_warrior
tag @a[tag=carrot_targeted] remove carrot_targeted

scoreboard players set %blocks_traversed variable 0
function h_weapons:closest_non_carrot_entity_raycast

# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:carrot[custom_data={hypr-item:"super_carrot"}] run tag @s add need_new_carrot_mainhand
execute if items entity @s weapon.offhand minecraft:carrot[custom_data={hypr-item:"super_carrot"}] run tag @s add need_new_carrot_offhand
schedule function h_weapons:replace_rci 2t

# Revoke the advancement
advancement revoke @s only h_weapons:use_carrot