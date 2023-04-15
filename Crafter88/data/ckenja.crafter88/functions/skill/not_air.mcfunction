#> ckenja.crafter88:skill/not_air
#
#
#
# @within function ckenja.crafter88:looking_at_function.player.listener

data modify storage ckenja.crafter88: skill.direction set from storage ckenja.looking_at_function:_ directionList[-1].value

# 吹っ飛ばし
    execute if data storage ckenja.crafter88: skill{direction:"-X"} run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value 1
    execute if data storage ckenja.crafter88: skill{direction:"+X"} run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value -1
    execute if data storage ckenja.crafter88: skill{direction:"-Z"} run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value 1
    execute if data storage ckenja.crafter88: skill{direction:"+Z"} run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value -1
    execute if data storage ckenja.crafter88: skill{direction:"-Y"} run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.y set value 1
    execute if data storage ckenja.crafter88: skill{direction:"+Y"} run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.y set value -1

execute if data storage ckenja.crafter88: skill{direction:"-X"} run scoreboard players set $skill.direction ckenja.crafter88 90
execute if data storage ckenja.crafter88: skill{direction:"+X"} run scoreboard players set $skill.direction ckenja.crafter88 270
execute if data storage ckenja.crafter88: skill{direction:"-Z"} run scoreboard players set $skill.direction ckenja.crafter88 180
execute if data storage ckenja.crafter88: skill{direction:"+Z"} run scoreboard players set $skill.direction ckenja.crafter88 0

execute if data storage ckenja.crafter88: skill{direction:"-X"} positioned ~1 ~ ~ rotated 90 0 run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"+X"} positioned ~-1 ~ ~ rotated -90 0 run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"-Z"} positioned ~ ~ ~1 rotated 180 0 run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"+Z"} positioned ~ ~ ~-1 rotated 0 0 run function ckenja.crafter88:skill/main

execute if data storage ckenja.crafter88: skill{direction:"-Y"} run function ckenja.crafter88:skill/get_direction
execute if data storage ckenja.crafter88: skill{direction:"+Y"} run function ckenja.crafter88:skill/get_direction

execute if data storage ckenja.crafter88: skill{direction:"-Y"} positioned ~ ~1 ~ run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"+Y"} positioned ~ ~-1 ~ run function ckenja.crafter88:skill/main
