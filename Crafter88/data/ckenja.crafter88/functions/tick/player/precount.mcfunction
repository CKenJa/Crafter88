#> ckenja.crafter88:tick/player/precount
#
#
#
# @within function ckenja.crafter88:tick/player/_
#oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.tick.player.precount
execute store result score $place.marker.tick.counter ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.tick.counter
execute if score $place.marker.tick.counter ckenja.crafter88 matches 1.. run scoreboard players remove $place.marker.tick.counter ckenja.crafter88 1
execute store result score $place.marker.tick.counter.init ckenja.crafter88 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.init.counter
execute if score $place.marker.tick.counter.init ckenja.crafter88 matches 1.. run function ckenja.crafter88:tick/player/timer_modifier
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.tick.counter int 1 run scoreboard players operation $place.marker.tick.counter ckenja.crafter88 < #5 ckenja.crafter88
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.crafter88.place.marker.init.counter set value 0
# これの処理順をミスると一瞬で外れる
    execute if score $place.marker.tick.counter ckenja.crafter88 matches ..1 run attribute @s generic.movement_speed modifier remove c145c31f-0f69-4e87-a826-0227fe45323c
