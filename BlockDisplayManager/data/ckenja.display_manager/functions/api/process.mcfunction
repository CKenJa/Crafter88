#> ckenja.display_manager:api/process
#
#
#
# @public


execute as @e[type=block_display,tag=ckenja.display_manager.block_display] run function ckenja.display_manager:process/block_display
# update使ったオーナーのリスト全部集めて一個のリストにして、更新してないのを探す
    execute if data storage ckenja.display_manager:_ ownerList[-1] run function ckenja.display_manager:process/owner_loop
    execute if data storage ckenja.display_manager:_ allUpdateList[{unchanged:{value:1}}] run function ckenja.display_manager:process/summon_loop

data modify storage ckenja.display_manager:_ allUpdateList set value []
data modify storage ckenja.display_manager:_ updatedList set value []
data modify storage ckenja.display_manager:_ ownerList set value []
