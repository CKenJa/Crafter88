#> ckenja.structure_memory:allocate/wrapper
#
# 実行地点の構造物を保存し、その場所のIDを返します。
# 構造物の座標が最小の角で実行すること。
# またチャンクロードの都合上、1tickに複数回呼び出さないこと。
#
# @input
#   score
#       $tmp.input.size.x ckenja.structure_memory
#       $tmp.input.size.y ckenja.structure_memory
#       $tmp.input.size.z ckenja.structure_memory
#   storage
#       ckenja.structure_memory: load ロードし続けるか否か boolean デフォルトはfalse
#
# @output
#   score
#       $tmp.id ckenja.structure_memory
#
# @within tag/function ckenja.structure_memory:allocate

# 一時場所へ移動。今回はすべて使うが、空気はコピーされないのでリセットしてから
    execute in ckenja.structure_memory:void run fill 16 16 16 63 63 63 structure_void replace
    clone ~ ~ ~ ~47 ~47 ~47 to ckenja.structure_memory:void 16 16 16 masked

function ckenja.structure_memory:allocate/_
