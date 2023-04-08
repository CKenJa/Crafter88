#> ckenja.looking_at_function:loop2
#
#
#
# @within function ckenja.looking_at_function:loop

data modify storage ckenja.looking_at_function:_ direction set from storage util: out[-1]
data remove storage util: out[-1]
execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ {direction:"+X"} positioned ~1 ~ ~ if entity @s[distance=..5] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ {direction:"-X"} positioned ~-1 ~ ~ if entity @s[distance=..5] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ {direction:"+Y"} positioned ~ ~1 ~ if entity @s[distance=..5] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ {direction:"-Y"} positioned ~ ~-1 ~ if entity @s[distance=..5] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ {direction:"+Z"} positioned ~ ~ ~1 if entity @s[distance=..5] run function ckenja.looking_at_function:loop
execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ {direction:"-Z"} positioned ~ ~ ~-1 if entity @s[distance=..5] run function ckenja.looking_at_function:loop
