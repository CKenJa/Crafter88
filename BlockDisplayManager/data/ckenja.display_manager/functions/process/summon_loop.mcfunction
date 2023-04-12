#> ckenja.display_manager:process/summon_loop
#
#
#
# @within
#   function ckenja.display_manager:api/process
#   function ckenja.display_manager:process/summon_loop

execute store result score _ OhMyDatID run data get storage ckenja.display_manager:_ ownerListallUpdateList[{unchanged:{value:1}}]
function #oh_its_dat:please
execute summon block_display run function ckenja.display_manager:process/summon
data modify storage ckenja.display_manager:_ ownerListallUpdateList[{unchanged:{value:1}}].unchanged.value set value 0
execute if data storage ckenja.display_manager:_ ownerListallUpdateList[{unchanged:{value:1}}] run function ckenja.display_manager:process/summon_loop
