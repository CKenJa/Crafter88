#> ckenja.crafter88:skill/get_direction
#
#
#
# @within
#   function ckenja.crafter88:skill/not_air
#   function ckenja.crafter88:skill/is_air

execute if entity @s[y_rotation=45..135] run scoreboard players set $skill.direction ckenja.crafter88 90
execute if entity @s[y_rotation=-135..-45] run scoreboard players set $skill.direction ckenja.crafter88 270
execute if entity @s[y_rotation=135..-135] run scoreboard players set $skill.direction ckenja.crafter88 180
execute if entity @s[y_rotation=-45..45] run scoreboard players set $skill.direction ckenja.crafter88 0
