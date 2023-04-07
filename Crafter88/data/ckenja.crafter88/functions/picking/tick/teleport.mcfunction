#> ckenja.crafter88:picking/tick/teleport
#
#
#
# @within function ckenja.crafter88:picking/tick/main

execute align xyz as @e[type=block_display,tag=ckenja.crafter88.picking.tick.block_display] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run tp @s ~ ~ ~
