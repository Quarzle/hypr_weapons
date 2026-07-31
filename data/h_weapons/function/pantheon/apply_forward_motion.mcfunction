particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 20 force
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 0.75 0.8

teleport 0 0 0
teleport ~ ~ ~

scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 6500
scoreboard players set $z player_motion.api.launch 0
function player_motion:api/launch_xyz
scoreboard players set $strength player_motion.api.launch 12000
function player_motion:api/launch_looking