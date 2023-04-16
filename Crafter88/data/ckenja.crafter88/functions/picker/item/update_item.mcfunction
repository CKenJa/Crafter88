#> ckenja.crafter88:picker/item/update_item
#
#
#
# @within function ckenja.crafter88:picker/item/check_pos

data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item set from storage ckenja.crafter88: picker.item.Item
data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item.tag.ckenja.crafter88.id set value "skill"
execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item.tag.ckenja.crafter88.skill.id int 1 run scoreboard players get $max_skill_id ckenja.crafter88
data modify entity @s Item set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item
