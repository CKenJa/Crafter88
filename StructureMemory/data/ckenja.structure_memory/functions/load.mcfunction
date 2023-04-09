#> ckenja.structure_memory:load
#
#
#
# @within tag/function minecraft:load


#>
#@public
scoreboard objectives add ckenja.structure_memory dummy

#>
#@within
#   function ckenja.structure_memory:access/**
#   function ckenja.structure_memory:load
#declare score_holder #max_x
scoreboard players set #max_x ckenja.structure_memory 8

#>
#@internal
    #declare score_holder #page_size
    #declare score_holder #chunk_size
    #declare score_holder #structure_size
scoreboard players set #page_size ckenja.structure_memory 64
scoreboard players set #chunk_size ckenja.structure_memory 16
scoreboard players set #structure_size ckenja.structure_memory 48

#>
#@within
#   function ckenja.structure_memory:allocate/**
#   function ckenja.structure_memory:free/**
#   function ckenja.structure_memory:load
#declare score_holder $max_used_page
execute unless score $max_used_page ckenja.structure_memory matches -2147483648..2147483647 run function ckenja.structure_memory:load.chunk

execute in ckenja.structure_memory:void run forceload add 32 32
