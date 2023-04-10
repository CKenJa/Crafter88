#> ckenja.looking_at_function:run
#
#
#
# @public

data modify storage util: in set value 10
data modify storage ckenja.looking_at_function:_ directionList set value []
data remove storage ckenja.looking_at_function:_ direction
tag @s add ckenja.looking_at_function.right_click
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function ckenja.looking_at_function:marker
tag @s remove ckenja.looking_at_function.right_click
data remove storage ckenja.looking_at_function: as_entity
