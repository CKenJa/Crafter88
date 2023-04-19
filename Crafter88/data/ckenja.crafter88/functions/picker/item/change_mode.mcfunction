#> ckenja.crafter88:picker/item/change_mode
#
#
#
# @within function ckenja.crafter88:picker/item/tick


tag @s remove ckenja.crafter88.picker.direction
tag @s remove ckenja.crafter88.picker.pos1
tag @s remove ckenja.crafter88.picker.pos2
tag @s remove ckenja.crafter88.picker.item
tag @s add ckenja.crafter88.picker.start

execute as @e[type=block_display,tag=ckenja.crafter88.picker.block_display] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
