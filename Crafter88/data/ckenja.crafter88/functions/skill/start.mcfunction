#> ckenja.crafter88:skill/start
#
#
#
# @within function ckenja.crafter88:skill/right_click

execute store result score $skill.item.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.id


# 視線先に移動

# スキルIDから方向設定を調べ、必要に応じて回転
#function ckenja.structure_memory:api/rotate

# 構造物IDを保存してmarkerを召喚。
function ckenja.crafter88:place/right_click
