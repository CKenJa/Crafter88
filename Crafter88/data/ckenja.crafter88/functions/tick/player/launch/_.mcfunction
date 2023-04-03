#> ckenja.crafter88:tick/player/launch/_
#
#
#
# @within function ckenja.crafter88:tick/player/_

# 移動速度を0に
    attribute @s generic.movement_speed modifier add c145c31f-0f69-4e87-a826-0227fe45323c "stan" -1 add

# 吹っ飛ばす
    function ckenja.crafter88:tick/player/launch/loop
    execute if score $x delta.api.launch matches 1.. run scoreboard players set $x delta.api.launch 1
    execute if score $x delta.api.launch matches ..-1 run scoreboard players set $x delta.api.launch -1
    execute if score $y delta.api.launch matches 1.. run scoreboard players set $y delta.api.launch 1
    execute if score $y delta.api.launch matches ..-1 run scoreboard players set $y delta.api.launch -1
    execute if score $z delta.api.launch matches 1.. run scoreboard players set $z delta.api.launch 1
    execute if score $z delta.api.launch matches ..-1 run scoreboard players set $z delta.api.launch -1
    execute if score $place.marker.tick.counter ckenja.crafter88 matches ..1 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.1 ckenja.crafter88
    execute if score $place.marker.tick.counter ckenja.crafter88 matches 2 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.2 ckenja.crafter88
    execute if score $place.marker.tick.counter ckenja.crafter88 matches 3 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.3 ckenja.crafter88
    execute if score $place.marker.tick.counter ckenja.crafter88 matches 4 run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.4 ckenja.crafter88
    execute if score $place.marker.tick.counter ckenja.crafter88 matches 5.. run scoreboard players operation $tick.player.launch.goal ckenja.crafter88 = #player.launch.modifier.5 ckenja.crafter88
    data modify storage ckenja.crafter88: tick.player.launch.Motion set from entity @s Motion
    execute store result score $tick.player.launch.x ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.Motion[0] 10000
    execute store result score $tick.player.launch.y ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.Motion[1] 10000
    execute store result score $tick.player.launch.z ckenja.crafter88 run data get storage ckenja.crafter88: tick.player.launch.Motion[2] 10000
    scoreboard players operation $x delta.api.launch = $tick.player.launch.keep.x ckenja.crafter88
    scoreboard players operation $y delta.api.launch = $tick.player.launch.keep.y ckenja.crafter88
    scoreboard players operation $z delta.api.launch = $tick.player.launch.keep.z ckenja.crafter88
    scoreboard players operation $x delta.api.launch *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $y delta.api.launch *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $z delta.api.launch *= $tick.player.launch.goal ckenja.crafter88
    scoreboard players operation $x delta.api.launch -= $tick.player.launch.x ckenja.crafter88
    scoreboard players operation $y delta.api.launch -= $tick.player.launch.y ckenja.crafter88
    scoreboard players operation $z delta.api.launch -= $tick.player.launch.z ckenja.crafter88
    scoreboard players operation $tick.player.launch.keep.x ckenja.crafter88 *= $x delta.api.launch
    scoreboard players operation $tick.player.launch.keep.y ckenja.crafter88 *= $y delta.api.launch
    scoreboard players operation $tick.player.launch.keep.z ckenja.crafter88 *= $z delta.api.launch
    execute if score $tick.player.launch.keep.x ckenja.crafter88 matches ..0 run scoreboard players reset $x delta.api.launch
    execute if score $tick.player.launch.keep.x ckenja.crafter88 matches ..0 run scoreboard players reset $y delta.api.launch
    execute if score $tick.player.launch.keep.x ckenja.crafter88 matches ..0 run scoreboard players reset $z delta.api.launch
    tellraw @a {"score":{"name":"$x","objective":"delta.api.launch"}}
    tellraw @a {"score":{"name":"$y","objective":"delta.api.launch"}}
    tellraw @a {"score":{"name":"$z","objective":"delta.api.launch"}}
    execute positioned as @s run function delta:api/launch_xyz
    scoreboard players reset $x delta.api.launch
    scoreboard players reset $y delta.api.launch
    scoreboard players reset $z delta.api.launch
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackArray
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackArray.isAttack run function ckenja.crafter88:tick/player/launch/attack

