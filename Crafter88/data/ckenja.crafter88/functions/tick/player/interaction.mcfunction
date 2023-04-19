#> ckenja.crafter88:tick/player/interaction
#
#
#
# @within function ckenja.crafter88:tick/player/summon_interaction
execute anchored eyes rotated ~ 0 positioned ^ ^ ^ unless entity @e[type=marker,tag=ckenja.crafter88.interaction.marker,distance=..0.1] run function ckenja.crafter88:tick/player/summon_interaction
function ckenja.crafter88:skill/particle/_
