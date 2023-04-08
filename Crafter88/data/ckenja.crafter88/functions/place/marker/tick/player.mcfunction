#> ckenja.crafter88:place/marker/tick/player
#
#
#
# @within function ckenja.crafter88:place/marker/tick/launch

function #oh_my_dat:please
data modify storage ckenja.crafter88: place.marker.tick.attackDirectionArray.value set from storage ckenja.crafter88: place.marker.attackDirection
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackArray.list append from storage ckenja.crafter88: place.marker.tick.attackDirectionArray
execute unless score $place.ownerID ckenja.crafter88 = @s OhMyDatID run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackArray.isAttack set value true
