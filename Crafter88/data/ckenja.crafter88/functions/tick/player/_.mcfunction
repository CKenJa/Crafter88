#> ckenja.crafter88:tick/player/_
#
#tick as @a
#
# @within function ckenja.crafter88:tick/_

# 旧クリック検知
#data modify storage ckenja.crafter88: SelectedItem set from entity @s SelectedItem
#execute if data storage ckenja.crafter88: SelectedItem.tag.ctc{from:"ckenja.crafter88:",id:"offhand_crossbow"} run item replace entity @s weapon.mainhand with air 1
#item replace entity @s weapon.offhand with crossbow{ctc:{from:"ckenja.crafter88:",id:"offhand_crossbow"},ChargedProjectiles:[{id:"minecraft:air"}],Charged:1b}

# クリック検知
# interactionはモブを殴ってしまわないならプレイヤーの中心に含まれててもチャンク境界で問題は起きない。
# ところでそれってプレイヤーでも発生するんですかね
#    summon interaction ~ ~ ~1.2 ~0.15 {}

#execute unless score @s ckenja.crater88.sneak matches 1.. run effect give @s minecraft:slow_falling infinite 0 true
#execute if score @s ckenja.crater88.sneak matches 1.. run function ckenja.crafter88:tick/player/sneak
#effect give @s minecraft:jump_boost infinite 5 true

function #oh_my_dat:please
# これOhMyDat内部に保存してるような気がするがまぁいっか
    scoreboard players operation $player_id ckenja.crafter88 = @s OhMyDatID

function ckenja.crafter88:tick/player/precount
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.attackArray run function ckenja.crafter88:tick/player/launch/_

# 落下ダメージ消す
    execute if score #tick.player.slow_falling.timer ckenja.crafter88 matches 4 run execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:2,ShowParticles:0b},{Id:16b,Amplifier:0b,Duration:-1,ShowParticles:0b}]}

data modify storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88 set from entity @s SelectedItem.tag.ckenja.crafter88

# interaction出し
    execute if data storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88{id:"skill"} run function ckenja.crafter88:tick/player/interaction

# 作成処理。tag.ckenja.crafter88は常に存在しないので消す必要あり
    execute unless data storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88{id:"picker"} if entity @s[tag=ckenja.crafter88.picker.tick.have_display] run function ckenja.crafter88:picker/tick/kill
    execute if data storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88{id:"picker"} run function ckenja.crafter88:picker/tick/_
    execute if entity @s[tag=!ckenja.crafter88.picker.start] run function ckenja.crafter88:picker/item/tick

    data remove storage ckenja.crafter88: right_click.SelectedItem.tag.ckenja.crafter88
    item replace entity @s enderchest.0 with crossbow{display:{Name:'{"translate":"ckenja.crafter88.item.picker","fallback":"魔法登録","italic":false}'},HideFlags:32,ckenja:{crafter88:{id:"picker",detecting_crossbow:true}},ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
