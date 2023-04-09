#> ckenja.structure_memory:free/_
#
# 構造物の割り当てを解除します。未実装です。
#
# @input score $tmp.id ckenja.structure_memory
#
# @within tag/function ckenja.structure_memory:free

# IDを開放済みリストへ
    execute store result score $tmp.id ckenja.structure_memory run data get storage ckenja.structure_memory: free_pages[-1]

# 最新の開放済みIDをアンロード
    execute store result score $tmp.id ckenja.structure_memory run data get storage ckenja.structure_memory: free_pages[-2]
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/size"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players operation $tmp.input.size.x ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[1] double 1 run scoreboard players operation $tmp.input.size.y ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players operation $tmp.input.size.z ckenja.structure_memory += #chunk_size ckenja.structure_memory
    function #anywhere:run

# 次に呼び出されるときのためにチャンクロードしておく
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/size"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players operation $tmp.input.size.x ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[1] double 1 run scoreboard players operation $tmp.input.size.y ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players operation $tmp.input.size.z ckenja.structure_memory += #chunk_size ckenja.structure_memory
    function #anywhere:run
