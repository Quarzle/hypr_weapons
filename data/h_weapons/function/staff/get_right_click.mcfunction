execute as @a[scores={ticks_since_last_right_click=-2147483648..2147483647}] run tag @s add tested
execute as @a[tag=!tested] run scoreboard players set @s ticks_since_last_right_click 0
tag @a[tag=tested] remove tested

execute as @a[scores={right_clicked=1..}] run tag @s add right_clicking
execute as @a[scores={right_clicked=1..}] run scoreboard players set @s ticks_since_last_right_click 6
execute as @a[scores={ticks_since_last_right_click=1..}] run scoreboard players remove @s ticks_since_last_right_click 1
execute as @a[scores={ticks_since_last_right_click=..0}] run tag @s remove right_clicking
execute as @a[scores={right_clicked=1..}] run scoreboard players set @s right_clicked 0


execute as @a[scores={spell_cooldown=..0}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"select"}] run function h_weapons:staff/select_mode
execute as @a at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"fire"}] run function h_weapons:staff/fire_mode

scoreboard players remove @a spell_cooldown 1