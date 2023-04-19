#> ckenja.crafter88:picker/register/_
#
# サイズ($tmp.input.size.x)・開始位置の相対座標($picker.start_pos.x)は指定済みとする。
#
# @within function ckenja.crafter88:picker/register/check_chunk_loaded

tellraw @a {"text":"技を保存しています...ラグが発生することがあります。"}
scoreboard players set $picker.message.loaded ckenja.crafter88 1
scoreboard players set $picker.message.success ckenja.crafter88 1
data modify storage ckenja.crafter88: tick.picked set value true
data modify storage ckenja.crafter88: picker.item.tag.ckenja.crafter88 set value {id:"skill",skill:{start_pos:[0,0,0]}}


# 相対座標と角度とサイズをストレージに記入
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.start_pos[0] int 1 run scoreboard players get $picker.start_pos.x ckenja.crafter88
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.start_pos[1] int 1 run scoreboard players get $picker.start_pos.y ckenja.crafter88
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.start_pos[2] int 1 run scoreboard players get $picker.start_pos.z ckenja.crafter88
    data modify storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.direction set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.direction
    data modify storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.size set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picker.size

# 回転なしの登録
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picker.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picker.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picker.size.z ckenja.crafter88
    function #ckenja.structure_memory:allocate
    scoreboard players operation $picker.register.normal ckenja.crafter88 = $tmp.id ckenja.structure_memory
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.0 int 1 run scoreboard players get $tmp.id ckenja.structure_memory
    tellraw @a {"text":"25%"}

# 90度
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picker.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picker.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picker.size.z ckenja.crafter88
    scoreboard players set $tmp.input.rotate ckenja.structure_memory 90
    function #ckenja.structure_memory:rotate
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.90 int 1 run scoreboard players get $tmp.id ckenja.structure_memory
    tellraw @a {"text":"50%"}

# 180度
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picker.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picker.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picker.size.z ckenja.crafter88
    scoreboard players set $tmp.input.rotate ckenja.structure_memory 180
    scoreboard players operation $tmp.id ckenja.structure_memory = $picker.register.normal ckenja.crafter88
    function #ckenja.structure_memory:rotate
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.180 int 1 run scoreboard players get $tmp.id ckenja.structure_memory
    tellraw @a {"text":"75%"}

# 270度
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picker.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picker.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picker.size.z ckenja.crafter88
    scoreboard players set $tmp.input.rotate ckenja.structure_memory 270
    scoreboard players operation $tmp.id ckenja.structure_memory = $picker.register.normal ckenja.crafter88
    function #ckenja.structure_memory:rotate
    execute store result storage ckenja.crafter88: picker.item.tag.ckenja.crafter88.skill.270 int 1 run scoreboard players get $tmp.id ckenja.structure_memory
    tellraw @a {"text":"100%"}

data modify storage ckenja.crafter88: picker.skillList append from storage ckenja.crafter88: picker.item
