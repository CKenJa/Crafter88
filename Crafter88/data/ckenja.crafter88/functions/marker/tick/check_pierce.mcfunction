#> ckenja.crafter88:marker/tick/check_pierce
#
#
#
# @within function ckenja.crafter88:marker/tick/check_count

scoreboard players set $marker.pierced ckenja.crafter88 0
execute store result score $marker.pierced ckenja.crafter88 if entity @s[tag=ckenja.crafter88.marker.first]
execute unless block ~ ~ ~ #ckenja.crafter88:air if data storage ckenja.crafter88: marker.tick.data.ckenja.crafter88{pierce:true} run function ckenja.crafter88:marker/tick/if_air
execute if block ~ ~ ~ #ckenja.crafter88:air align xyz unless entity @a[dx=0,dy=0,dz=0] run function ckenja.crafter88:marker/tick/unless_air
#kill @s[tag=!ckenja.crafter88.marker.used]
tag @s add ckenja.crafter88.marker.used
