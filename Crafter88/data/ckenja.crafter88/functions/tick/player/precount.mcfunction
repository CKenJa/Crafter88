#> ckenja.crafter88:tick/player/precount
#
#
#
# @within function ckenja.crafter88:tick/player/_

# precountでカウントリセットする前にチャンク開放チェック
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.tick{counter:1} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.init{counter:0} run function ckenja.crafter88:tick/player/chunk_free

#oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.tick.player.precount
execute store result score $marker.tick.counter ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.tick.counter
execute if score $marker.tick.counter ckenja.crafter88 matches 1.. run scoreboard players remove $marker.tick.counter ckenja.crafter88 1
execute store result score $marker.tick.counter.init ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.init.counter
execute if score $marker.tick.counter.init ckenja.crafter88 matches 1.. run function ckenja.crafter88:tick/player/timer_modifier
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.tick.counter int 1 run scoreboard players operation $marker.tick.counter ckenja.crafter88 < #5 ckenja.crafter88
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.marker.init.counter set value 0
# これの処理順をミスると一瞬で外れる
    execute if score $marker.tick.counter ckenja.crafter88 matches ..1 run function ckenja.crafter88:tick/player/precount.remove_attribute
