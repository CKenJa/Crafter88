#> ckenja.structure_memory:allocate/_
#
# 一時場所の構造物を新しく割り当てた場所に移動します
#
# @within
#   function ckenja.structure_memory:allocate/wrapper
#   function ckenja.structure_memory:rotate/_

# 開放済みリスト[-1]を取得する。
    execute store result score $tmp.id ckenja.structure_memory run data get storage ckenja.structure_memory: free_pages[-1]

# リストが空なら最小未開放を使う
    execute if score $tmp.id ckenja.structure_memory matches 0 run function ckenja.structure_memory:allocate/new_page

# 座標を取得
    function #ckenja.structure_memory:access

# 大きさを見ていらない部分を消す
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/size"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players operation $tmp.input.size.x ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[1] double 1 run scoreboard players operation $tmp.input.size.y ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players operation $tmp.input.size.z ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute unless data storage anywhere: at{Pos:[64d,64d,64d]} run function #anywhere:run

# 保存場所へ移動させる。チャンクロード開始・解除も忘れずに。
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/save"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get $tmp.output.x ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get $tmp.output.z ckenja.structure_memory
    function #anywhere:run
