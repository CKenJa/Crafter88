#> ckenja.crafter88:marker/init/first
#
#
#
# @within function ckenja.crafter88:marker/right_click

# store resultの四捨五入の仕様、Pos取得時にブロック座標に変換するために負なら-1を足す?
scoreboard players set @s ckenja.crafter88.x 0
scoreboard players set @s ckenja.crafter88.y 0
scoreboard players set @s ckenja.crafter88.z 0
data modify storage ckenja.crafter88: marker.tick.attackDirectionArray.y set value 1
function ckenja.crafter88:marker/init/_
