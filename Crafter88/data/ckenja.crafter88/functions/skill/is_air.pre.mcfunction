#> ckenja.crafter88:skill/is_air.pre
#
#
#
# @within function ckenja.crafter88:skill/start

execute store result score $skill.start.is_air ckenja.crafter88 run execute if block ~ ~ ~ #ckenja.crafter88:air
execute if score $skill.start.is_air ckenja.crafter88 matches 0 positioned as @s anchored eyes positioned ^ ^ ^4 run function ckenja.crafter88:skill/is_air
execute if score $skill.start.is_air ckenja.crafter88 matches 1 run function ckenja.crafter88:skill/is_air
