#> ckenja.crafter88:tick/player/summon_interaction
#
#
#
# @within function ckenja.crafter88:tick/player/_

execute as @e[type=marker,tag=ckenja.crafter88.interaction.marker] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
execute as @e[type=interaction,tag=ckenja.crafter88.interaction] if score @s ckenja.crafter88 = $player_id ckenja.crafter88 run kill @s
execute summon marker run function ckenja.crafter88:tick/player/summon_interaction_marker

execute positioned ~ ~-0.25 ~0.15 summon interaction run function ckenja.crafter88:tick/player/interaction/yoko
execute positioned ~ ~-0.25 ~-0.15 summon interaction run function ckenja.crafter88:tick/player/interaction/yoko
execute positioned ~0.15 ~-0.25 ~ summon interaction run function ckenja.crafter88:tick/player/interaction/yoko
execute positioned ~-0.15 ~-0.25 ~ summon interaction run function ckenja.crafter88:tick/player/interaction/yoko

execute positioned ~ ~0.1 ~ summon interaction run function ckenja.crafter88:tick/player/interaction/tate
execute positioned ~ ~-0.25 ~ summon interaction run function ckenja.crafter88:tick/player/interaction/tate

