#> ckenja.crafter88:tick/player/launch_vector
#
#
#
# @within function ckenja.crafter88:tick/player/_

function #oh_my_dat:please
function ckenja.crafter88:tick/player/launch/loop
tellraw @a {"score":{"name":"$x","objective":"delta.api.launch"}}
tellraw @a {"score":{"name":"$y","objective":"delta.api.launch"}}
tellraw @a {"score":{"name":"$z","objective":"delta.api.launch"}}
function delta:api/launch_xyz
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections