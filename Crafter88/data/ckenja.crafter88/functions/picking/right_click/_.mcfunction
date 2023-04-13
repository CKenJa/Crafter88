#> ckenja.crafter88:picking/right_click/_
#
#
#
# @within function ckenja.crafter88:right_click/_

#>
#@private
#declare score_holder $picking.right_click.direction

execute store success score $picking.right_click.direction ckenja.crafter88 if entity @s[tag=ckenja.crafter88.picking.direction]
execute if score $picking.right_click.direction ckenja.crafter88 matches 1 run function ckenja.crafter88:picking/direction/right_click
execute if score $picking.right_click.direction ckenja.crafter88 matches 0 run function ckenja.crafter88:picking/right_click/looking
