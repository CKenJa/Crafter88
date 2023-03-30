#> ckenja.crafter88:tick/player/launch/_
#
#
#
# @within function ckenja.crafter88:tick/player/_

function #oh_my_dat:please
function ckenja.crafter88:tick/player/launch/loop
execute if score $x delta.api.launch matches 7000.. run scoreboard players set $x delta.api.launch 7000
execute if score $x delta.api.launch matches ..-7000 run scoreboard players set $x delta.api.launch -7000
execute if score $y delta.api.launch matches 7000.. run scoreboard players set $y delta.api.launch 7000
execute if score $y delta.api.launch matches ..-7000 run scoreboard players set $y delta.api.launch -7000
execute if score $z delta.api.launch matches 7000.. run scoreboard players set $z delta.api.launch 7000
execute if score $z delta.api.launch matches ..-7000 run scoreboard players set $z delta.api.launch -7000
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackArray.isAttack run function ckenja.crafter88:tick/player/launch/attack
#tellraw @a {"score":{"name":"$x","objective":"delta.api.launch"}}
#tellraw @a {"score":{"name":"$y","objective":"delta.api.launch"}}
#tellraw @a {"score":{"name":"$z","objective":"delta.api.launch"}}
execute positioned as @s run function delta:api/launch_xyz
scoreboard players reset $x delta.api.launch
scoreboard players reset $y delta.api.launch
scoreboard players reset $z delta.api.launch
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackArray
