 #> ckenja.crafter88:picking/start/right_click
#
#
#
# @within function ckenja.crafter88:picking/right_click/main

tag @s add ckenja.crafter88.picking.direction
tag @s remove ckenja.crafter88.picking.start

function oh_my_dat:please
execute summon block_display run function ckenja.crafter88:picking/start/summon.init
