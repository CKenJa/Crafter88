#> ckenja.looking_at_function:loop2
#
#
#
# @within function ckenja.looking_at_function:loop

data modify storage ckenja.looking_at_function:_ direction.value set from storage util: out[-1]
data modify storage ckenja.looking_at_function:_ directionList append from storage ckenja.looking_at_function:_ direction
data remove storage util: out[-1]
# 再起の都合上、全ての分岐にif data storage util: out[-1]を入れないと意図せず動く
    execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ direction{value:"+X"} positioned ~1 ~ ~ align x run function ckenja.looking_at_function:x.y
    execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ direction{value:"-X"} positioned ~-1 ~ ~ align x positioned ~0.99 ~ ~ run function ckenja.looking_at_function:x.y
    execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ direction{value:"+Y"} positioned ~ ~1 ~ align y run function ckenja.looking_at_function:y.x
    execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ direction{value:"-Y"} positioned ~ ~-1 ~ align y positioned ~ ~0.99 ~ run function ckenja.looking_at_function:y.x
    execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ direction{value:"+Z"} positioned ~ ~ ~1 align z run function ckenja.looking_at_function:z.x
    execute if data storage util: out[-1] if data storage ckenja.looking_at_function:_ direction{value:"-Z"} positioned ~ ~ ~-1 align z positioned ~ ~ ~0.99 run function ckenja.looking_at_function:z.x
