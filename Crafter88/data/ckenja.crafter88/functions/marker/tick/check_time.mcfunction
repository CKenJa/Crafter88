#> ckenja.crafter88:marker/tick/check_time
#
#
#
# @within function ckenja.crafter88:tick/_

data remove storage ckenja.crafter88: marker.tick.data.ckenja.crafter88
data modify storage ckenja.crafter88: marker.tick.data.ckenja.crafter88 set from entity @s data.ckenja.crafter88
execute store success score $tick.unequalTime ckenja.crafter88 run data modify storage ckenja.crafter88: marker.tick.data.ckenja.crafter88.time set from storage ckenja.crafter88: tick.time
execute if score $tick.unequalTime ckenja.crafter88 matches 1 run function ckenja.crafter88:marker/tick/check_count
