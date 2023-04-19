#> ckenja.crafter88:picker/item/check_special_item
#
#
#
# @within function ckenja.crafter88:picker/item/check_item_owner

execute store result score $test ckenja.crafter88 run data modify storage ckenja.crafter88: picker.item set from entity @s Item
execute store result score $picker.message.cancel ckenja.crafter88 if data storage ckenja.crafter88: picker.item.tag.ckenja.crafter88{id:"picker"}
execute if score $picker.message.cancel ckenja.crafter88 matches 0 if score $picker.set_item_mode ckenja.crafter88 matches 1 run function ckenja.crafter88:picker/item/check_pos
