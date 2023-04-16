#> ckenja.crafter88:picker/item/armor_stand
#
#
#
# @within function ckenja.crafter88:picker/item/check_pos

data modify storage ckenja.crafter88: picker.item.HandItems set value [{},{}]
data modify storage ckenja.crafter88: picker.item.HandItems[0] set from storage ckenja.crafter88: picker.item.Item
data modify entity @s HandItems set from storage ckenja.crafter88: picker.item.HandItems
execute store result score $picker.message.unusable_item ckenja.crafter88 if predicate ckenja.crafter88:picker/item/armor_stand
clear @s
kill @s
