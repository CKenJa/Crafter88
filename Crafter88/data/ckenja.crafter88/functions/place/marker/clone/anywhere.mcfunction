#> ckenja.crafter88:place/marker/clone/anywhere
#
# as anywhere functionのmarker
#
# @within function ckenja.crafter88:place/marker/clone/listener

clone ~ ~ ~ ~ ~ ~ to overworld 0 20 0 replace
execute unless block ~1 ~ ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: place.marker.directionList append value {value:"+X"}
execute unless block ~-1 ~ ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: place.marker.directionList append value {value:"-X"}
execute unless block ~ ~1 ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: place.marker.directionList append value {value:"+Y"}
execute unless block ~ ~-1 ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: place.marker.directionList append value {value:"-Y"}
execute unless block ~ ~ ~1 #ckenja.crafter88:air run data modify storage ckenja.crafter88: place.marker.directionList append value {value:"+Z"}
execute unless block ~ ~ ~-1 #ckenja.crafter88:air run data modify storage ckenja.crafter88: place.marker.directionList append value {value:"-Z"}
