#> ckenja.crafter88:picker/tick/_
#
#
#
# @within function ckenja.crafter88:tick/player/_

data modify storage ckenja.looking_at_function: function set value "ckenja.crafter88:picker/tick"
data modify storage ckenja.looking_at_function: as_entity set value true
function ckenja.looking_at_function:run

execute if entity @s[tag=ckenja.crafter88.picker.item] run title @s actionbar {"translate":"ckenja.crafter88.picker.item","fallback":"技を封じるアイテムを投げてください(これを投げてキャンセル)(まだ2つめの角は変更可能)"}
execute if entity @s[tag=ckenja.crafter88.picker.pos2,tag=!ckenja.crafter88.picker.item] run title @s actionbar {"translate":"ckenja.crafter88.picker.pos2","fallback":"さっきの角の反対側の角を選択してください"}
execute if entity @s[tag=ckenja.crafter88.picker.pos1] run title @s actionbar {"translate":"ckenja.crafter88.picker.pos1","fallback":"建築物の範囲の角を選択してください"}
execute if entity @s[tag=ckenja.crafter88.picker.direction] run title @s actionbar {"translate":"ckenja.crafter88.picker.direction","fallback":"技の方向を向いて右クリックしてください"}
execute if entity @s[tag=ckenja.crafter88.picker.start] run title @s actionbar {"translate":"ckenja.crafter88.picker.start","fallback":"技を出したときに初めに置くブロックを[右クリック]で選択してください"}
