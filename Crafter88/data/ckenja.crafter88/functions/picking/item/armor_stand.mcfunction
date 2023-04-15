#> ckenja.crafter88:picking/item/armor_stand
#
#
#
# @within function ckenja.crafter88:picking/item/not_cancel

data modify storage ckenja.crafter88: picking.item.HandItems set value [{},{}]
data modify storage ckenja.crafter88: picking.item.HandItems[0] set from storage ckenja.crafter88: picking.item.Item
data modify entity @s HandItems set from storage ckenja.crafter88: picking.item.HandItems
execute if predicate ckenja.crafter88:picking/item/armor_stand run function ckenja.crafter88:picking/register/wrapper
clear @s
kill @s
