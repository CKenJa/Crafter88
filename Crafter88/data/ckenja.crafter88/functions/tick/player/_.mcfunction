#> ckenja.crafter88:tick/player/_
#
#tick as @a
#
# @within function ckenja.crafter88:tick

# 旧クリック検知
#data modify storage ckenja.crafter88: SelectedItem set from entity @s SelectedItem
#execute if data storage ckenja.crafter88: SelectedItem.tag.ctc{from:"ckenja.crafter88:",id:"offhand_crossbow"} run item replace entity @s weapon.mainhand with air 1
#item replace entity @s weapon.offhand with crossbow{ctc:{from:"ckenja.crafter88:",id:"offhand_crossbow"},ChargedProjectiles:[{id:"minecraft:air"}],Charged:1b}

# クリック検知
# interactionはモブを殴ってしまわないならプレイヤーの中心に含まれててもチャンク境界で問題は起きない。
# ところでそれってプレイヤーでも発生するんですかね
#    summon interaction ~ ~ ~1.2 ~0.15 {}

#execute unless score @s ckenja.crater88.sneak matches 1.. run effect give @s minecraft:slow_falling infinite 0 true
execute if score @s ckenja.crater88.sneak matches 1.. run function ckenja.crafter88:tick/player/sneak
effect give @s minecraft:jump_boost infinite 5 true

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.attackDirections run function ckenja.crafter88:tick/player/launch_vector/_
