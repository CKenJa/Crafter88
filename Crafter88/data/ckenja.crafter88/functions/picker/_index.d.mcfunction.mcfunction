#> ckenja.crafter88:picker/tick/_index.d.mcfunction
#
#
#
# @private

#>
#@within
#   function ckenja.crafter88:picker/**
#   function ckenja.crafter88:player_init
#   function ckenja.crafter88:tick/player/_
    #declare tag ckenja.crafter88.picker.tick.have_display tickディスプレイ持ちプレイヤー
    #declare tag ckenja.crafter88.picker.tick.block_display クロスボウ持ってないとキルされるブロックディスプレイ
    #declare tag ckenja.crafter88.picker.start プレイヤー
    #declare tag ckenja.crafter88.picker.start.block_display ディスプレイ
    #declare tag ckenja.crafter88.picker.direction プレイヤー
    #declare tag ckenja.crafter88.picker.direction.block_display ディスプレイ
    #declare tag ckenja.crafter88.picker.pos1 プレイヤー
    #declare tag ckenja.crafter88.picker.pos.block_display ディスプレイ
    #declare tag ckenja.crafter88.picker.pos2 プレイヤー
    #declare tag ckenja.crafter88.picker.item プレイヤー
    #declare tag ckenja.crafter88.picker.block_display pickerで使うdispaly、tick以外をまとめて消す用
    #declare tag ckenja.crafter88.picker.item.origin
    #declare score_holder $picker.register.skill_id
