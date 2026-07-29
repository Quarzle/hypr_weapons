function h_weapons:move_carrots

title @a actionbar [{"text":""}]
execute as @a[tag=mana_bar,gamemode=!spectator] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"fire"}] run function h_weapons:bar
execute as @a[tag=mana_bar,gamemode=!spectator] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={"hypr-item":"staff","mode":"select"}] run function h_weapons:bar

function h_weapons:staff/get_right_click