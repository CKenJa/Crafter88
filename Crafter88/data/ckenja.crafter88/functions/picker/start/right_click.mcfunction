 #> ckenja.crafter88:picker/start/right_click
#
#
#
# @within function ckenja.crafter88:picker/right_click/main

tag @s add ckenja.crafter88.picker.direction
tag @s remove ckenja.crafter88.picker.start

function oh_my_dat:please
execute summon block_display run function ckenja.crafter88:picker/start/summon.init
