#> ckenja.crafter88:marker/tick/pre
#
#
#
# @within function ckenja.crafter88:tick/_

execute store success score $tick.unequalTime ckenja.crafter88 run data modify entity @s data.ckenja.crafter88.time set from storage ckenja.crafter88: tick.time
execute if score $tick.unequalTime ckenja.crafter88 matches 1 run function ckenja.crafter88:marker/tick/_
