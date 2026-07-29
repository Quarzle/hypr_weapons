execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s run playsound entity.firework_rocket.launch player @s ~ ~ ~ 1 1.7
scoreboard players set @s spell_cooldown 15

#lightning
execute as @s[tag=!was_right_clicking,tag=right_clicking] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_model_data={strings:["lightning"]}] run scoreboard players set %blocks_traversed variable 0
execute as @s[tag=!was_right_clicking,tag=right_clicking] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_model_data={strings:["lightning"]}] at @s anchored eyes run function h_weapons:staff/lightning_raycast

#fireball
execute as @s[tag=!was_right_clicking,tag=right_clicking] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_model_data={strings:["fireball"]}] at @s anchored eyes run summon fireball ^ ^ ^2 {ExplosionPower:2}

#warp
execute as @s[tag=!was_right_clicking,tag=right_clicking] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_model_data={strings:["warp"]}] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.2 40
execute as @s[tag=!was_right_clicking,tag=right_clicking] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_model_data={strings:["warp"]}] run scoreboard players set %blocks_traversed variable 0
execute as @s[tag=!was_right_clicking,tag=right_clicking] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_model_data={strings:["warp"]}] at @s anchored eyes run function h_weapons:staff/teleport_raycast


execute as @s[tag=!was_right_clicking,tag=right_clicking] run item replace entity @s weapon.mainhand with carrot_on_a_stick[lore=[{text:"Charged spell: none"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"select"},item_model="minecraft:staff",unbreakable={}]
