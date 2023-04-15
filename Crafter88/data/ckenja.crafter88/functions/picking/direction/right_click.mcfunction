#> ckenja.crafter88:picking/direction/right_click
#
#
#
# @within function ckenja.crafter88:picking/right_click/_

tag @s add ckenja.crafter88.picking.pos1
tag @s remove ckenja.crafter88.picking.direction

function #oh_my_dat:please

execute if entity @s[y_rotation=45..135] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.direction set value 90
execute if entity @s[y_rotation=-135..-45] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.direction set value 270
execute if entity @s[y_rotation=135..-135] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.direction set value 180
execute if entity @s[y_rotation=-45..45] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.direction set value 0
