#> ckenja.looking_at_function:loop
#
#
#
# @within
#   function ckenja.looking_at_function:loop2
#   function ckenja.looking_at_function:marker

#declare score_holder $picking.fake_break

execute store success score $picking.fake_break ckenja.crafter88 run execute if block ~ ~ ~ #ckenja.crafter88:air
execute if score $picking.fake_break ckenja.crafter88 matches 0 run function ckenja.looking_at_function:not_air
execute if score $picking.fake_break ckenja.crafter88 matches 1 run function ckenja.looking_at_function:loop2
