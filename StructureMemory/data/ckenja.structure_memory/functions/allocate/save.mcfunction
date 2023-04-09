#> ckenja.structure_memory:allocate/save
#
#
#
# @within function ckenja.structure_memory:anywhere_listener

clone 16 16 16 63 63 63 ~16 ~16 ~16 masked
# forceload remove ~32 ~32
    execute unless data storage ckenja.structure_memory: {load:true} run data merge storage anywhere: {function:"ckenja.structure_memory/unload"}
