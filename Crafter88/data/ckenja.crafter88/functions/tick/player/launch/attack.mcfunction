#> ckenja.crafter88:tick/player/launch/attack
#
#
#
# @within function ckenja.crafter88:tick/player/launch/_

execute store result score $tick.player.launch.attack.player_id ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.attach.player_id
tag @s add ckenja.crafter88.tick.player.launch.attack
execute if score $marker.tick.counter ckenja.crafter88 matches ..1 at @s as @a if score @s OhMyDatID = $tick.player.launch.attack.player_id ckenja.crafter88 run damage @e[tag=ckenja.crafter88.tick.player.launch.attack,distance=..0.01,limit=1] 20 magic by @s
execute if score $marker.tick.counter ckenja.crafter88 matches 2.. at @s as @a if score @s OhMyDatID = $tick.player.launch.attack.player_id ckenja.crafter88 run damage @e[tag=ckenja.crafter88.tick.player.launch.attack,distance=..0.01,limit=1] 10 magic by @s
tag @s remove ckenja.crafter88.tick.player.launch.attack
