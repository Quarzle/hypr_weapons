scoreboard players remove %aggro_time variable 1

execute if score %aggro_time variable matches ..1 run kill @e[tag=carrot_warrior,type=mannequin]
execute if score %aggro_time variable matches ..1 run tag @e[tag=carrot_warrior] remove carrot_warrior
execute if score %aggro_time variable matches ..1 run tag @e[tag=carrot_targeted] remove carrot_targeted

execute as @e[tag=carrot_warrior,type=mannequin] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=carrot_targeted]
execute as @e[tag=carrot_warrior,type=mannequin,limit=1] at @s as @e[limit=1,sort=nearest,tag=carrot_targeted, distance=..60] as @e[tag=carrot_warrior,type=mannequin] at @s run tp @s ^ ^ ^0.25
execute as @e[tag=carrot_warrior,type=mannequin] at @s run damage @e[limit=1,sort=nearest,tag=carrot_targeted,distance=..2.3] 2 mob_attack
execute as @e[tag=carrot_warrior,type=mannequin,limit=1] at @s as @e[limit=1,sort=nearest,tag=carrot_targeted, distance=..3] as @e[tag=carrot_warrior,type=mannequin] at @s run swing @s mainhand
execute as @e[tag=carrot_warrior,type=mannequin,limit=1] at @s as @e[limit=1,sort=nearest,tag=carrot_targeted, distance=..3] as @e[tag=carrot_warrior,type=mannequin] at @s run swing @s offhand


execute as @e[tag=carrot_warrior,type=mannequin] run function h_weapons:mannequin_physics