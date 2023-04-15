#> ckenja.crafter88:picking/register/_
#
# サイズ($tmp.input.size.x)・開始位置の相対座標($picking.start_pos.x)は指定済みとする。
#
# @within function ckenja.crafter88:picking/register/check_loaded

scoreboard players set $picking.success ckenja.crafter88 1
data modify storage ckenja.crafter88: tick.picked set value true

# 相対座標と角度とサイズをストレージに記入
    execute store result storage rom: Argument.ID int 1 run scoreboard players add $max_skill_id ckenja.crafter88 1
    function rom:api/please
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.start_pos.x int 1 run scoreboard players get $picking.start_pos.x ckenja.crafter88
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.start_pos.y int 1 run scoreboard players get $picking.start_pos.y ckenja.crafter88
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.start_pos.z int 1 run scoreboard players get $picking.start_pos.z ckenja.crafter88
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.direction set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.direction
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.size set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.picking.size

# 回転なしの登録
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picking.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picking.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picking.size.z ckenja.crafter88
    function #ckenja.structure_memory:allocate
    scoreboard players operation $picking.register.normal ckenja.crafter88 = $tmp.id ckenja.structure_memory
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.0 int 1 run scoreboard players get $tmp.id ckenja.structure_memory

# 90度
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picking.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picking.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picking.size.z ckenja.crafter88
    scoreboard players set $tmp.input.rotate ckenja.structure_memory 90
    function #ckenja.structure_memory:rotate
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.90 int 1 run scoreboard players get $tmp.id ckenja.structure_memory

# 180度
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picking.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picking.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picking.size.z ckenja.crafter88
    scoreboard players set $tmp.input.rotate ckenja.structure_memory 180
    scoreboard players operation $tmp.id ckenja.structure_memory = $picking.register.normal ckenja.crafter88
    function #ckenja.structure_memory:rotate
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.180 int 1 run scoreboard players get $tmp.id ckenja.structure_memory

# 270度
    scoreboard players operation $tmp.input.size.x ckenja.structure_memory = $picking.size.x ckenja.crafter88
    scoreboard players operation $tmp.input.size.y ckenja.structure_memory = $picking.size.y ckenja.crafter88
    scoreboard players operation $tmp.input.size.z ckenja.structure_memory = $picking.size.z ckenja.crafter88
    scoreboard players set $tmp.input.rotate ckenja.structure_memory 270
    scoreboard players operation $tmp.id ckenja.structure_memory = $picking.register.normal ckenja.crafter88
    function #ckenja.structure_memory:rotate
    execute store result storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.270 int 1 run scoreboard players get $tmp.id ckenja.structure_memory
