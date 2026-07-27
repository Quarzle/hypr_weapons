# Custom logic
summon mannequin

# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:carrot[custom_data={hypr-item:"super_carrot"}] run tag @s add need_new_carrot_mainhand
execute if items entity @s weapon.offhand minecraft:carrot[custom_data={hypr-item:"super_carrot"}] run tag @s add need_new_carrot_offhand
schedule function h_weapons:replace_rci 1t

# Revoke the advancement
advancement revoke @s only h_weapons:use_carrot