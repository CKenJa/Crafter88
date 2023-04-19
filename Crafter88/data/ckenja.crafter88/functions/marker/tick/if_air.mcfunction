#> ckenja.crafter88:marker/tick/if_air
#
#
#
# @within function ckenja.crafter88:marker/tick/check_pierce

scoreboard players set $marker.pierced ckenja.crafter88 1
execute align xyz unless entity @a[dx=0,dy=0,dz=0] run function ckenja.crafter88:marker/tick/unless_air
