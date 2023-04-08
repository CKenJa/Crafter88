#> ckenja.structure_memory:allocate/_
#
# 構造物を保存し、その場所のIDを返します。構造物の座標が最小の角で実行すること。
#
# @input
#   score
#       $tmp.input.size.x ckenja.structure_memory 構造物のX方向の大きさ0~48
#       $tmp.input.size.y ckenja.structure_memory 構造物のY方向の大きさ0~48
#       $tmp.input.size.z ckenja.structure_memory 構造物のZ方向の大きさ0~48
#
# @output
#   score
#       $tmp.id ckenja.structure_memory 割り当てたID。書き留めておくこと。
#
# @within tag/function ckenja.structure_memory:allocate

#>
#@private
    #declare score_holder $tmp.size.x
    #declare score_holder $tmp.size.y
    #declare score_holder $tmp.size.z

# 開放済みリスト[-1]を取得する。
    execute store result score $tmp.id ckenja.structure_memory run data get storage ckenja.structure_memory: free_pages[-1]

# リストが空なら最小未開放を使う
    execute if score $tmp.id ckenja.structure_memory matches 0 run function ckenja.structure_memory:allocate/new_page

# 座標を取得
    function #ckenja.structure_memory:access

# 一時場所へ移動。今回はすべて使うが、空気はコピーされないのでリセットしてから
    execute in ckenja.structure_memory:void run fill 16 16 16 63 63 63 structure_void replace
    clone ~ ~ ~ ~47 ~47 ~47 to ckenja.structure_memory:void 16 16 16 masked

# 大きさを見ていらない部分を消す
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/size"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players operation $tmp.input.size.x ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[1] double 1 run scoreboard players operation $tmp.input.size.y ckenja.structure_memory += #chunk_size ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players operation $tmp.input.size.z ckenja.structure_memory += #chunk_size ckenja.structure_memory
    function #anywhere:run

# 保存場所へ移動させる。チャンクロード開始・解除も忘れずに。
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/save"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get $tmp.output.x ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get $tmp.output.z ckenja.structure_memory
    function #anywhere:run
