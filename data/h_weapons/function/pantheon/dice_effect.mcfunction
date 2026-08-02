execute store result storage h_weapons:dice roll int 1 run random value 1..6

execute if data storage h_weapons:dice {roll:1} run tellraw @s {text: "You rolled a 1...",color:red}
execute if data storage h_weapons:dice {roll:1} run effect clear @s saturation
execute if data storage h_weapons:dice {roll:1} run effect give @s blindness 50 0
execute if data storage h_weapons:dice {roll:1} run effect give @s wither 50 9

execute if data storage h_weapons:dice {roll:2} run tellraw @s {text: "You rolled a 2...",color:yellow}
execute if data storage h_weapons:dice {roll:2} run effect give @s slowness 120 127 true

execute if data storage h_weapons:dice {roll:3} run tellraw @s {text: "You rolled a 3.",color:"green"}
execute if data storage h_weapons:dice {roll:3} run effect give @s night_vision infinite 0 true

execute if data storage h_weapons:dice {roll:4} run tellraw @s {text: "You rolled a 4.",color:"aqua"}
execute if data storage h_weapons:dice {roll:4} run effect give @s absorption infinite 0 true

execute if data storage h_weapons:dice {roll:5} run tellraw @s {text: "You rolled a 5!",color:"gold"}
execute if data storage h_weapons:dice {roll:5} run effect give @s health_boost infinite 0 true

execute if data storage h_weapons:dice {roll:6} run tellraw @s {text: "You rolled a 6!",color:"dark_purple"}
execute if data storage h_weapons:dice {roll:6} run effect give @s saturation infinite 0 true


# Give back the item as it was consumed
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data={hypr-item:"dice"}] run tag @s add need_new_dice_mainhand
execute if items entity @s weapon.offhand minecraft:echo_shard[custom_data={hypr-item:"dice"}] run tag @s add need_new_dice_offhand
schedule function h_weapons:replace_rci 2t

# Revoke the advancement
advancement revoke @s only h_weapons:use_dice