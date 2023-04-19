#> ckenja.crafter88:skill/main
#
#
#
# @within
#   function ckenja.crafter88:skill/not_air
#   function ckenja.crafter88:skill/is_air

#>
#@private
    #declare score_holder $skill.start_pos.x
    #declare score_holder $skill.start_pos.y
    #declare score_holder $skill.start_pos.z

# 保存時の方向を取得して方向を修正
    execute store result score $skill.direction.fix ckenja.crafter88 run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.item.skill.direction
    scoreboard players operation $skill.direction ckenja.crafter88 -= $skill.direction.fix ckenja.crafter88
    execute unless score $skill.direction ckenja.crafter88 matches 0.. run scoreboard players add $skill.direction ckenja.crafter88 360
    execute unless score $skill.direction ckenja.crafter88 matches ..360 run scoreboard players remove $skill.direction ckenja.crafter88 360

# 合う方向の構造物IDを得る
    execute store result score $tmp.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.0
    execute if score $skill.direction ckenja.crafter88 matches 90 store result score $tmp.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.90
    execute if score $skill.direction ckenja.crafter88 matches 270 store result score $tmp.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.270
    execute if score $skill.direction ckenja.crafter88 matches 180 store result score $tmp.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.180
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.structure.id int 1 run scoreboard players get $tmp.id ckenja.structure_memory

# 構造物IDから座標を得てチャンクロード
    function #ckenja.structure_memory:load

# スキルIDに保存されてる開始位置を回転
    execute store result score $skill.start_pos.x ckenja.crafter88 run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.start_pos[0]
    execute store result score $skill.start_pos.y ckenja.crafter88 run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.start_pos[1]
    execute store result score $skill.start_pos.z ckenja.crafter88 run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.start_pos[2]

    execute if score $skill.direction ckenja.crafter88 matches 90..180 run function ckenja.crafter88:skill/reverse_z
    execute if score $skill.direction ckenja.crafter88 matches 180..270 run function ckenja.crafter88:skill/reverse_x
    execute unless score $skill.direction ckenja.crafter88 matches 0 unless score $skill.direction ckenja.crafter88 matches 180 run scoreboard players operation $skill.start_pos.x ckenja.crafter88 >< $skill.start_pos.z ckenja.crafter88

# 開始位置と構造物の座標からコピー元座標を得る
    scoreboard players operation $init.first.pos.x ckenja.crafter88 = $tmp.output.x ckenja.structure_memory
    scoreboard players set $init.first.pos.y ckenja.crafter88 16
    scoreboard players operation $init.first.pos.z ckenja.crafter88 = $tmp.output.z ckenja.structure_memory
    scoreboard players add $init.first.pos.x ckenja.crafter88 16
    scoreboard players add $init.first.pos.z ckenja.crafter88 16
    scoreboard players operation $init.first.pos.x ckenja.crafter88 += $skill.start_pos.x ckenja.crafter88
    scoreboard players operation $init.first.pos.y ckenja.crafter88 += $skill.start_pos.y ckenja.crafter88
    scoreboard players operation $init.first.pos.z ckenja.crafter88 += $skill.start_pos.z ckenja.crafter88

#tellraw @a {"score":{"name":"$skill.direction","objective":"ckenja.crafter88"}}

function ckenja.crafter88:marker/right_click
