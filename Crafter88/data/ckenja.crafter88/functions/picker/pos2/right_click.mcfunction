#> ckenja.crafter88:picker/pos2/right_click
#
#
#
# @within function ckenja.crafter88:picker/right_click/main

tag @s add ckenja.crafter88.picker.item

function oh_my_dat:please
execute summon marker run function ckenja.crafter88:picker/pos2/summon.init

execute as @e[type=block_display,tag=ckenja.crafter88.picker.pos.block_display,distance=..128] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run function ckenja.crafter88:picker/pos2/display_region
