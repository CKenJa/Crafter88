#> ckenja.crafter88:marker/tick/_
#
#
#
# @within function ckenja.crafter88:marker/tick/pre

scoreboard players operation _ OhMyDatID = @s ckenja.crafter88
function #oh_its_dat:please
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.tick{counter:1} run function ckenja.crafter88:marker/tick/count0
