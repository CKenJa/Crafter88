#> ckenja.looking_at_function:z.y
#
#
#
# @within function ckenja.looking_at_function:z.x

execute if data storage util: out[-1] unless data storage ckenja.looking_at_function:_ directionList[{value:"+Y"}] unless data storage ckenja.looking_at_function:_ directionList[{value:"-Y"}] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage util:_ signs{Y:1} align y run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage util:_ signs{Y:-1} align y positioned ~ ~0.99 ~ run function ckenja.looking_at_function:loop
