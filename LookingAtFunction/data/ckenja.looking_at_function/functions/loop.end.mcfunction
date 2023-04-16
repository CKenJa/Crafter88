#> ckenja.looking_at_function:loop.end
#
#
#
# @within function ckenja.looking_at_function:loop

data remove storage util: out
execute store success storage ckenja.looking_at_function: success int 1 run execute unless block ~ ~ ~ #ckenja.looking_at_function:air
execute if data storage ckenja.looking_at_function: {success:1} run function ckenja.looking_at_function:not_air
