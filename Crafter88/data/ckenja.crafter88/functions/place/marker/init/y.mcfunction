#> ckenja.crafter88:place/marker/init/y
#
#
#
# @within function ckenja.crafter88:place/marker/unless_air

function ckenja.crafter88:place/marker/init/_
scoreboard players set @s ckenja.crafter88.y 1
scoreboard players operation @s ckenja.crafter88.x = $place.marker.x ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.y += $place.marker.y ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.z = $place.marker.z ckenja.crafter88
data modify entity @s data.ckenja.crafter88.place.marker.attackDirection.y set value 1