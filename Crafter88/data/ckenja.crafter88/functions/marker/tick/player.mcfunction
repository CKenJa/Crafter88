#> ckenja.crafter88:marker/tick/player
#
#
#
# @within function ckenja.crafter88:marker/init/_

function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.list append from storage ckenja.crafter88: marker.tick.attackDirectionArray
execute unless score $player_id ckenja.crafter88 = @s OhMyDatID run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.isAttack set value true
