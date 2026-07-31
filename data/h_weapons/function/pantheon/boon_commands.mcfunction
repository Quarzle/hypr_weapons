execute as @a[predicate=h_weapons:is_on_ground,predicate=h_weapons:is_sneaking] if items entity @s weapon.mainhand minecraft:trident[custom_data={"hypr-item":"p_trident"}] at @s unless block ~ ~0.1 ~ #h_weapons:irreplaceable run summon marker ~ ~ ~ {Tags:["water_holder"]}
execute as @a[predicate=h_weapons:is_on_ground,predicate=h_weapons:is_sneaking] if items entity @s weapon.mainhand minecraft:trident[custom_data={"hypr-item":"p_trident"}] at @s unless block ~ ~0.1 ~ #h_weapons:irreplaceable run setblock ~ ~0.1 ~ water
execute as @e[tag=water_holder,type=marker] at @s unless entity @a[distance=..1.5] run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 air replace water
execute as @e[tag=water_holder,type=marker] at @s unless entity @a[distance=..1.5] run kill @s

execute as @a[predicate=h_weapons:is_sneaking,tag=!jump_used] if items entity @s armor.feet minecraft:leather_boots[custom_data={"hypr-item":"winged_sandals"}] at @s run function h_weapons:pantheon/apply_forward_motion
execute as @a[predicate=h_weapons:is_sneaking] if items entity @s armor.feet minecraft:leather_boots[custom_data={"hypr-item":"winged_sandals"}] run tag @s add jump_used
tag @a[predicate=!h_weapons:is_sneaking,tag=jump_used] remove jump_used

execute as @a if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] run effect give @s hero_of_the_village 2 2
execute as @a if items entity @s weapon.offhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] run effect give @s hero_of_the_village 2 2
execute as @a if items entity @s weapon.offhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] run effect give @s hero_of_the_village 2 4
