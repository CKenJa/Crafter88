#> ckenja.crafter88:picker/start/summon.init
#
#
#
# @within function ckenja.crafter88:picker/start/right_click

scoreboard players operation @s ckenja.crafter88 = $player_id ckenja.crafter88
data merge entity @s {glow_color_override:6891560,Glowing:1b,Tags:["ckenja.crafter88.picker.block_display","ckenja.crafter88.picker.start.block_display"],brightness:{sky:15,block:15},block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.005f,0.005f,0.005f],scale:[0.99f,0.99f,0.99f]}}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.start set from entity @s Pos
