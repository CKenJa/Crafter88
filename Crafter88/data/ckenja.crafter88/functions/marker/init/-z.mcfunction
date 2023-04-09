#> ckenja.crafter88:marker/init/-z
#
#
#
# @within function ckenja.crafter88:marker/tick/unless_air

scoreboard players set @s ckenja.crafter88.z -1
scoreboard players operation @s ckenja.crafter88.x = $marker.x ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.y = $marker.y ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.z += $marker.z ckenja.crafter88
data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value -1
function ckenja.crafter88:marker/init/_
