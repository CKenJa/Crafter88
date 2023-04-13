#> ckenja.crafter88:picking/pos1/right_click
#
#
#
# @within function ckenja.crafter88:picking/right_click/main

tag @s add ckenja.crafter88.picking.pos2
tag @s remove ckenja.crafter88.picking.pos1

function oh_my_dat:please
execute summon block_display run function ckenja.crafter88:picking/pos1/summon.init
