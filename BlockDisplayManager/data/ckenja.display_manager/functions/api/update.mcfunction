#> ckenja.display_manager:api/update
#
#
#
# @public

function #oh_my_dat:please
#更新リスト
    data modify storage ckenja.display_manager:_ ownerList append value 0
    execute store result storage ckenja.display_manager:_ ownerList[-1] int 1 run scoreboard players get @s OhMyDatID
    function array_util:api/force_delete_cache
# 配列を設定
    data modify storage array_util: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.display_manager.Array
# 目標の添字を設定
    scoreboard players operation $Move ArrayUtilInput = $input.type ckenja.display_manager
# 移動
    function array_util:api/move
# 置換
    execute store result storage array_util: Array[-1].unchanged.value int 1 run data modify storage array_util: Array[-1] set from storage ckenja.display_manager: input
    execute if data storage array_util: Array[-1].kill{value:true} run data modify storage array_util: Array[-1].unchanged.value set value 1
# 戻す
    function array_util:api/revert
# 出力
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.display_manager.Array set from storage array_util: Array
