#> ckenja.crafter88:skill/not_air
#
#
#
# @within function ckenja.crafter88:looking_at_function.player.listener

data modify storage ckenja.crafter88: skill.direction set from storage ckenja.looking_at_function:_ directionList[-1].value

execute if data storage ckenja.crafter88: skill{direction:"-X"} run scoreboard players set $skill.direction ckenja.crafter88 90
execute if data storage ckenja.crafter88: skill{direction:"+X"} run scoreboard players set $skill.direction ckenja.crafter88 -90
execute if data storage ckenja.crafter88: skill{direction:"-Z"} run scoreboard players set $skill.direction ckenja.crafter88 180
execute if data storage ckenja.crafter88: skill{direction:"+Z"} run scoreboard players set $skill.direction ckenja.crafter88 0

execute if data storage ckenja.crafter88: skill{direction:"-X"} positioned ~1 ~ ~ rotated 90 0 run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"+X"} positioned ~-1 ~ ~ rotated -90 0 run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"-Z"} positioned ~ ~ ~1 rotated 180 0 run function ckenja.crafter88:skill/main
execute if data storage ckenja.crafter88: skill{direction:"+Z"} positioned ~ ~ ~-1 rotated 0 0 run function ckenja.crafter88:skill/main

execute if data storage ckenja.crafter88: skill{direction:"-Y"} positioned ~ ~1 ~ run function ckenja.crafter88:skill/get_direction
execute if data storage ckenja.crafter88: skill{direction:"+Y"} positioned ~ ~-1 ~ run function ckenja.crafter88:skill/get_direction
