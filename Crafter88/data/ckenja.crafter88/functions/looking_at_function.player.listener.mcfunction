#> ckenja.crafter88:looking_at_function.player.listener
#
#
#
# @within tag/function ckenja.looking_at_function:player

execute if data storage ckenja.looking_at_function: {function:"ckenja.crafter88:picker/right_click"} align xyz run function ckenja.crafter88:picker/right_click/main
execute if data storage ckenja.looking_at_function: {function:"ckenja.crafter88:picker/tick"} align xyz run function ckenja.crafter88:picker/tick/main
execute if data storage ckenja.looking_at_function: {function:"ckenja.crafter88:skill/start"} run function ckenja.crafter88:skill/not_air
execute if data storage ckenja.looking_at_function: {function:"ckenja.crafter88:left_click/sneak"} run setblock ~ ~ ~ air destroy
execute if data storage ckenja.looking_at_function: {function:"ckenja.crafter88:skill/particle"} align xyz positioned ~0.5 ~0.5 ~0.5 run function ckenja.crafter88:skill/particle/not_air
