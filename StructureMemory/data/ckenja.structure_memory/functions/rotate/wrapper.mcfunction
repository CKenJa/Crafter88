#> ckenja.structure_memory:rotate/_
#
# 指定されたIDの構造物を回転して別の場所に保存します
# 元となる構造物のチャンクを1tick前にロードしている必要があります。
# また、コマンドブロックからだとうまく動きません
#
# @input
#   score
#       $tmp.id ckenja.structure_memory
#       $tmp.input.size.x ckenja.structure_memory
#       $tmp.input.size.y ckenja.structure_memory
#       $tmp.input.size.z ckenja.structure_memory
#       $tmp.input.rotate ckenja.structure_memory
#
#   storage
#       ckenja.structure_memory: load ロードし続けるか否か boolean デフォルトはfalse
#
# @output score $tmp.id ckenja.structure_memory
#
# @within tag/function ckenja.structure_memory:rotate

function #ckenja.structure_memory:access
data modify storage anywhere: function set value "ckenja.structure_memory/rotate"
data modify storage anywhere: at set value {Pos:[0d,16d,0d],Dimension:"ckenja.structure_memory:void"}
execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players operation $tmp.output.x ckenja.structure_memory += #chunk_size ckenja.structure_memory
execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players operation $tmp.output.z ckenja.structure_memory += #chunk_size ckenja.structure_memory
execute in ckenja.structure_memory:void positioned 0.0 0.0 0.0 run function #anywhere:run
