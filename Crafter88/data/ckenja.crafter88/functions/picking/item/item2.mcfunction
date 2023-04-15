#> ckenja.crafter88:picking/item/item2
#
#
#
# @within function ckenja.crafter88:picking/item/item

data modify storage ckenja.crafter88: picking.item.Item set from entity @s Item
execute store result score $picking.cancel ckenja.crafter88 run execute if data storage ckenja.crafter88: picking.item.Item.tag.ckenja.crafter88{id:"picking"}
execute if data storage ckenja.crafter88: picking.item.Item.tag.ckenja.crafter88{id:"skill"} run function ckenja.crafter88:picking/item/skill
execute if score $picking.cancel ckenja.crafter88 matches 0 run function ckenja.crafter88:picking/item/check
