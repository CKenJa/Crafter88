#> ckenja.crafter88:picking/tick/kill
#
# if entity as player
#
# @within function ckenja.crafter88:tick/player/_

tag @s add ckenja.crafter88.picking.start
tag @s remove ckenja.crafter88.picking.tick.have_display
tag @s remove ckenja.crafter88.picking.pos1
tag @s remove ckenja.crafter88.picking.pos2
scoreboard players operation $picking.tick.summon ckenja.crafter88 = @s OhMyDatID
execute as @e[type=block_display,tag=ckenja.crafter88.picking.block_display] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
