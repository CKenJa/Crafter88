#> ckenja.crafter88:tick/interaction/_
#
#
#
# @within function ckenja.crafter88:tick/_

execute if data entity @s interaction run tellraw @a {"score":{"name":"@s","objective":"ckenja.crafter88.x"}}
execute if score @s ckenja.crafter88.x matches 4 run kill @s[tag=ckenja.crafter88.interaction.teleported]
execute if score @s ckenja.crafter88.x matches 2 run function ckenja.crafter88:tick/interaction/teleport

scoreboard players add @s ckenja.crafter88.x 1
