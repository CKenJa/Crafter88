#> ckenja.crafter88:place/right_click
#
#
#
# @within function ckenja.crafter88:right_click/_

scoreboard players operation $place.ownerID ckenja.crafter88 = @s OhMyDatID
function #oh_my_dat:please
execute if block ~ ~ ~ #ckenja.crafter88:air summon marker run function ckenja.crafter88:place/marker/init/first
