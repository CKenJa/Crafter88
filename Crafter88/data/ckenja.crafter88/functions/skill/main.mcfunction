#> ckenja.crafter88:skill/main
#
#
#
# @within
#   function ckenja.crafter88:skill/not_air
#   function ckenja.crafter88:skill/get_direction

#>
#@private
    #declare score_holder $skill.start_pos.x
    #declare score_holder $skill.start_pos.y
    #declare score_holder $skill.start_pos.z

# 吹っ飛ばし用に方向を変換
    execute if score $skill.direction ckenja.crafter88 matches 90 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value -1
    execute if score $skill.direction ckenja.crafter88 matches -90 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.x set value 1
    execute if score $skill.direction ckenja.crafter88 matches 180 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value -1
    execute if score $skill.direction ckenja.crafter88 matches 0 run data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.z set value 1

# スキルIDにアクセスして合う方向の構造物IDを得る
    # デフォ
    execute store result score $tmp.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.id
    execute store result storage rom: Argument.Address int 1 run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.id
    function rom:api/please
    execute if score $skill.direction ckenja.crafter88 matches 90 store result score $tmp.id ckenja.structure_memory run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.90
    execute if score $skill.direction ckenja.crafter88 matches -90 store result score $tmp.id ckenja.structure_memory run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.270
    execute if score $skill.direction ckenja.crafter88 matches 180 store result score $tmp.id ckenja.structure_memory run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.180
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.id int 1 run scoreboard players get $tmp.id ckenja.structure_memory

# 構造物IDから座標を得てチャンクロード
    function #ckenja.structure_memory:load

#スキルIDに保存されてる開始位置と構造物の座標からコピー元座標を得る
    execute store result score $skill.start_pos.x ckenja.crafter88 run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.start_pos.x
    execute store result score $skill.start_pos.y ckenja.crafter88 run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.start_pos.y
    execute store result score $skill.start_pos.z ckenja.crafter88 run data get storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.skill.start_pos.z
    scoreboard players operation $init.first.pos.x ckenja.crafter88 = $tmp.output.x ckenja.structure_memory
    scoreboard players set $init.first.pos.y ckenja.crafter88 16
    scoreboard players operation $init.first.pos.z ckenja.crafter88 = $tmp.output.z ckenja.structure_memory
    scoreboard players add $init.first.pos.x ckenja.crafter88 16
    scoreboard players add $init.first.pos.z ckenja.crafter88 16
    scoreboard players operation $init.first.pos.x ckenja.crafter88 += $skill.start_pos.x ckenja.crafter88
    scoreboard players operation $init.first.pos.y ckenja.crafter88 += $skill.start_pos.y ckenja.crafter88
    scoreboard players operation $init.first.pos.z ckenja.crafter88 += $skill.start_pos.z ckenja.crafter88

function ckenja.crafter88:marker/right_click
