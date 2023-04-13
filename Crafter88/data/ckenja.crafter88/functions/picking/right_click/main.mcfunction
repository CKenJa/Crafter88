#> ckenja.crafter88:picking/right_click/main
#
#
#
# @within function ckenja.crafter88:looking_at_function.player.listener

execute if entity @s[tag=ckenja.crafter88.picking.pos2] run function ckenja.crafter88:picking/pos2/right_click
execute if entity @s[tag=ckenja.crafter88.picking.pos1] run function ckenja.crafter88:picking/pos1/right_click
execute if entity @s[tag=ckenja.crafter88.picking.start] run function ckenja.crafter88:picking/start/right_click

# 仮の登録処理
#execute if data storage ckenja.crafter88: tick{picked:false} run function ckenja.crafter88:picking/register/_
