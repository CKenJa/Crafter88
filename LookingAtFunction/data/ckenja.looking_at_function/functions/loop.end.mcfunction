#> ckenja.looking_at_function:loop.end
#
#
#
# @within function ckenja.looking_at_function:loop

data remove storage util: out
execute store success storage ckenja.looking_at_function: success int 1 run execute unless block ~ ~ ~ #ckenja.looking_at_function:air
execute unless block ~ ~ ~ #ckenja.looking_at_function:air run function ckenja.looking_at_function:not_air
