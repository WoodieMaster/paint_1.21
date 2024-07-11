# decoration
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"radio"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Cake\",\"color\":\"gold\"}",custom_data={id:"cake"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["cake"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"cake"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Monitor\",\"color\":\"gold\"}",custom_data={id:"screen"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["screen"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"screen"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Radio\",\"color\":\"gold\"}",custom_data={id:"radio"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["radio"]}]

# door
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"door",type:"x"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[custom_model_data=2,item_name="{\"text\":\"Door [Z]\",\"color\":\"gold\",\"italic\":false}",custom_data={id:"door",type:"z"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["door","z","inv"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"door",type:"z"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[custom_model_data=2,item_name="{\"text\":\"Doorlock\",\"color\":\"gold\",\"italic\":false}",custom_data={id:"doorlock"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["doorlock","inv"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"doorlock"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[custom_model_data=2,item_name="{\"text\":\"Door [X]\",\"color\":\"gold\",\"italic\":false}",custom_data={id:"door",type:"x"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["door","x","inv"]}]

# enemies
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"cleaner"}] run return run item replace entity @s weapon.mainhand with minecraft:guardian_spawn_egg[item_name="{\"text\":\"Iris\",\"color\":\"gold\"}",entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Silent:1b,Tags:["turret"],NoAI:1b}]

# fizzler gate
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"fizzlerdoor",type:"x"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Fizzler Gate [Z]\",\"color\":\"green\"}",custom_data={id:"fizzlerdoor",type:"z"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["fizzlerdoor","z"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"fizzlerdoor",type:"z"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Fizzler Lock\",\"color\":\"green\"}",custom_data={id:"fizzlerdoorlock"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["fizzlerdoorlock"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"fizzlerdoorlock"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Fizzler Gate [X]\",\"color\":\"green\"}",custom_data={id:"fizzlerdoor",type:"x"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["fizzlerdoor","x"]}]

# transmitter receiver
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"transmitter",type:"a"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Receiver [A]\",\"color\":\"aqua\"}",custom_data={id:"receiver",type:"a"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["receiver","a"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"receiver",type:"a"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [B]\",\"color\":\"aqua\"}",custom_data={id:"transmitter",type:"b"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","b"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"transmitter",type:"b"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Receiver [B]\",\"color\":\"aqua\"}",custom_data={id:"receiver",type:"b"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["receiver","b"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"receiver",type:"b"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [C]\",\"color\":\"aqua\"}",custom_data={id:"transmitter",type:"c"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","c"]}]

execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"transmitter",type:"c"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Receiver [C]\",\"color\":\"aqua\"}",custom_data={id:"receiver",type:"c"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["receiver","c"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"receiver",type:"c"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [D]\",\"color\":\"aqua\"}",custom_data={id:"transmitter",type:"d"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","d"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"transmitter",type:"d"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Receiver [D]\",\"color\":\"aqua\"}",custom_data={id:"receiver",type:"d"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["receiver","d"]}]

execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"receiver",type:"d"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [E]\",\"color\":\"aqua\"}",custom_data={id:"transmitter",type:"e"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","e"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"transmitter",type:"e"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Receiver [E]\",\"color\":\"aqua\"}",custom_data={id:"receiver",type:"e"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["receiver","e"]}]

execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"receiver",type:"e"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [F]\",\"color\":\"aqua\"}",custom_data={id:"transmitter",type:"f"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","f"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"transmitter",type:"f"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Receiver [F]\",\"color\":\"aqua\"}",custom_data={id:"receiver",type:"f"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["receiver","f"]}]
execute if items entity @s weapon.offhand minecraft:armor_stand[custom_data={id:"receiver",type:"f"}] run return run item replace entity @s weapon.mainhand with minecraft:armor_stand[item_name="{\"text\":\"Transmitter [A]\",\"color\":\"aqua\"}",custom_data={id:"transmitter",type:"a"},entity_data={id:"armor_stand",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["transmitter","a"]}]