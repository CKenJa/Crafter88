#> ckenja.crafter88:skill/particle/is_air
#
#
#
# @within function ckenja.crafter88:skill/particle/is_air.pre

data modify storage ckenja.crafter88: skill.particle set value "is_air"
# 吹っ飛ばし用に方向を変換
    execute if entity @s[x_rotation=-45..45] run function ckenja.crafter88:skill/particle/get_direction
    execute unless entity @s[x_rotation=-45..90] rotated 0 90 run function ckenja.crafter88:skill/particle/main
    execute unless entity @s[x_rotation=-90..45] rotated 0 -90 run function ckenja.crafter88:skill/particle/main
