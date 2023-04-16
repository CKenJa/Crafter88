#> ckenja.crafter88:skill/particle/is_air.pre
#
#
#
# @within function ckenja.crafter88:skill/particle/_

execute store result score $skill.particle.is_air ckenja.crafter88 run execute if block ~ ~ ~ #ckenja.crafter88:air
execute if score $skill.particle.is_air ckenja.crafter88 matches 0 positioned as @s anchored eyes positioned ^ ^ ^4 align xyz positioned ~0.5 ~0.5 ~0.5 run function ckenja.crafter88:skill/particle/is_air
execute if score $skill.particle.is_air ckenja.crafter88 matches 1 run function ckenja.crafter88:skill/particle/is_air
