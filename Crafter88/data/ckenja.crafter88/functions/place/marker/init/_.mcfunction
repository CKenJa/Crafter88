#> ckenja.crafter88:place/marker/init/_
#
#
#
# @within function ckenja.crafter88:place/marker/init/*

tag @s add ckenja.crafter88.place.marker
execute if score #place.marker.boolean ckenja.crafter88 matches 1.. run tag @s add ckenja.crafter88.place.marker.second
execute unless score #place.marker.boolean ckenja.crafter88 matches 1.. run tag @s add ckenja.crafter88.place.marker.first
scoreboard players operation @s ckenja.crafter88 = $place.ownerID ckenja.crafter88
