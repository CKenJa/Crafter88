#> ckenja.structure_memory:allocate/new_page
#
#
#
# @within function ckenja.structure_memory:allocate/_

# 次にallocateで使いそうなところをあらかじめ読み込んでおく
    scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
    scoreboard players add $tmp.id ckenja.structure_memory 2
    function #ckenja.structure_memory:access
    data modify storage anywhere: function set value "ckenja.structure_memory/allocate/new_page"
    data modify storage anywhere: at set value {Pos:[0d,0d,0d],Dimension:"ckenja.structure_memory:void"}
    execute store result storage anywhere: at.Pos[0] double 1 run scoreboard players get $tmp.output.x ckenja.structure_memory
    execute store result storage anywhere: at.Pos[2] double 1 run scoreboard players get $tmp.output.z ckenja.structure_memory
    function #anywhere:run

scoreboard players add $max_used_page ckenja.structure_memory 1
scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
