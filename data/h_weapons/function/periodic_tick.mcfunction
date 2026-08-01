execute as @a[scores={mana=..20}] run scoreboard players add @s mana 1

schedule function h_weapons:periodic_tick 10t

execute at @a as @e[type=marker,tag=boons,distance=..5,tag=!used] at @s run function h_weapons:pantheon/create_choices
execute at @a as @e[type=marker,tag=boons,distance=..5,tag=!used] at @s run scoreboard players remove @s choices_left 1
execute at @a as @e[type=marker,tag=boons,distance=..5,tag=!used] at @s run tag @s add used
execute at @a as @e[type=marker,tag=boons,distance=..5,tag=used,scores={choices_left=..-3}] at @s run kill @s