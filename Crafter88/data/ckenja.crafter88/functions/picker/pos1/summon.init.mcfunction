#> ckenja.crafter88:picker/pos1/summon.init
#
#
#
# @within function ckenja.crafter88:picker/pos1/right_click

scoreboard players operation @s ckenja.crafter88 = $player_id ckenja.crafter88
data merge entity @s {glow_color_override:4745617,Glowing:1b,Tags:["ckenja.crafter88.picker.block_display","ckenja.crafter88.picker.pos.block_display"],brightness:{sky:15,block:15},block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.005f,0.005f,0.005f],scale:[0.99f,0.99f,0.99f]},interpolation_duration:1}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos1 set from entity @s Pos
