#> ckenja.crafter88:skill/particle/get_direction
#
#
#
# @within function ckenja.crafter88:skill/particle/is_air

execute if entity @s[y_rotation=45..135] rotated 90 0 run function ckenja.crafter88:skill/particle/main
execute if entity @s[y_rotation=-135..-45] rotated 270 0 run function ckenja.crafter88:skill/particle/main
execute if entity @s[y_rotation=135..-135] rotated 180 0 run function ckenja.crafter88:skill/particle/main
execute if entity @s[y_rotation=-45..45] rotated 0 0 run function ckenja.crafter88:skill/particle/main
