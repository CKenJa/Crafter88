#> ckenja.crafter88:picker/right_click/_
#
#
#
# @within function ckenja.crafter88:right_click/_

#>
#@private
#declare score_holder $picker.right_click.direction

execute store success score $picker.right_click.direction ckenja.crafter88 if entity @s[tag=ckenja.crafter88.picker.direction]
execute if score $picker.right_click.direction ckenja.crafter88 matches 1 run function ckenja.crafter88:picker/direction/right_click
execute if score $picker.right_click.direction ckenja.crafter88 matches 0 run function ckenja.crafter88:picker/right_click/looking
