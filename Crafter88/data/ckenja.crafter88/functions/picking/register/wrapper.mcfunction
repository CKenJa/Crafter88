#> ckenja.crafter88:picking/register/wrapper
#
#
#
# @within function ckenja.crafter88:picking/item/armor_stand

# 座標
    data modify storage anywhere: at.Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.pos
    data modify storage anywhere: function set value "ckenja.crafter88:picking/item"
# 引数はリセットされないので明示的に消さないと他のディメンションに行ってしまう可能性がある
    data remove storage anywhere: at.Dimension
    function #anywhere:run

# データ書き換えたスキルにしちゃう
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item set from storage ckenja.crafter88: picking.item.Item
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item.tag.ckenja.crafter88.id set value "skill"
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.Item.tag.ckenja.crafter88.skill.id int 1 run scoreboard players get $max_skill_id ckenja.crafter88
