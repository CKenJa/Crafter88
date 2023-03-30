#> ckenja.crafter88:tick/_
#
#tick as server
#
# @within minecraft:tick

# 召喚したエンティティがセレクタに引っかからないように1tickごとに使うタグを切り替える
    execute if score #place.marker.boolean ckenja.crafter88 matches 1.. as @e[type=marker,tag=ckenja.crafter88.place.marker.first] positioned as @s run function ckenja.crafter88:place/marker/tick/_
    execute unless score #place.marker.boolean ckenja.crafter88 matches 1.. as @e[type=marker,tag=ckenja.crafter88.place.marker.second] positioned as @s run function ckenja.crafter88:place/marker/tick/_
    scoreboard players operation #place.marker.boolean ckenja.crafter88 *= #-1 ckenja.crafter88

#置いた後に吹っ飛ぶ
execute as @a run function ckenja.crafter88:tick/player/_
