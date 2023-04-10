#> ckenja.crafter88:skill/get_direction
#
#
#
# @within
#   function ckenja.crafter88:skill/not_air
#   function ckenja.crafter88:skill/is_air

execute if entity @s[y_rotation=45..135] rotated 90 0 run function ckenja.crafter88:skill/main
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run function ckenja.crafter88:skill/main
execute if entity @s[y_rotation=135..-135] rotated 180 0 run function ckenja.crafter88:skill/main
execute if entity @s[y_rotation=-45..45] rotated 0 0 run function ckenja.crafter88:skill/main

execute if entity @s[y_rotation=45..135] run scoreboard players set $skill.direction ckenja.crafter88 90
execute if entity @s[y_rotation=-135..-45] run scoreboard players set $skill.direction ckenja.crafter88 -90
execute if entity @s[y_rotation=135..-135] run scoreboard players set $skill.direction ckenja.crafter88 180
execute if entity @s[y_rotation=-45..45] run scoreboard players set $skill.direction ckenja.crafter88 0
