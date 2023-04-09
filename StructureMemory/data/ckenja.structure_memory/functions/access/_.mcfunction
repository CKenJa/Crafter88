#> ckenja.structure_memory:access/_
#
# 指定されたIDの座標を返します。構造物はckenja.structure_memory:voidディメンションの~16 ~16 ~16 ~47 ~47 ~47に保存してあります
#
# @input
#   score
#       $tmp.id ckenja.structure_memory 割り当てたID。書き留めておくこと。
#
# @output
#   score
#       $tmp.output.x ckenja.structure_memory
#       $tmp.output.z ckenja.structure_memory
#
# @within tag/function ckenja.structure_memory:access

# メモリ空間は1024(リージョン)x8(Z)x8(X)=65535。これを表現するのは16ビットで十分。INTは32ビットなので足りる
# 0000000000000000
# [8][  1024×8   ]
# IDを8で割れば[1024x8]の部分だけが残る。余りが[8の部分] 0始まり
# 4x4チャンクで1つの建築を割り当て
    scoreboard players operation $tmp.id.z ckenja.structure_memory = $tmp.id ckenja.structure_memory
    scoreboard players operation $tmp.id.z ckenja.structure_memory %= #max_x ckenja.structure_memory
    scoreboard players operation $tmp.id.x ckenja.structure_memory = $tmp.id ckenja.structure_memory
    scoreboard players operation $tmp.id.x ckenja.structure_memory /= #max_x ckenja.structure_memory

scoreboard players operation $tmp.output.x ckenja.structure_memory = $tmp.id.x ckenja.structure_memory
scoreboard players operation $tmp.output.z ckenja.structure_memory = $tmp.id.z ckenja.structure_memory

scoreboard players operation $tmp.output.x ckenja.structure_memory *= #page_size ckenja.structure_memory
scoreboard players operation $tmp.output.z ckenja.structure_memory *= #page_size ckenja.structure_memory
