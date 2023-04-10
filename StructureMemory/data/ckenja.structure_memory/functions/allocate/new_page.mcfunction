#> ckenja.structure_memory:allocate/new_page
#
#
#
# @within function ckenja.structure_memory:allocate/_

# 次にallocateで使いそうなところをあらかじめ読み込んでおく
    scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
    scoreboard players add $tmp.id ckenja.structure_memory 2
    function #ckenja.structure_memory:load

# 次にallocateで使いそうなところをあらかじめ読み込んでおく
    scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
    scoreboard players add $tmp.id ckenja.structure_memory 3
    function #ckenja.structure_memory:load

# 次にallocateで使いそうなところをあらかじめ読み込んでおく
    scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
    scoreboard players add $tmp.id ckenja.structure_memory 4
    function #ckenja.structure_memory:load

# 次にallocateで使いそうなところをあらかじめ読み込んでおく
    scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
    scoreboard players add $tmp.id ckenja.structure_memory 5
    function #ckenja.structure_memory:load

scoreboard players add $max_used_page ckenja.structure_memory 1
scoreboard players operation $tmp.id ckenja.structure_memory = $max_used_page ckenja.structure_memory
