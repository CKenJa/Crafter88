#> ckenja.crafter88:marker/tick/check_count
#
#
#
# @within function ckenja.crafter88:marker/tick/check_time

scoreboard players operation _ OhMyDatID = @s ckenja.crafter88
function #oh_its_dat:please
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.tick{counter:1} unless entity @e[type=marker,tag=ckenja.crafter88.marker.used,distance=..0.01] run function ckenja.crafter88:marker/tick/check_pierce
