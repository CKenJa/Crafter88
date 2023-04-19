#> ckenja.crafter88:marker/init/first
#
#
#
# @within function ckenja.crafter88:marker/right_click

# store resultの四捨五入の仕様、Pos取得時にブロック座標に変換するために負なら-1を足す?
scoreboard players operation @s ckenja.crafter88.x = $init.first.pos.x ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.y = $init.first.pos.y ckenja.crafter88
scoreboard players operation @s ckenja.crafter88.z = $init.first.pos.z ckenja.crafter88
scoreboard players set $marker.pierced ckenja.crafter88 1
tag @s add ckenja.crafter88.marker.first
function ckenja.crafter88:marker/init/_
