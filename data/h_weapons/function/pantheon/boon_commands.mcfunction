# trident water
execute as @a[predicate=h_weapons:is_on_ground,predicate=h_weapons:is_sneaking] if items entity @s weapon.mainhand minecraft:trident[custom_data={"hypr-item":"p_trident"}] at @s unless block ~ ~0.1 ~ #h_weapons:irreplaceable run summon marker ~ ~ ~ {Tags:["water_holder"]}
execute as @a[predicate=h_weapons:is_on_ground,predicate=h_weapons:is_sneaking] if items entity @s weapon.mainhand minecraft:trident[custom_data={"hypr-item":"p_trident"}] at @s unless block ~ ~0.1 ~ #h_weapons:irreplaceable run setblock ~ ~0.1 ~ water
execute as @e[tag=water_holder,type=marker] at @s unless entity @a[distance=..1.5] run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 air replace water
execute as @e[tag=water_holder,type=marker] at @s unless entity @a[distance=..1.5] run kill @s

# winged sandals
execute as @a[predicate=h_weapons:is_sneaking,tag=!jump_used] if items entity @s armor.feet minecraft:leather_boots[custom_data={"hypr-item":"winged_sandals"}] at @s run function h_weapons:pantheon/apply_forward_motion
execute as @a[predicate=h_weapons:is_sneaking] if items entity @s armor.feet minecraft:leather_boots[custom_data={"hypr-item":"winged_sandals"}] run tag @s add jump_used
tag @a[predicate=!h_weapons:is_sneaking,tag=jump_used] remove jump_used

# coupon
execute as @a if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] run effect give @s hero_of_the_village 2 2
execute as @a if items entity @s weapon.offhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] run effect give @s hero_of_the_village 2 2
execute as @a if items entity @s weapon.offhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={"hypr-item":"coupon"}] run effect give @s hero_of_the_village 2 4


# Homing arrows
scoreboard players remove @e homing_immunity 1 
scoreboard players add @e[type=arrow] arrow_age 1 

execute as @a[scores={bow_shot=1..}] if items entity @s weapon.mainhand minecraft:bow[custom_data={"hypr-item":"apollo_bow"}] at @s anchored eyes positioned ^ ^ ^0.5 run tag @e[type=#minecraft:arrows,distance=..1.2] add arrow_homing
execute as @a[scores={bow_shot=1..}] if items entity @s weapon.mainhand minecraft:bow[custom_data={"hypr-item":"apollo_bow"}] run scoreboard players set @s homing_immunity 40

execute as @a[scores={bow_shot=1..}] run scoreboard players set @s bow_shot 0

execute as @e[type=#minecraft:arrows,tag=arrow_homing,scores={arrow_age=5..}] at @s facing entity @n[scores={homing_immunity=..0},distance=..20,type=!mannequin,type=!#minecraft:arrows,type=!item,type=!item_frame,type=!glow_item_frame,type=!text_display,type=!minecraft:marker,type=!minecraft:block_display,type=!minecraft:experience_orb] eyes run function h_weapons:pantheon/apply_forward_motion_entity
execute as @e[type=#minecraft:arrows,tag=arrow_homing,nbt={inGround:1b}] run tag @s remove arrow_homing 

# sun tunic
execute as @a if items entity @s armor.chest minecraft:leather_chestplate[custom_data={"hypr-item":"sun_tunic"}] at @s run effect give @s minecraft:fire_resistance 1 0 true

# lightning rush
execute as @a[scores={lightning_rush_counter=-200..}] run scoreboard players remove @s lightning_rush_counter 1
execute as @a[scores={lightning_rush_counter=0..},predicate=!h_weapons:is_sprinting] run scoreboard players remove @s lightning_rush_counter 40
execute as @a[scores={lightning_rush_counter=0..},predicate=!h_weapons:is_sprinting] run scoreboard players remove @s lightning_rush_counter 40
execute as @a[scores={lightning_rush_counter=1..}] at @s run summon lightning_bolt ~ ~ ~
execute as @a[scores={lightning_rush_counter=..0}] run attribute @s step_height modifier remove lr_step
execute as @a[scores={lightning_rush_counter=..0}] run gamemode survival @s
execute as @a[scores={lightning_rush_counter=..-45}] run effect clear @s resistance
execute as @a[scores={lightning_rush_counter=..0}] run effect clear @s speed
execute as @a[scores={lightning_rush_counter=..0}] run item replace entity @s player.cursor with air
execute as @a[scores={lightning_rush_counter=..0}] run scoreboard players reset @s lightning_rush_counter