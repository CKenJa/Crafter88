#> ckenja.crafter88:skill/reverse_x
#
#
#
# @within function ckenja.crafter88:skill/main

execute store result score $skill.size.x ckenja.crafter88 run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.size[0]
scoreboard players operation $skill.start_pos.x ckenja.crafter88 *= #-1 ckenja.crafter88
scoreboard players operation $skill.start_pos.x ckenja.crafter88 += $skill.size.x ckenja.crafter88
scoreboard players remove $skill.start_pos.x ckenja.crafter88 1
