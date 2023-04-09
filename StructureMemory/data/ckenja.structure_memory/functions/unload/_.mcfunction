#> ckenja.structure_memory:unload/_
#
# チチャンクをアンロードします
#
# @input score $tmp.id ckenja.structure_memory
#
# @within tag/function ckenja.structure_memory:load

function #ckenja.structure_memory:access
data modify storage anywhere: function set value "ckenja.structure_memory/unload"
data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get $tmp.output.x ckenja.structure_memory
execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get $tmp.output.z ckenja.structure_memory
function #anywhere:run
