#> ckenja.crafter88:picker/pos2/display_region
#
#
#
# @within function ckenja.crafter88:picker/pos2/right_click

# 取得
    execute store result score $picker.display_region.pos1.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos1[0]
    execute store result score $picker.display_region.pos1.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos1[1]
    execute store result score $picker.display_region.pos1.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos1[2]
    execute store result score $picker.display_region.pos2.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos2[0]
    execute store result score $picker.display_region.pos2.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos2[1]
    execute store result score $picker.display_region.pos2.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos2[2]

# 最小角を出す
    scoreboard players operation $picker.display_region.pos.x ckenja.crafter88 = $picker.display_region.pos1.x ckenja.crafter88
    scoreboard players operation $picker.display_region.pos.y ckenja.crafter88 = $picker.display_region.pos1.y ckenja.crafter88
    scoreboard players operation $picker.display_region.pos.z ckenja.crafter88 = $picker.display_region.pos1.z ckenja.crafter88
    scoreboard players operation $picker.display_region.pos.x ckenja.crafter88 < $picker.display_region.pos2.x ckenja.crafter88
    scoreboard players operation $picker.display_region.pos.y ckenja.crafter88 < $picker.display_region.pos2.y ckenja.crafter88
    scoreboard players operation $picker.display_region.pos.z ckenja.crafter88 < $picker.display_region.pos2.z ckenja.crafter88

# Posを最小角に
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos set value [0.0,0.0,0.0]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos[0] double 1 run scoreboard players get $picker.display_region.pos.x ckenja.crafter88
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos[1] double 1 run scoreboard players get $picker.display_region.pos.y ckenja.crafter88
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos[2] double 1 run scoreboard players get $picker.display_region.pos.z ckenja.crafter88
    data modify entity @s Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos

# 最大角を出す
    scoreboard players operation $picker.display_region.size.x ckenja.crafter88 = $picker.display_region.pos1.x ckenja.crafter88
    scoreboard players operation $picker.display_region.size.y ckenja.crafter88 = $picker.display_region.pos1.y ckenja.crafter88
    scoreboard players operation $picker.display_region.size.z ckenja.crafter88 = $picker.display_region.pos1.z ckenja.crafter88
    scoreboard players operation $picker.display_region.size.x ckenja.crafter88 > $picker.display_region.pos2.x ckenja.crafter88
    scoreboard players operation $picker.display_region.size.y ckenja.crafter88 > $picker.display_region.pos2.y ckenja.crafter88
    scoreboard players operation $picker.display_region.size.z ckenja.crafter88 > $picker.display_region.pos2.z ckenja.crafter88

# Scaleを最大角に
    scoreboard players operation $picker.display_region.size.x ckenja.crafter88 -= $picker.display_region.pos.x ckenja.crafter88
    scoreboard players operation $picker.display_region.size.y ckenja.crafter88 -= $picker.display_region.pos.y ckenja.crafter88
    scoreboard players operation $picker.display_region.size.z ckenja.crafter88 -= $picker.display_region.pos.z ckenja.crafter88
    scoreboard players add $picker.display_region.size.x ckenja.crafter88 1
    scoreboard players add $picker.display_region.size.y ckenja.crafter88 1
    scoreboard players add $picker.display_region.size.z ckenja.crafter88 1
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size set value [0.0,0.0,0.0]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size[0] double 1 run scoreboard players get $picker.display_region.size.x ckenja.crafter88
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size[1] double 1 run scoreboard players get $picker.display_region.size.y ckenja.crafter88
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size[2] double 1 run scoreboard players get $picker.display_region.size.z ckenja.crafter88
    data modify entity @s transformation.scale set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size
