#> ckenja.looking_at_function:not_air
#
#
#
# @within function ckenja.looking_at_function:loop.end

execute unless data storage ckenja.looking_at_function: {as_entity:true} run function #ckenja.looking_at_function:marker
execute if data storage ckenja.looking_at_function: {as_entity:true} as @a[tag=ckenja.looking_at_function.right_click,distance=..7] run function #ckenja.looking_at_function:player
