#> ckenja.crafter88:picker/tick/teleport
#
#
#
# @within function ckenja.crafter88:picker/tick/main

execute align xyz as @e[type=block_display,tag=ckenja.crafter88.picker.tick.block_display] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run tp @s ~ ~ ~
