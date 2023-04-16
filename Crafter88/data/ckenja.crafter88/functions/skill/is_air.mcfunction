#> ckenja.crafter88:skill/is_air
#
#
#
# @within function ckenja.crafter88:skill/is_air.pre

function ckenja.crafter88:skill/get_direction
# 吹っ飛ばし用に方向を変換
    execute if entity @s[x_rotation=-45..45] run function ckenja.crafter88:skill/is_air.not_y
    execute unless entity @s[x_rotation=-45..90] run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.y set value -1
    execute unless entity @s[x_rotation=-90..45] run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.y set value 1

function ckenja.crafter88:skill/main
