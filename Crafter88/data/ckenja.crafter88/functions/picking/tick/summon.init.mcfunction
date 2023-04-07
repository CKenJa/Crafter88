#> ckenja.crafter88:picking/tick/summon.init
#
#
#
# @within function ckenja.crafter88:picking/tick/main

scoreboard players operation @s ckenja.crafter88 = $player_id ckenja.crafter88
data merge entity @s {glow_color_override:8105655,Glowing:1b,Tags:["ckenja.crafter88.picking.tick.block_display","ckenja.crafter88.picking.block_display"],brightness:{sky:15,block:15},block_state:{Name:"minecraft:glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.005f,0.005f,0.005f],scale:[0.99f,0.99f,0.99f]}}
