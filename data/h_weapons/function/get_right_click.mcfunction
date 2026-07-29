execute as @a[scores={ticks_since_last_right_click=-2147483648..2147483647}] run tag @s add tested
execute as @a[tag=!tested] run scoreboard players set @s ticks_since_last_right_click 0
tag @a[tag=tested] remove tested

execute as @a[scores={right_clicked=1..}] run tag @s add right_clicking
execute as @a[scores={right_clicked=1..}] run scoreboard players set @s ticks_since_last_right_click 6
execute as @a[scores={ticks_since_last_right_click=1..}] run scoreboard players remove @s ticks_since_last_right_click 1
execute as @a[scores={ticks_since_last_right_click=..0}] run tag @s remove right_clicking
execute as @a[scores={right_clicked=1..}] run scoreboard players set @s right_clicked 0



# execute as @a[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^ ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff"],text:"Test",background:0}
execute as @a[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^1.2 ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff"],text:"Lightning 3 \uF806\uE020",background:0,CustomName:{"text":"lightning"}}
execute as @a[tag=!was_right_clicking,tag=right_clicking] at @s anchored eyes positioned ^-1.2 ^ ^2 run summon text_display ~ ~ ~ {Tags:["temp_staff"],text:"Test spell 2 \uF806\uE020",background:0,CustomName:"tbt"}

execute as @e[tag=temp_staff,type=text_display] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,tag=right_clicking] eyes




tag @a[tag=right_clicking] add was_right_clicking

# Do stuff
execute as @a[tag=was_right_clicking,tag=!right_clicking] at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=text_display,tag=temp_staff,limit=1,sort=nearest,distance=..1] add selected
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] at @s as @a[tag=was_right_clicking,tag=!right_clicking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^10 run summon lightning_bolt ~ ~ ~
execute as @e[type=text_display,tag=temp_staff,tag=selected,nbt={CustomName:"lightning"}] run say zap

execute as @a[tag=was_right_clicking,tag=!right_clicking] run scoreboard players remove @s mana 3
execute as @a[tag=was_right_clicking,tag=!right_clicking] at @s run kill @e[tag=temp_staff,distance=..5]

tag @a[tag=!right_clicking,tag=was_right_clicking] remove was_right_clicking

execute as @a at @s run tag @e[type=text_display,distance=..5,tag=temp_staff] add safe
kill @e[tag=!safe,type=text_display,tag=temp_staff]
tag @e[tag=safe,type=text_display,tag=temp_staff] remove safe