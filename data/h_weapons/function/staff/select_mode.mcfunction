
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^ ^0.9 ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff","spell_top"],text:"Warp 5 \uF806\uE020",background:0,CustomName:{"text":"warp"},interpolation_duration:1,see_through:true}
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^1.2 ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff","spell_left"],text:"Lightning 7 \uF806\uE020",background:0,CustomName:{"text":"lightning"},interpolation_duration:1,see_through:true}
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^-1.2 ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff","spell_right"],text:"Fireball spell 10 \uF806\uE020",background:0,CustomName:{"text":"fireball"},interpolation_duration:1,see_through:true}
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^ ^-0.9 ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff","spell_bottom"],text:"Enchantment spell 15 \uF806\uE020",background:0,CustomName:{"text":"enchant"},interpolation_duration:1,see_through:true}


execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s run summon marker ~ ~ ~ {Tags:["staff_pos_marker"]}
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s positioned ^ ^ ^-1 run tp @e[type=marker,tag=staff_pos_marker, limit=1, sort=nearest] ~ ~ ~ facing entity @s

execute as @s[tag=right_clicking] at @s run tp @e[type=marker,tag=staff_pos_marker,limit=1,sort=nearest] ~ ~ ~
execute as @s[tag=right_clicking] at @s at @e[type=marker,tag=staff_pos_marker,limit=1,sort=nearest] anchored eyes positioned ^ ^0.9 ^2 run tp @e[limit=1,type=text_display,tag=temp_staff,tag=spell_top] ~ ~ ~
execute as @s[tag=right_clicking] at @s at @e[type=marker,tag=staff_pos_marker,limit=1,sort=nearest] anchored eyes positioned ^ ^-0.9 ^2 run tp @e[limit=1,type=text_display,tag=temp_staff,tag=spell_bottom] ~ ~ ~
execute as @s[tag=right_clicking] at @s at @e[type=marker,tag=staff_pos_marker,limit=1,sort=nearest] anchored eyes positioned ^1.2 ^ ^2 run tp @e[limit=1,type=text_display,tag=temp_staff,tag=spell_left] ~ ~ ~
execute as @s[tag=right_clicking] at @s at @e[type=marker,tag=staff_pos_marker,limit=1,sort=nearest] anchored eyes positioned ^-1.2 ^ ^2 run tp @e[limit=1,type=text_display,tag=temp_staff,tag=spell_right] ~ ~ ~


execute as @e[tag=temp_staff,type=text_display] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,tag=right_clicking] eyes



tag @s[tag=right_clicking] add was_right_clicking

# Do stuff
tag @e[type=text_display,tag=temp_staff] remove selected
execute as @a[tag=was_right_clicking] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=text_display,tag=temp_staff,limit=1,sort=nearest,distance=..0.8] add selected
execute as @e[type=text_display,tag=temp_staff,tag=selected] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]}}
execute as @e[type=text_display,tag=temp_staff,tag=!selected] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}


# lightning | cost : 7
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..6}] run tellraw @s {text:"Not enough mana!",color:"red"}
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..6}] run playsound minecraft:item.axe.scrape player @s ~ ~ ~ 2 2
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=7..}] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_model_data={strings:["lightning"]},lore=[{text:"Charged spell: lightning"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"fire"},item_model="minecraft:staff",unbreakable={},rarity="epic"]
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=7..}] run scoreboard players remove @s mana 7


# fireball | cost : 10
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"fireball"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..9}] run tellraw @s {text:"Not enough mana!",color:"red"}
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"fireball"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..9}] run playsound minecraft:item.axe.scrape player @s ~ ~ ~ 2 2
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"fireball"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=10..}] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_model_data={strings:["fireball"]},lore=[{text:"Charged spell: fireball"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"fire"},item_model="minecraft:staff",unbreakable={},rarity="epic"]
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"fireball"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=10..}] run scoreboard players remove @s mana 10

# warp | cost : 5
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"warp"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..4}] run tellraw @s {text:"Not enough mana!",color:"red"}
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"warp"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..4}] run playsound minecraft:item.axe.scrape player @s ~ ~ ~ 2 2
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"warp"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=5..}] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_model_data={strings:["warp"]},lore=[{text:"Charged spell: warp"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"fire"},item_model="minecraft:staff",unbreakable={},rarity="epic"]
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"warp"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=5..}] run scoreboard players remove @s mana 5

# enchant | cost : 12
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"enchant"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..14}] run tellraw @s {text:"Not enough mana!",color:"red"}
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"enchant"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=..14}] run playsound minecraft:item.axe.scrape player @s ~ ~ ~ 2 2
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"enchant"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=15..}] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_model_data={strings:["enchant"]},lore=[{text:"Charged spell: enchantment"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"fire"},item_model="minecraft:staff",unbreakable={},rarity="epic"]
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"enchant"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=15..}] run scoreboard players remove @s mana 15

# kill entities on rc release
execute as @s[tag=was_right_clicking,tag=!right_clicking] at @s run kill @e[tag=temp_staff,distance=..5]
execute as @s[tag=was_right_clicking,tag=!right_clicking] at @s run kill @e[tag=staff_pos_marker,distance=..5]


tag @s[tag=!right_clicking,tag=was_right_clicking] remove was_right_clicking