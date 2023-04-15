#> ckenja.crafter88:skill/particle/not_air
#
#
#
# @within function ckenja.crafter88:looking_at_function.player.listener

data modify storage ckenja.crafter88: skill.particle set value "not_air"
data modify storage ckenja.crafter88: skill.direction set from storage ckenja.looking_at_function:_ directionList[-1].value

execute if data storage ckenja.crafter88: skill{direction:"-X"} rotated -90 0 run function ckenja.crafter88:skill/particle/main
execute if data storage ckenja.crafter88: skill{direction:"+X"} rotated 90 0 run function ckenja.crafter88:skill/particle/main
execute if data storage ckenja.crafter88: skill{direction:"-Z"} rotated 0 0 run function ckenja.crafter88:skill/particle/main
execute if data storage ckenja.crafter88: skill{direction:"+Z"} rotated 180 0 run function ckenja.crafter88:skill/particle/main
execute if data storage ckenja.crafter88: skill{direction:"-Y"} rotated 0 -90 run function ckenja.crafter88:skill/particle/main
execute if data storage ckenja.crafter88: skill{direction:"+Y"} rotated 0 90 run function ckenja.crafter88:skill/particle/main
