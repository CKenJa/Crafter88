#> ckenja.crafter88:picking/tick/_index.d.mcfunction
#
#
#
# @private

#>
#@within
#   function ckenja.crafter88:picking/**
#   function ckenja.crafter88:player_init
#   function ckenja.crafter88:tick/player/_
    #declare tag ckenja.crafter88.picking.tick.have_display tickディスプレイ持ちプレイヤー
    #declare tag ckenja.crafter88.picking.tick.block_display クロスボウ持ってないとキルされるブロックディスプレイ
    #declare tag ckenja.crafter88.picking.start プレイヤー
    #declare tag ckenja.crafter88.picking.start.block_display ディスプレイ
    #declare tag ckenja.crafter88.picking.direction プレイヤー
    #declare tag ckenja.crafter88.picking.direction.block_display ディスプレイ
    #declare tag ckenja.crafter88.picking.pos1 プレイヤー
    #declare tag ckenja.crafter88.picking.pos.block_display ディスプレイ
    #declare tag ckenja.crafter88.picking.pos2 プレイヤー
    #declare tag ckenja.crafter88.picking.item プレイヤー
    #declare tag ckenja.crafter88.picking.block_display pickingで使うdispaly、tick以外をまとめて消す用
    #declare tag ckenja.crafter88.picking.item.origin
    #declare score_holder $picking.register.skill_id
