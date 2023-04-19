#> ckenja.crafter88:marker/init/-y.pre
#
#
#
# @within function ckenja.crafter88:marker/tick/unless_air

execute if block ~ ~ ~ #ckenja.crafter88:air summon marker run function ckenja.crafter88:marker/init/-y
execute unless block ~ ~ ~ #ckenja.crafter88:air if score $marker.pierced ckenja.crafter88 matches 1 unless entity @e[type=marker,tag=ckenja.crafter88.marker.used,distance=..0.01] summon marker run function ckenja.crafter88:marker/init/-y

