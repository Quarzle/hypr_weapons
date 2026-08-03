playsound minecraft:entity.shulker_bullet.hit player @a ~ ~ ~ 1.75 0.5
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1.75 2
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.75 1.8
particle minecraft:smoke ^-0.25 ^-0.25 ^0.5 0.1 0.1 0.1 0.01 5

swing @s mainhand

scoreboard players set %blocks_traversed variable 0
tag @s add immune
execute on vehicle run tag @s add immune
function h_weapons:revolver/revolver_raycast
tag @s remove immune
execute on vehicle run tag @s remove immune
