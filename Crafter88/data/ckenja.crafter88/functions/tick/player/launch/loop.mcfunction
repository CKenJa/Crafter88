#> ckenja.crafter88:tick/player/launch/loop
#
#
#
# @within function ckenja.crafter88:tick/player/launch/_

execute store result score $tick.player.launch.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.list[-1].x 7000
execute store result score $tick.player.launch.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.list[-1].y 7000
execute store result score $tick.player.launch.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.list[-1].z 7000
scoreboard players operation $x delta.api.launch += $tick.player.launch.x ckenja.crafter88
scoreboard players operation $y delta.api.launch += $tick.player.launch.y ckenja.crafter88
scoreboard players operation $z delta.api.launch += $tick.player.launch.z ckenja.crafter88
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.list[-1]
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray.list[-1] run function ckenja.crafter88:tick/player/launch/loop
