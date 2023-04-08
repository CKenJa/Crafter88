#> ckenja.structure_memory:anywhere_listener
#
#
#
# @within tag/function anywhere:functions
execute if data storage anywhere: {function:"ckenja.structure_memory/allocate/new_page"} run forceload add ~32 ~32
execute if data storage anywhere: {function:"ckenja.structure_memory/allocate/save"} run function ckenja.structure_memory:allocate/save
execute if data storage anywhere: {function:"ckenja.structure_memory/allocate/size"} run function ckenja.structure_memory:allocate/size
