#> ckenja.crafter88:picking/item/tick
#
#
#
# @within function ckenja.crafter88:tick/player/_

tag @s add ckenja.crafter88.picking.item.origin
scoreboard players set $picking.success ckenja.crafter88 0
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=item,tag=!ckenja.crafter88.picking.item.processed,distance=..1] run function ckenja.crafter88:picking/item/item
tag @s remove ckenja.crafter88.picking.item.origin
execute if score $picking.success ckenja.crafter88 matches 1 run function ckenja.crafter88:picking/item/change_mode
execute if score $picking.cancel ckenja.crafter88 matches 1 run function ckenja.crafter88:picking/item/change_mode
scoreboard players reset $picking.cancel ckenja.crafter88
