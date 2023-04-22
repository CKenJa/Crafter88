#> ckenja.crafter88:marker/init/first
#
# 技を出したときに一番最初に出すマーカーの初期化
#
# @within function ckenja.crafter88:skill/main
# @input
#   score_holder $marker.first.pos.x
#   score_holder $marker.first.pos.y
#   score_holder $marker.first.pos.z

#>
#@within
#   function ckenja.crafter88:marker/init/first
#   function ckenja.crafter88:skill/main
    #declare score_holder $marker.first.pos.x
    #declare score_holder $marker.first.pos.y
    #declare score_holder $marker.first.pos.z

# store resultの四捨五入の仕様、Pos取得時にブロック座標に変換するために負なら-1を足す?
scoreboard players operation @s ckenja.crafter88.x = $marker.first.pos.x ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.y = $marker.first.pos.y ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.z = $marker.first.pos.z ckenja.crafter88
scoreboard players set $marker.pierced ckenja.crafter88 1
tag @s add ckenja.crafter88.marker.first
function ckenja.crafter88:marker/init/_
