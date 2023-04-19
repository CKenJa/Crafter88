#> ckenja.crafter88:picker/item/check_pos
#
#
#
# @within function ckenja.crafter88:picker/item/check_special_item

# 大きさが1~48か?
    execute store result score $picker.size.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size[0]
    execute store result score $picker.size.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size[1]
    execute store result score $picker.size.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size[2]

    scoreboard players set $picker.message.size ckenja.crafter88 1
    execute unless score $picker.size.x ckenja.crafter88 matches 1..47 run scoreboard players set $picker.message.size ckenja.crafter88 0
    execute unless score $picker.size.y ckenja.crafter88 matches 1..47 run scoreboard players set $picker.message.size ckenja.crafter88 0
    execute unless score $picker.size.z ckenja.crafter88 matches 1..47 run scoreboard players set $picker.message.size ckenja.crafter88 0

# 開始座標
    execute store result score $picker.start_pos.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.start[0]
    execute store result score $picker.start_pos.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.start[1]
    execute store result score $picker.start_pos.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.start[2]

    execute store result score $picker.item.pos.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos[0]
    execute store result score $picker.item.pos.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos[1]
    execute store result score $picker.item.pos.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos[2]

    scoreboard players operation $picker.start_pos.x ckenja.crafter88 -= $picker.item.pos.x ckenja.crafter88
    scoreboard players operation $picker.start_pos.y ckenja.crafter88 -= $picker.item.pos.y ckenja.crafter88
    scoreboard players operation $picker.start_pos.z ckenja.crafter88 -= $picker.item.pos.z ckenja.crafter88

# 開始座標が範囲内にあるか?
    scoreboard players set $picker.message.start ckenja.crafter88 0
    execute if score $picker.start_pos.x ckenja.crafter88 matches 0.. if score $picker.start_pos.x ckenja.crafter88 < $picker.size.x ckenja.crafter88 if score $picker.start_pos.y ckenja.crafter88 matches 0.. if score $picker.start_pos.y ckenja.crafter88 < $picker.size.y ckenja.crafter88 if score $picker.start_pos.z ckenja.crafter88 matches 0.. if score $picker.start_pos.z ckenja.crafter88 < $picker.size.z ckenja.crafter88 run scoreboard players set $picker.message.start ckenja.crafter88 1

# 使用可能なアイテムか?
    execute store result score $picker.message.skill ckenja.crafter88 if data storage ckenja.crafter88: picker.item.tag.ckenja.crafter88{id:"skill"}

    execute positioned ~ ~10000 ~ summon armor_stand run function ckenja.crafter88:picker/item/armor_stand

execute if score $picker.message.size ckenja.crafter88 matches 1 if score $picker.message.start ckenja.crafter88 matches 1 if score $picker.message.unusable_item ckenja.crafter88 matches 0 if score $picker.message.skill ckenja.crafter88 matches 0 run function ckenja.crafter88:picker/register/wrapper

execute if score $picker.message.success ckenja.crafter88 matches 1 run data modify entity @s Item set from storage ckenja.crafter88: picker.item
