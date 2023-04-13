#> ckenja.crafter88:picking/pos2/display_region
#
#
#
# @within function ckenja.crafter88:picking/pos2/right_click

# 取得
    execute store result score $picking.pos1.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos1.Pos[0]
    execute store result score $picking.pos1.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos1.Pos[1]
    execute store result score $picking.pos1.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos1.Pos[2]
    execute store result score $picking.pos2.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos2.Pos[0]
    execute store result score $picking.pos2.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos2.Pos[1]
    execute store result score $picking.pos2.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos2.Pos[2]

# 最小角を出す
    scoreboard players operation $picking.min.x ckenja.crafter88 = $picking.pos1.x ckenja.crafter88
    scoreboard players operation $picking.min.y ckenja.crafter88 = $picking.pos1.y ckenja.crafter88
    scoreboard players operation $picking.min.z ckenja.crafter88 = $picking.pos1.z ckenja.crafter88
    scoreboard players operation $picking.min.x ckenja.crafter88 < $picking.pos2.x ckenja.crafter88
    scoreboard players operation $picking.min.y ckenja.crafter88 < $picking.pos2.y ckenja.crafter88
    scoreboard players operation $picking.min.z ckenja.crafter88 < $picking.pos2.z ckenja.crafter88

# Posを最小角に
    execute store result storage ckenja.crafter88: picking.pos.min[0] double 1 run scoreboard players get $picking.min.x ckenja.crafter88
    execute store result storage ckenja.crafter88: picking.pos.min[1] double 1 run scoreboard players get $picking.min.y ckenja.crafter88
    execute store result storage ckenja.crafter88: picking.pos.min[2] double 1 run scoreboard players get $picking.min.z ckenja.crafter88
    data modify entity @s Pos set from storage ckenja.crafter88: picking.pos.min

# 最大角を出す
    scoreboard players operation $picking.max.x ckenja.crafter88 = $picking.pos1.x ckenja.crafter88
    scoreboard players operation $picking.max.y ckenja.crafter88 = $picking.pos1.y ckenja.crafter88
    scoreboard players operation $picking.max.z ckenja.crafter88 = $picking.pos1.z ckenja.crafter88
    scoreboard players operation $picking.max.x ckenja.crafter88 > $picking.pos2.x ckenja.crafter88
    scoreboard players operation $picking.max.y ckenja.crafter88 > $picking.pos2.y ckenja.crafter88
    scoreboard players operation $picking.max.z ckenja.crafter88 > $picking.pos2.z ckenja.crafter88

# Scaleを最大角に
    scoreboard players operation $picking.max.x ckenja.crafter88 -= $picking.min.x ckenja.crafter88
    scoreboard players operation $picking.max.y ckenja.crafter88 -= $picking.min.y ckenja.crafter88
    scoreboard players operation $picking.max.z ckenja.crafter88 -= $picking.min.z ckenja.crafter88
    scoreboard players add $picking.max.x ckenja.crafter88 1
    scoreboard players add $picking.max.y ckenja.crafter88 1
    scoreboard players add $picking.max.z ckenja.crafter88 1
    execute store result storage ckenja.crafter88: picking.pos.max[0] double 1 run scoreboard players get $picking.max.x ckenja.crafter88
    execute store result storage ckenja.crafter88: picking.pos.max[1] double 1 run scoreboard players get $picking.max.y ckenja.crafter88
    execute store result storage ckenja.crafter88: picking.pos.max[2] double 1 run scoreboard players get $picking.max.z ckenja.crafter88
    data modify entity @s transformation.scale set from storage ckenja.crafter88: picking.pos.max
