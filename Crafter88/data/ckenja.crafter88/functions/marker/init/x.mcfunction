#> ckenja.crafter88:marker/init/x
#
#
#
# @within function ckenja.crafter88:marker/init/x.pre

scoreboard players set @s ckenja.crafter88.x 1
scoreboard players operation @s ckenja.crafter88.x += $marker.x ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.y = $marker.y ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.z = $marker.z ckenja.crafter88
data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value 1
function ckenja.crafter88:marker/init/_

