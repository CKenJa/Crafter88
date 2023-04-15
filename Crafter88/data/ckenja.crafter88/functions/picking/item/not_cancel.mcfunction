#> ckenja.crafter88:picking/item/not_cancel
#
#
#
# @within function ckenja.crafter88:picking/item/check

scoreboard players set $picking.cancel ckenja.crafter88 0
execute summon armor_stand run function ckenja.crafter88:picking/item/armor_stand
execute if score $picking.success ckenja.crafter88 matches 1 run data modify entity @s Item set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item
