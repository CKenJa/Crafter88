#> ckenja.crafter88:picker/item/check_item_owner
#
#
#
# @within function ckenja.crafter88:picker/item/tick

scoreboard players set $picker.item.owner ckenja.crafter88 0
execute on origin if entity @s[tag=ckenja.crafter88.picker.item.origin] run scoreboard players set $picker.item.owner ckenja.crafter88 1
execute if score $picker.item.owner ckenja.crafter88 matches 1 run function ckenja.crafter88:picker/item/check_special_item
tag @s add ckenja.crafter88.picker.item.processed
