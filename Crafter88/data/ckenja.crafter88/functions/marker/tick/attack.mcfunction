#> ckenja.crafter88:marker/tick/attack
#
#
#
# @within function ckenja.crafter88:marker/init/_

execute if entity @s[type=player] run function ckenja.crafter88:marker/tick/player
execute if entity @s[type=!player] run function ckenja.crafter88:marker/tick/entity
say y
