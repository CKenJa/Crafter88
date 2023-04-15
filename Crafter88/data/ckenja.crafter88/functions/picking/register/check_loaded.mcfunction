#> ckenja.crafter88:picking/register/check_loaded
#
#
#
# @within function ckenja.crafter88:anywhere_listener

execute store result score $picking.register.loaded.0 ckenja.crafter88 unless block ~ ~ ~ #ckenja.crafter88:empty
execute store result score $picking.register.loaded.47 ckenja.crafter88 unless block ~47 ~47 ~47 #ckenja.crafter88:empty

execute if score $picking.register.loaded.0 ckenja.crafter88 matches 1 if score $picking.register.loaded.47 ckenja.crafter88 matches 1 run function ckenja.crafter88:picking/register/_
execute if score $picking.success ckenja.crafter88 matches 0 run function ckenja.crafter88:picking/register/not_loaded_message
