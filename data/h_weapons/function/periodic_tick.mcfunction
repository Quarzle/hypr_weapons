execute as @a[scores={mana=..20}] run scoreboard players add @s mana 1

schedule function h_weapons:periodic_tick 11t

execute at @a as @e[type=marker,tag=boons,distance=..5] at @s run function h_weapons:pantheon/create_choices
execute at @a as @e[type=marker,tag=boons,distance=..5] at @s run kill @s