#> ckenja.crafter88:right_click/_
#
#
#
# @within advancement ckenja.crafter88:right_click

advancement revoke @s only ckenja.crafter88:right_click
scoreboard players operation $player_id ckenja.crafter88 = @s OhMyDatID
data modify storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88 set from entity @s SelectedItem.tag.ckenja.crafter88
execute if data storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88{detecting_crossbow:true} run function ckenja.crafter88:right_click/crossbow
execute if data storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88{id:"skill"} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.tick{counter:0} run function ckenja.crafter88:place/right_click
#execute if data storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88{id:"picking"} run
function ckenja.crafter88:picking/right_click/_

