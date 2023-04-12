#> ckenja.display_manager:process/block_display
#
#
#
# @within function ckenja.display_manager:api/process

scoreboard players operation _ OhMyDatID = @s ckenja.display_manager.owner
function #oh_its_dat:please
#更新済みリスト
    execute store result storage ckenja.display_manager:_ updated[-1].owner int 1 run scoreboard players get @s ckenja.display_manager.owner
    execute store result storage ckenja.display_manager:_ updated[-1].type int 1 run scoreboard players get @s ckenja.display_manager.type
    execute store result storage ckenja.display_manager:_ unduplication int 1 run data modify storage ckenja.display_manager:_ updatedList merge from storage ckenja.display_manager:_ updated
    execute if data storage ckenja.display_manager:_ {unduplication:0} run kill @s

# キャッシュを削除
    function array_util:api/force_delete_cache
# 配列を設定
    data modify storage array_util: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.display_manager.Array
# 目標の添字を設定
    scoreboard players operation $Move ArrayUtilInput = @s ckenja.display_manager.type
# 移動
    function array_util:api/move
# キル
    execute if data storage array_util: Array[-1].kill{value:true} run kill @s
# 出力
    execute if data storage array_util: Array[-1].unchanged{value:0} run data modify entity @s transformation set from storage array_util: Array[-1].transformation
    data modify storage array_util: Array[-1].unchanged.value set value 1
