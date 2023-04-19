#> ckenja.crafter88:skill/particle/color
#
#
#
# @within function ckenja.crafter88:skill/particle/main

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.tick{counter:0} run data modify storage ckenja.crafter88: skill.particle set value "now_summoning"
execute if data storage ckenja.crafter88: skill{particle:"is_air"} run particle dust 0.5 0 1 0.5 ^ ^ ^0.51 0 0 0 1 0 force @s
execute if data storage ckenja.crafter88: skill{particle:"not_air"} run particle dust 0.000 1.000 0.000 0.5 ^ ^ ^0.51 0 0 0 1 0 force @s
execute if data storage ckenja.crafter88: skill{particle:"now_summoning"} run particle dust 0.5 0.5 0.5 0.5 ^ ^ ^0.51 0 0 0 1 0 force @s
