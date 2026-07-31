particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 16
playsound ui.hud.bubble_pop block @a ~ ~ ~ 1.2 0.8

summon minecraft:text_display ~3.5 ~ ~ {Tags:["boon_choice","hestia"],text:"Receive a boon\nof Hestia",billboard:"center"}
summon minecraft:interaction ~3.5 ~ ~ {Tags:["boon_choice","hestia"],width:1.75f,height:0.8f}

summon minecraft:text_display ~-3.5 ~ ~ {Tags:["boon_choice","dionysus"],text:"Receive a boon\nof Dionysus",billboard:"center"}
summon minecraft:interaction ~-3.5 ~ ~ {Tags:["boon_choice","dionysus"],width:1.75f,height:0.8f}

# ,background:0