#> ckenja.structure_memory:load/_
#
# 構造物を次tickから読み込めるよう、チャンクロードします
#
# @input score $tmp.id ckenja.structure_memory
#
# @within tag/function ckenja.structure_memory:load

function #ckenja.structure_memory:access
data modify storage anywhere: function set value "ckenja.structure_memory/load"
data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get $tmp.output.x ckenja.structure_memory
execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get $tmp.output.z ckenja.structure_memory
execute in ckenja.structure_memory:void positioned 0.0 0.0 0.0 run function #anywhere:run
