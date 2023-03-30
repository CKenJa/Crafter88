#> ckenja.crafter88:place/marker/tick/_
#
#
#
# @within function ckenja.crafter88:tick/_

    execute if block ~ ~ ~ #ckenja.crafter88:air run function ckenja.crafter88:place/marker/tick/unless_air

# プレイヤーへ吹っ飛ばし情報を残す
    data modify storage ckenja.crafter88: place.marker.attackDirection set from entity @s data.ckenja.crafter88.place.marker.attackDirection
    scoreboard players operation $place.ownerID ckenja.crafter88 = @s ckenja.crafter88
    execute align xyz as @a[dx=1,dy=1,dz=1] run function ckenja.crafter88:place/marker/tick/player
    kill @s
