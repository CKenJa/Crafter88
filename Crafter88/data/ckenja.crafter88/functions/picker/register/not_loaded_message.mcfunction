#> ckenja.crafter88:picker/register/not_loaded_message
#
# 実行者アマスタなんだよな
#
# @within function ckenja.crafter88:picker/item/tick

tellraw @s {"text":"チャンクが読み込まれていないため、建築物を読み込めません。"}
tellraw @s {"text":"このエラーが何回も続くようならサーバー管理者や配布マップ開発者へ連絡してください"}
execute if score $picker.register.loaded.0 ckenja.crafter88 matches 0 run tellraw @s [{"text":"座標"},{"score":{"name":"$picker.item.pos.x","objective":"ckenja.crafter88"}},{"text":", "},{"score":{"name":"$picker.item.pos.y","objective":"ckenja.crafter88"}},{"text":", "},{"score":{"name":"$picker.item.pos.z","objective":"ckenja.crafter88"}},{"text":"が読み込まれていません"}]
scoreboard players add $picker.item.pos.x ckenja.crafter88 47
scoreboard players add $picker.item.pos.y ckenja.crafter88 47
scoreboard players add $picker.item.pos.z ckenja.crafter88 47
execute if score $picker.register.loaded.47 ckenja.crafter88 matches 0 run tellraw @s [{"text":"座標"},{"score":{"name":"$picker.item.pos.x","objective":"ckenja.crafter88"}},{"text":", "},{"score":{"name":"$picker.item.pos.y","objective":"ckenja.crafter88"}},{"text":", "},{"score":{"name":"$picker.item.pos.z","objective":"ckenja.crafter88"}},{"text":"が読み込まれていません"}]
tellraw @s {"text":"原因として以下が挙げられます"}
tellraw @s {"text":"・プレイヤーが建築物から離れすぎている。その場合上記の座標まで移動してください。"}
execute if score $picker.register.loaded.47 ckenja.crafter88 matches 0 run tellraw @s {"text":"・建築物の北西方面にいる。南東方面にいないと動かないことがあります。"}
tellraw @s {"text":"・描画距離、演算距離が小さすぎる"}
execute if score $picker.register.loaded.47 ckenja.crafter88 matches 0 run tellraw @s {"text":"・保存している建築物の位置が高すぎる(底面がそのディメンションの建築限界高度から48ブロック以内である)"}
