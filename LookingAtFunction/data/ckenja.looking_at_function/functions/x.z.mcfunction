#> ckenja.looking_at_function:x.z
#
#
#
# @within function ckenja.looking_at_function:x.y

execute if data storage util: out[-1] unless data storage ckenja.looking_at_function:_ directionList[{value:"+Z"}] unless data storage ckenja.looking_at_function:_ directionList[{value:"-Z"}] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage util:_ signs{Z:1} align z run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage util:_ signs{Z:-1} align z positioned ~ ~ ~0.99 run function ckenja.looking_at_function:loop
