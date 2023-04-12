#> ckenja.display_manager:process/owner_loop
#
#
#
# @within
#   function ckenja.display_manager:api/process
#   function ckenja.display_manager:process/owner_loop

execute store result score _ OhMyDatID run data get storage ckenja.display_manager:_ ownerList[-1]
data remove storage ckenja.display_manager:_ ownerList[-1]
function #oh_its_dat:please
data modify storage ckenja.display_manager:_ allUpdateList append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.display_manager.Array
execute if data storage ckenja.display_manager:_ ownerList[-1] run function ckenja.display_manager:process/owner_loop
