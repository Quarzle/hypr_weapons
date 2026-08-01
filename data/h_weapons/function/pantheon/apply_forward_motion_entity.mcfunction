execute store result score @s motion_x1 run data get entity @s Pos[0] 10
execute store result score @s motion_y1 run data get entity @s Pos[1] 10
execute store result score @s motion_z1 run data get entity @s Pos[2] 10

summon marker ^ ^ ^1 {Tags:["dir_marker"]}

execute store result score @s motion_x2 run data get entity @e[type=marker,limit=1,sort=nearest,tag=dir_marker] Pos[0] 10
execute store result score @s motion_y2 run data get entity @e[type=marker,limit=1,sort=nearest,tag=dir_marker] Pos[1] 10
execute store result score @s motion_z2 run data get entity @e[type=marker,limit=1,sort=nearest,tag=dir_marker] Pos[2] 10

scoreboard players operation @s motion_x2 -= @s motion_x1
scoreboard players operation @s motion_y2 -= @s motion_y1
scoreboard players operation @s motion_z2 -= @s motion_z1

execute store result score @s motion_x1 run data get entity @s Motion[0] 10
execute store result score @s motion_y1 run data get entity @s Motion[1] 10
execute store result score @s motion_z1 run data get entity @s Motion[2] 10


scoreboard players operation #vAi swMath_V = @s motion_x1
scoreboard players operation #vAj swMath_V = @s motion_y1
scoreboard players operation #vAk swMath_V = @s motion_z1

function math:classes/core/vector/magnitude

scoreboard players operation %homing_factor variable = #vOut swMath_V
# tellraw @a [{"text":"ux = "},{"score":{"name":"#vOi","objective":"swMath_V"}}]


scoreboard players operation #vAi swMath_V = @s motion_x1
scoreboard players operation #vAj swMath_V = @s motion_y1
scoreboard players operation #vAk swMath_V = @s motion_z1
function math:classes/core/vector/unit
scoreboard players operation @s motion_x1 = #vOi swMath_V
scoreboard players operation @s motion_y1 = #vOj swMath_V
scoreboard players operation @s motion_z1 = #vOk swMath_V

# tellraw @a [{"text":"x1 = "},{"score":{"name":"#vOi","objective":"swMath_V"}}]
# tellraw @a [{"text":"y1 = "},{"score":{"name":"#vOj","objective":"swMath_V"}}]
# tellraw @a [{"text":"z1 = "},{"score":{"name":"#vOk","objective":"swMath_V"}}]

scoreboard players operation #vAi swMath_V = @s motion_x2
scoreboard players operation #vAj swMath_V = @s motion_y2
scoreboard players operation #vAk swMath_V = @s motion_z2
function math:classes/core/vector/unit
scoreboard players operation @s motion_x2 = #vOi swMath_V
scoreboard players operation @s motion_y2 = #vOj swMath_V
scoreboard players operation @s motion_z2 = #vOk swMath_V

# tellraw @a [{"text":"x2 = "},{"score":{"name":"#vOi","objective":"swMath_V"}}]
# tellraw @a [{"text":"y2 = "},{"score":{"name":"#vOj","objective":"swMath_V"}}]
# tellraw @a [{"text":"z2 = "},{"score":{"name":"#vOk","objective":"swMath_V"}}]

scoreboard players operation @s motion_x1 += @s motion_x2
scoreboard players operation @s motion_y1 += @s motion_y2
scoreboard players operation @s motion_z1 += @s motion_z2

scoreboard players operation @s motion_x1 /= #C_2 swMath_C
scoreboard players operation @s motion_y1 /= #C_2 swMath_C
scoreboard players operation @s motion_z1 /= #C_2 swMath_C

scoreboard players operation @s motion_x1 *= %homing_factor variable
scoreboard players operation @s motion_y1 *= %homing_factor variable
scoreboard players operation @s motion_z1 *= %homing_factor variable

execute store result entity @s Motion[0] double 0.00001 run scoreboard players get @s motion_x1
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get @s motion_y1
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s motion_z1
data get entity @s Motion

execute store result score @s motion_x1 run data get entity @s Motion[0] 1000
execute store result score @s motion_y1 run data get entity @s Motion[1] 1000
execute store result score @s motion_z1 run data get entity @s Motion[2] 1000

scoreboard players operation #vAi swMath_V = @s motion_x1
scoreboard players operation #vAj swMath_V = @s motion_y1
scoreboard players operation #vAk swMath_V = @s motion_z1

# tellraw @a [{"text":"mx1 = "},{"score":{"name":"#vAi","objective":"swMath_V"}}]
# tellraw @a [{"text":"my1 = "},{"score":{"name":"#vAj","objective":"swMath_V"}}]
# tellraw @a [{"text":"mz1 = "},{"score":{"name":"#vAk","objective":"swMath_V"}}]

kill @e[type=marker,limit=1,sort=nearest,tag=dir_marker]
