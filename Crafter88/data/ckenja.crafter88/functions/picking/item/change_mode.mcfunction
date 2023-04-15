#> ckenja.crafter88:picking/item/change_mode
#
#
#
# @within function ckenja.crafter88:picking/item/tick

tag @s remove ckenja.crafter88.picking.pos2
tag @s remove ckenja.crafter88.picking.item
tag @s add ckenja.crafter88.picking.start

scoreboard players operation $player_id ckenja.crafter88 = @s OhMyDatID
execute as @e[type=block_display,tag=ckenja.crafter88.picking.block_display] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
