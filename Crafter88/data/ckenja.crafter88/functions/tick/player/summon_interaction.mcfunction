#> ckenja.crafter88:tick/player/summon_interaction
#
#
#
# 0within function ckenja.crafter88:tick/player/_

execute if score #tick.1tick_timer ckenja.crafter88 matches 1 run function ckenja.crafter88:tick/player/summon_interaction.1
execute if score #tick.1tick_timer ckenja.crafter88 matches -1 run function ckenja.crafter88:tick/player/summon_interaction.-1


function ckenja.crafter88:skill/particle/_
