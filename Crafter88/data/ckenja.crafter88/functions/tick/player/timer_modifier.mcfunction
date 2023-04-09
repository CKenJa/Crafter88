#> ckenja.crafter88:tick/player/timer_modifier
#
#
#
# @within function ckenja.crafter88:tick/player/precount
scoreboard players operation $marker.tick.counter.init ckenja.crafter88 /= #5 ckenja.crafter88
scoreboard players add $marker.tick.counter.init ckenja.crafter88 1
scoreboard players operation $marker.tick.counter ckenja.crafter88 += $marker.tick.counter.init ckenja.crafter88
scoreboard players reset $marker.tick.counter.init ckenja.crafter88
