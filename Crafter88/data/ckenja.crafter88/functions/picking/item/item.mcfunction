#> ckenja.crafter88:picking/item/item
#
#
#
# @within function ckenja.crafter88:picking/item/tick

scoreboard players set $picking.item.origin ckenja.crafter88 0
execute on origin if entity @s[tag=ckenja.crafter88.picking.item.origin] run scoreboard players set $picking.item.origin ckenja.crafter88 1
execute if score $picking.item.origin ckenja.crafter88 matches 1 run function ckenja.crafter88:picking/item/item2
tag @s add ckenja.crafter88.picking.item.processed
