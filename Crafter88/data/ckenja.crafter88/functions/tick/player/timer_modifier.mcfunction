#> ckenja.crafter88:tick/player/timer_modifier
#
#
#
# @within function ckenja.crafter88:tick/player/precount
scoreboard players operation $place.marker.tick.counter.init ckenja.crafter88 /= #5 ckenja.crafter88
scoreboard players add $place.marker.tick.counter.init ckenja.crafter88 1
scoreboard players operation $place.marker.tick.counter ckenja.crafter88 += $place.marker.tick.counter.init ckenja.crafter88
scoreboard players reset $place.marker.tick.counter.init ckenja.crafter88
