#> ckenja.crafter88:skill/reverse_z
#
#
#
# @within function ckenja.crafter88:skill/main

execute store result score $skill.size.z ckenja.crafter88 run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.size[2]
scoreboard players operation $skill.start_pos.z ckenja.crafter88 *= #-1 ckenja.crafter88
scoreboard players operation $skill.start_pos.z ckenja.crafter88 += $skill.size.z ckenja.crafter88
scoreboard players remove $skill.start_pos.z ckenja.crafter88 1
