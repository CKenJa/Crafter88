#> ckenja.looking_at_function:loop
#
#
#
# @within
#   function ckenja.looking_at_function:x.z
#   function ckenja.looking_at_function:y.z
#   function ckenja.looking_at_function:z.y
#   function ckenja.looking_at_function:marker

#>
#@private
    #declare score_holder $is_air

# execute storeは途中のサブコマンドで条件を満たさない場合など、値が代入されない場合もあるので、リセットする
    data remove storage ckenja.looking_at_function: isAir
    execute store result storage ckenja.looking_at_function: isAir int 1 if block ~ ~ ~ #ckenja.looking_at_function:air if entity @a[tag=ckenja.looking_at_function.right_click,distance=..5]
    execute unless data storage ckenja.looking_at_function: {isAir:1} run function ckenja.looking_at_function:loop.end
    execute if data storage ckenja.looking_at_function: {isAir:1} run function ckenja.looking_at_function:loop2
