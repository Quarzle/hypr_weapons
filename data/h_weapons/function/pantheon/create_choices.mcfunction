particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 16
playsound ui.hud.bubble_pop block @a ~ ~ ~ 1.2 0.8

summon minecraft:text_display ~3.5 ~ ~ {Tags:["boon_choice","hestia"],text:[{"text":"Receive a boon\nof Hestia"},{"atlas":"minecraft:gui","sprite":"toast/right_click"}],billboard:"center"}
summon minecraft:interaction ~3.5 ~ ~ {Tags:["boon_choice","hestia"],width:1.75f,height:0.8f}

summon minecraft:text_display ~-3.5 ~ ~ {Tags:["boon_choice","dionysus"],text:[{"text":"Receive a boon\nof Dionysus"},{"atlas":"minecraft:gui","sprite":"toast/right_click"}],billboard:"center"}
summon minecraft:interaction ~-3.5 ~ ~ {Tags:["boon_choice","dionysus"],width:1.75f,height:0.8f}

summon minecraft:text_display ~ ~ ~3.5 {Tags:["boon_choice","poseidon"],text:[{"text":"Receive a boon\nof Poseidon"},{"atlas":"minecraft:gui","sprite":"toast/right_click"}],billboard:"center"}
summon minecraft:interaction ~ ~ ~3.5 {Tags:["boon_choice","poseidon"],width:1.75f,height:0.8f}

summon minecraft:text_display ~ ~ ~-3.5 {Tags:["boon_choice","hermes"],text:[{"text":"Receive a boon\nof Hermes"},{"atlas":"minecraft:gui","sprite":"toast/right_click"}],billboard:"center"}
summon minecraft:interaction ~ ~ ~-3.5 {Tags:["boon_choice","hermes"],width:1.75f,height:0.8f}

summon minecraft:text_display ~2.5 ~ ~2.5 {Tags:["boon_choice","apollo"],text:[{"text":"Receive a boon\nof Apollo"},{"atlas":"minecraft:gui","sprite":"toast/right_click"}],billboard:"center"}
summon minecraft:interaction ~2.5 ~ ~2.5 {Tags:["boon_choice","apollo"],width:1.75f,height:0.8f}

summon minecraft:text_display ~2.5 ~ ~-2.5 {Tags:["boon_choice","zeus"],text:[{"text":"Receive a boon\nof Zeus"},{"atlas":"minecraft:gui","sprite":"toast/right_click"}],billboard:"center"}
summon minecraft:interaction ~2.5 ~ ~-2.5 {Tags:["boon_choice","zeus"],width:1.75f,height:0.8f}