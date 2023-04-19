#> ckenja.crafter88:picker/tick/main
#
#
#
# @within function ckenja.crafter88:looking_at_function.player.listener

# 選択ブロック表示ディスプレイ
    execute if entity @s[tag=ckenja.crafter88.picker.tick.have_display] run function ckenja.crafter88:picker/tick/teleport
    execute if entity @s[tag=!ckenja.crafter88.picker.tick.have_display] run function ckenja.crafter88:picker/tick/summon
