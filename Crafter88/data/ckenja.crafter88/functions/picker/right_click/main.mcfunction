#> ckenja.crafter88:picker/right_click/main
#
#
#
# @within function ckenja.crafter88:looking_at_function.player.listener

execute if entity @s[tag=ckenja.crafter88.picker.pos2] run function ckenja.crafter88:picker/pos2/right_click
execute if entity @s[tag=ckenja.crafter88.picker.pos1] run function ckenja.crafter88:picker/pos1/right_click
execute if entity @s[tag=ckenja.crafter88.picker.start] run function ckenja.crafter88:picker/start/right_click

# 仮の登録処理
#execute if data storage ckenja.crafter88: tick{picked:false} run function ckenja.crafter88:picker/register/_
