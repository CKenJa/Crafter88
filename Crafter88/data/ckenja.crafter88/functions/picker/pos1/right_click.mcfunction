#> ckenja.crafter88:picker/pos1/right_click
#
#
#
# @within function ckenja.crafter88:picker/right_click/main

tag @s add ckenja.crafter88.picker.pos2
tag @s remove ckenja.crafter88.picker.pos1

function oh_my_dat:please
execute summon block_display run function ckenja.crafter88:picker/pos1/summon.init
