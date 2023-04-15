#> ckenja.crafter88:skill/is_air.not_y
#
#
#
# @within function ckenja.crafter88:skill/is_air
execute if score $skill.direction ckenja.crafter88 matches 90 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value 1
execute if score $skill.direction ckenja.crafter88 matches 270 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value -1
execute if score $skill.direction ckenja.crafter88 matches 180 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value 1
execute if score $skill.direction ckenja.crafter88 matches 0 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value -1
