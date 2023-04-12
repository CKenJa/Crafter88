#> ckenja.display_manager:load.loop
#
#
#
# @within
#   function ckenja.display_manager:load
#   function ckenja.display_manager:load.loop

scoreboard players remove $load.loop ckenja.display_manager 1
execute if score $load.loop ckenja.display_manager matches 1.. run function ckenja.display_manager:load.loop
data modify storage ckenja.display_manager:_ templateArray append value {}
