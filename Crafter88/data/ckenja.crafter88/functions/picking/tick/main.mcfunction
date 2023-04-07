#> ckenja.crafter88:picking/tick/main
#
#
#
# @within function ckenja.crafter88:picking/tick/listener

scoreboard players operation $picking.tick.summon ckenja.crafter88 = @s OhMyDatID
execute if entity @s[tag=ckenja.crafter88.picking.tick.have_display] run function ckenja.crafter88:picking/tick/teleport
execute if entity @s[tag=!ckenja.crafter88.picking.tick.have_display] run function ckenja.crafter88:picking/tick/summon
