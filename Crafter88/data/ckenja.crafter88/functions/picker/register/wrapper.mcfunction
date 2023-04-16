#> ckenja.crafter88:picker/register/wrapper
#
#
#
# @within function ckenja.crafter88:picker/item/check_pos

# 座標
    data modify storage anywhere: at.Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.pos
    data modify storage anywhere: function set value "ckenja.crafter88:picker/item"
# 引数はリセットされないので明示的に消さないと他のディメンションに行ってしまう可能性がある
    data remove storage anywhere: at.Dimension
    function #anywhere:run

