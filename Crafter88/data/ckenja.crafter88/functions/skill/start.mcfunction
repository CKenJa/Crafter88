#> ckenja.crafter88:skill/start
#
#
#
# @within function ckenja.crafter88:skill/right_click

execute store result score $skill.item.id ckenja.structure_memory run data get storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88.skill.id


# 視線先に移動。方向も調べる

# スキルIDにアクセスして合う方向の構造物IDを得る

# 構造物IDから座標を得てチャンクロード、スキルIDに保存されてる開始位置を考慮してコピー元座標を得る
function ckenja.crafter88:marker/right_click
