#> ckenja.crafter88:picking/item/check
#
#
#
# @within function ckenja.crafter88:picking/item/item2

# サイズ(pos2の時に保存)
    execute store result score $picking.size.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.size[0]
    execute store result score $picking.size.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.size[1]
    execute store result score $picking.size.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.size[2]

# 大きさが1~48か?
    scoreboard players set $picking.size.check ckenja.crafter88 1
    execute unless score $picking.size.x ckenja.crafter88 matches 1..47 run scoreboard players set $picking.size.check ckenja.crafter88 0
    execute unless score $picking.size.y ckenja.crafter88 matches 1..47 run scoreboard players set $picking.size.check ckenja.crafter88 0
    execute unless score $picking.size.z ckenja.crafter88 matches 1..47 run scoreboard players set $picking.size.check ckenja.crafter88 0
    execute if score $picking.size.check ckenja.crafter88 matches 0 run tellraw @a {"text":"建築物の一辺の大きさは1ブロック以上48ブロック以内でなければいけません"}


# 開始座標
    execute store result score $picking.start_pos.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.start[0]
    execute store result score $picking.start_pos.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.start[1]
    execute store result score $picking.start_pos.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.start[2]
    execute store result score $picking.item.pos.x ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos[0]
    execute store result score $picking.item.pos.y ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos[1]
    execute store result score $picking.item.pos.z ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos[2]
    scoreboard players operation $picking.start_pos.x ckenja.crafter88 -= $picking.item.pos.x ckenja.crafter88
    scoreboard players operation $picking.start_pos.y ckenja.crafter88 -= $picking.item.pos.y ckenja.crafter88
    scoreboard players operation $picking.start_pos.z ckenja.crafter88 -= $picking.item.pos.z ckenja.crafter88

    # 開始座標が範囲内にあるか?
    scoreboard players set $picking.start.check ckenja.crafter88 0
    execute if score $picking.start_pos.x ckenja.crafter88 matches 0.. if score $picking.start_pos.x ckenja.crafter88 < $picking.size.x ckenja.crafter88 if score $picking.start_pos.y ckenja.crafter88 matches 0.. if score $picking.start_pos.y ckenja.crafter88 < $picking.size.y ckenja.crafter88 if score $picking.start_pos.z ckenja.crafter88 matches 0.. if score $picking.start_pos.z ckenja.crafter88 < $picking.size.z ckenja.crafter88 run scoreboard players set $picking.start.check ckenja.crafter88 1
    execute if score $picking.start.check ckenja.crafter88 matches 0 run tellraw @a {"text":"初めに置くブロックが範囲内にありません"}

scoreboard players set $picking.cancel ckenja.crafter88 1
execute if score $picking.size.check ckenja.crafter88 matches 1 if score $picking.start.check ckenja.crafter88 matches 1 run function ckenja.crafter88:picking/item/not_cancel
