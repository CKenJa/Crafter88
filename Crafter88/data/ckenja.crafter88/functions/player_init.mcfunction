#> ckenja.crafter88:player_init
#
#
#
# @within advancement ckenja.crafter88:tick

# ID割り当て
    function oh_my_dat:please

# プレイヤーIDリストに登録
    execute unless data storage ckenja.crafter88: player_init.id_list run data modify storage ckenja.crafter88: player_init.id_list set value []
    execute store result storage ckenja.crafter88: player_init.id int 1 run scoreboard players get @s OhMyDatID
    data modify storage ckenja.crafter88: player_init.id_list merge from storage ckenja.crafter88: player_init.id
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.tick.counter set value 1
