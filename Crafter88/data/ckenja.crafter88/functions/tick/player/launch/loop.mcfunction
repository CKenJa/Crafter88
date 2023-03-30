#> ckenja.crafter88:tick/player/launch/loop
#
#
#
# @within function ckenja.crafter88:tick/player/launch/_

#tellraw @a {"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1].value","storage":"oh_my_dat:"}
execute store result score $tick.player.launch.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1].value.x 10000
execute store result score $tick.player.launch.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1].value.y 10000
execute store result score $tick.player.launch.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1].value.z 10000
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1].self run function ckenja.crafter88:tick/player/launch/unself
scoreboard players operation $x delta.api.launch = $tick.player.launch.x ckenja.crafter88
scoreboard players operation $y delta.api.launch = $tick.player.launch.y ckenja.crafter88
scoreboard players operation $z delta.api.launch = $tick.player.launch.z ckenja.crafter88
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1]
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections[-1] run function ckenja.crafter88:tick/player/launch/loop
