scoreboard objectives add variable dummy
scoreboard players add %weather variable 0

scoreboard objectives add mana dummy
scoreboard objectives add ticks_since_last_right_click dummy
scoreboard objectives add spell_cooldown dummy
scoreboard objectives add motion dummy

scoreboard objectives add right_clicked minecraft.used:carrot_on_a_stick

scoreboard objectives add bow_shot minecraft.used:bow
scoreboard objectives add homing_immunity dummy
scoreboard objectives add arrow_age dummy
scoreboard objectives add arrow_yvel dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add choices_left dummy

scoreboard objectives add lightning_rush_counter dummy


schedule function h_weapons:periodic_tick 1t

say loaded!
