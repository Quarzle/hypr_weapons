function h_weapons:move_carrots

execute as @a[tag=mana_bar] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"fire"}] run title @s actionbar [{"text":""}]
execute as @a[tag=mana_bar] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"select"}] run title @s actionbar [{"text":""}]

execute as @a[tag=mana_bar] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"fire"}] run tag @s remove mana_bar
execute as @a[tag=mana_bar] unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"select"}] run tag @s remove mana_bar

execute as @a[gamemode=!spectator] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"fire"}] run tag @s add mana_bar
execute as @a[gamemode=!spectator] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"select"}] run tag @s add mana_bar

execute as @a[gamemode=!spectator,tag=mana_bar] run function h_weapons:bar

function h_weapons:staff/get_right_click

function h_weapons:staff/enchanted_entities

function h_weapons:pantheon/boon_chosen

function h_weapons:pantheon/boon_commands