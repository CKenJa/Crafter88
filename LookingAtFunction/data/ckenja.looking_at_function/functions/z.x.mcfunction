#> ckenja.looking_at_function:z.x
#
#
#
# @within function ckenja.looking_at_function:loop2

execute if data storage util: out[-1] unless data storage ckenja.looking_at_function:_ directionList[{value:"+X"}] unless data storage ckenja.looking_at_function:_ directionList[{value:"-X"}] run function ckenja.looking_at_function:z.y
execute if data storage util: out[-1] if data storage util:_ signs{X:1} align x run function ckenja.looking_at_function:z.y
execute if data storage util: out[-1] if data storage util:_ signs{X:-1} align x positioned ~0.99 ~ ~ run function ckenja.looking_at_function:z.y
