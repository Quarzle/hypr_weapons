
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^1.2 ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff"],text:"Lightning 4 \uF806\uE020",background:0,CustomName:{"text":"lightning"}}
execute as @s[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^-1.2 ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff"],text:"Fireball spell 6 \uF806\uE020",background:0,CustomName:{"text":"fireball"}}

execute as @e[tag=temp_staff,type=text_display] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,tag=right_clicking] eyes




tag @s[tag=right_clicking] add was_right_clicking

# Do stuff
execute as @s[tag=was_right_clicking,tag=!right_clicking] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=text_display,tag=temp_staff,limit=1,sort=nearest,distance=..1] add selected

# lightning | cost : 4
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=4..}] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_model_data={strings:["lightning"]},lore=[{text:"Charged spell: lightning"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"fire"},item_model="minecraft:staff",unbreakable={},use_cooldown={seconds:0.5,cooldown_group:"carrot_on_a_stick"}]
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=4..}] run scoreboard players remove @s mana 4

# fireball | cost : 6
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"fireball"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=6..}] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_model_data={strings:["fireball"]},lore=[{text:"Charged spell: fireball"}],item_name="Mage Staff",custom_data={"hypr-item":"staff","mode":"fire"},item_model="minecraft:staff",unbreakable={}]
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"fireball"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest,scores={mana=6..}] run scoreboard players remove @s mana 6


execute as @s[tag=was_right_clicking,tag=!right_clicking] at @s run kill @e[tag=temp_staff,distance=..5]

tag @s[tag=!right_clicking,tag=was_right_clicking] remove was_right_clicking

execute as @a at @s run tag @e[type=text_display,distance=..5,tag=temp_staff] add safe
kill @e[tag=!safe,type=text_display,tag=temp_staff]
tag @e[tag=safe,type=text_display,tag=temp_staff] remove safe