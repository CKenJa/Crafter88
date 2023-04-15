#> ckenja.crafter88:marker/clone/anywhere
#
# as anywhere functionのmarker
#
# @within function ckenja.crafter88:anywhere_listener

data modify storage ckenja.crafter88: marker.clone.anywhere set value "0"
execute if block ~ ~ ~ #minecraft:doors[half=upper] run function ckenja.crafter88:marker/clone/-y
execute if block ~ ~ ~ #minecraft:doors[half=lower] run function ckenja.crafter88:marker/clone/y
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=west] run function ckenja.crafter88:marker/clone/x
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=east] run function ckenja.crafter88:marker/clone/-x
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=north] run function ckenja.crafter88:marker/clone/z
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=south] run function ckenja.crafter88:marker/clone/-z
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=east] run function ckenja.crafter88:marker/clone/x
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=west] run function ckenja.crafter88:marker/clone/-x
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=south] run function ckenja.crafter88:marker/clone/z
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=north] run function ckenja.crafter88:marker/clone/-z
execute if data storage ckenja.crafter88: marker.clone{anywhere:"0"} run clone ~ ~ ~ ~ ~ ~ to ckenja.structure_memory:void 0 0 0 replace
execute unless block ~1 ~ ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: marker.directionList append value {value:"+X"}
execute unless block ~-1 ~ ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: marker.directionList append value {value:"-X"}
execute unless block ~ ~1 ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: marker.directionList append value {value:"+Y"}
execute unless block ~ ~-1 ~ #ckenja.crafter88:air run data modify storage ckenja.crafter88: marker.directionList append value {value:"-Y"}
execute unless block ~ ~ ~1 #ckenja.crafter88:air run data modify storage ckenja.crafter88: marker.directionList append value {value:"+Z"}
execute unless block ~ ~ ~-1 #ckenja.crafter88:air run data modify storage ckenja.crafter88: marker.directionList append value {value:"-Z"}
