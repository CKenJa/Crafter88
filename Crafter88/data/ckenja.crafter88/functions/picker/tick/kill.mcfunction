#> ckenja.crafter88:picker/tick/kill
#
# if entity as player
#
# @within function ckenja.crafter88:tick/player/_

tag @s remove ckenja.crafter88.picker.tick.have_display
scoreboard players operation $player_id ckenja.crafter88 = @s OhMyDatID
execute as @e[type=block_display,tag=ckenja.crafter88.picker.tick.block_display] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
