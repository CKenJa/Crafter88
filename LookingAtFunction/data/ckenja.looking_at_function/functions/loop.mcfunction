#> ckenja.looking_at_function:loop
#
#
#
# @within
#   function ckenja.looking_at_function:x.z
#   function ckenja.looking_at_function:y.z
#   function ckenja.looking_at_function:z.y
#   function ckenja.looking_at_function:marker

#declare score_holder $is_air
data modify storage ckenja.looking_at_function: isAir set value 0
execute if block ~ ~ ~ #ckenja.looking_at_function:air if entity @a[tag=ckenja.looking_at_function.right_click,distance=..5] run data modify storage ckenja.looking_at_function: isAir set value 1
execute if data storage ckenja.looking_at_function: {isAir:0} run function ckenja.looking_at_function:loop.end
execute if data storage ckenja.looking_at_function: {isAir:1} run function ckenja.looking_at_function:loop2
