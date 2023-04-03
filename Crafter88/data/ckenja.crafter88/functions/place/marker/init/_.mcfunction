#> ckenja.crafter88:place/marker/init/_
#
#
#
# @within function ckenja.crafter88:place/marker/init/*

#>
#@private
#declare score_holder $place.marker.init.counter

# 召喚marker数カウント
    # 赤石愛氏のCloseDetectorに登場する謎のカウントアップを参考にしたら動かなかった！原理がわからないものを使うな！
    # https://github.com/Ai-Akaishi/CloseDetector/blob/a79c3808977aea99046305d151befe5c15928794/data/close_detector/functions/check_inventory/save/now.mcfunction#L8
        # execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.init.counter int -1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.init.counter -1.0000000001
    execute store result score $place.marker.init.counter ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.init.counter
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.init.counter int 1 run scoreboard players add $place.marker.init.counter ckenja.crafter88 1

tag @s add ckenja.crafter88.place.marker
scoreboard players operation @s ckenja.crafter88 = $place.ownerID ckenja.crafter88
function ckenja.crafter88:place/marker/tick/launch
data modify entity @s data.ckenja.crafter88.time set from storage ckenja.crafter88: tick.time
